const fs = require('fs')
const http = require('http')
const socketio = require('socket.io')
const mysql = require('mysql');
	
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'cs202',
    database: 'myDataBase'
});

connection.connect(function(err) {
  if (err) {
    return console.error('error: ' + err.message);
  }
 
  console.log('Connected to the MySQL server.');
});


QUERY = []
var list = []
const getTable = () => {
	connection.query('show tables;', (err,rows) => {
	  if(err) throw err;
	  console.log('Data received from Db:\n');
	  rows.forEach(row => {
	    list.push(row['Tables_in_myDataBase']);
	  })
	  console.log(list)
	});
}




let a = [
            {data:[{Name: 'Disease Name', Type:'text'}],value:"Find out whether disease X is more recurrent in blood recipients or donors"},
            {data:[{Name: 'Start Time', Type: 'date'},{Name: 'End Time', Type: 'date'}],value:'Which Donors donated blood, of a blood group that was requested the most during that time period X'},
            {data:[{Name: 'Start Time', Type: 'date'},{Name: 'End Time', Type: 'date'}],value:'For which blood groups were more samples collected from drive than blood bank during time period X'},
            {data:[{Name:'Blood Group',Type :'text'},{Name:'Gender M/F',Type:'text'}],value:'Show all Donors of Blood Group X and gender Y'},
            {data:[{Name: 'Blood Bank ID', Type: 'number'}],value:'Whch Blood Groups have least and most donors registered for Blood Bank X'},
            {data:[],value:'List all acceptors who received at least two blood samples from the same donor'},
            {data:[],value:'From amongst the acceptors who have at least one disease and  received at most one sample of blood, list all acceptors who have made the most number of requests'},
            {data:[],value:'Individuals  (acceptors  and  donors)  with  which  blood  group  have  the  most  number  of diseases. (you have to mention the blood group)'},
            {data:[],value:'Which  blood  groups  (if  any),  have  shown  at  least  a  10%  decrease  in  the  number  of donations  received  from  blood  drives  (compare  the  recent  blood  drive  with  the  one before it)'},
            {data:[],value:'What is the difference (if any) between the average age of regular donors and those that donate through blood drives? (also mention what the average ages are)'}
        ]


const readFile = file => new Promise((resolve, reject) =>
    fs.readFile(file, (err, data) => err ? reject(err) : resolve(data)))

const delay = msecs => new Promise(resolve => setTimeout(resolve, msecs))

const server = http.createServer(async (request, response) =>
    response.end(await readFile(request.url.substr(1))))

const io = socketio(server)

io.sockets.on('connection', socket => {
    console.log('a client connected');
    socket.on('giveMeTable', () => {
    	getTable()
    	delay(1000)
    	console.log(list)
    	socket.emit('tableNames', list);
    	list= []
    	console.log('sending table names...')
    })

    socket.on('tableData', data => {
    	console.log(data)
		connection.query(`SELECT * from \`${data}\`;`, (err,rows,fields) => {
		  if(err) {
		  	socket.emit('Error', data);
		  } else {
			  console.log('Data received from Db:\n');
			  socket.emit('data', [fields,rows])
			  console.log(rows)
		  }
		});
    })

    socket.on('describe', data => {
    	console.log(data)
		connection.query(`DESCRIBE \`${data}\`;`, (err,rows,fields) => {
		  if(err) {
		  	socket.emit('Error', data);
			}
		  else{
			  socket.emit('describeData', rows)
		  }
		});    	
    })

    socket.on('DeleteEntry' , data => {
    	console.log(data)
    	let query = ``
    	let n = 0;
    	Object.keys(data[1]).forEach(key => {
    		if (n !== 0) query = query + ' AND '
    		query = query + `${key} = \'${data[1][key]}\'`
    		n = 1
    	})
    	console.log(`Deleting data ${query}`)
		connection.query(`DELETE FROM \`${data[0]}\` WHERE ${query}`, (err,rows,fields) => {
		  if(err) {
		  	socket.emit('Error',query);
		  }

		});      	
    })

    socket.on('InsertEntry' , data => {
    	console.log(data)
    	let query = ``
    	let n = 0;
    	Object.keys(data[1]).forEach(key => {
    		if (n !== 0) query = query + ' , '
    		query = query + `\'${data[1][key]}\'`
    		n = 1
    	})
    	console.log(`Deleting data ${query}`)
		connection.query(`INSERT INTO \`${data[0]}\` VALUE( ${query})`, (err,rows,fields) => {
		  if(err) //throw err;
		  {
		  	socket.emit('Error',query)
		  }
		});      	
    })
    socket.on('UpdateEntry' , data => {
    	console.log(data)
    	let query = ``
    	let n = 0;
    	Object.keys(data[1]).forEach(key => {
    		if (n !== 0) query = query + ','
    		query = query + `${key} = \'${data[1][key]}\'`
    		n = 1
    	})
    	let query1 = ``
    	let n1 = 0;
    	Object.keys(data[2]).forEach(key => {
    		if (n1 !== 0) query = query + ' AND '
    		query1 = query1 + `${key} = \'${data[2][key]}\'`
    		n1 = 1
    	})
    	console.log(`Updating data ${query} WHERE ${query1}`)
		connection.query(`UPDATE \`${data[0]}\` SET  ${query} WHERE ${query1}`, (err,rows,fields) => {
		  if(err) {
		  	socket.emit('Error',query)
		  };
		});      	
    })
    socket.on('updateSearch' , data => {
    	console.log(data)
    	let query = ``
    	Object.keys(data[1]).forEach(key => {
    		query = `${key} = \'${data[1][key]}\'`
    	})
		connection.query(`SELECT * FROM \`${data[0]}\` WHERE  ${query}`, (err,rows,fields) => {
		  if(err) {
		  	throw err;
		  } else {
			  console.log('Data received from Db:\n');
			  console.log(rows)
			  console.log(fields)
			  socket.emit('UpdateSearch', rows)	
		  }
		  
		});      	
    })

    socket.on('QuerySelect', data => {
        if (data < 11 && data > 0) {
            socket.emit('querySelect', a[data-1])
        } 
    })

    socket.on('RunQuery', data => {
        console.log(data)
        if (data < 1 && data > 0) {
            console.log('Eror')
        }
        else if(data['QueryNo'] == 1){
            let disease = data['value'][0]
            let q1 = `select Count(*) as c from \`Diseases\` as D where D.DiseaseName = \'${disease}\'`
            let q2 = `select Count(*) as c from \`Acceptor Diseases\` as A where A.DiseaseName = \'${disease}\'`
            connection.query( q1, (err,row,field) => {
                connection.query( q2, (errr,rows,fields) => {
                    console.log(row)
                    let a = []
                    a.push([row[0]['c'],rows[0]['c']])
                    let x = { fields: ['No. of Donors', 'No. of Acceptors'], value: a}   
                    console.log(a)
                    socket.emit('QueryRun', x)
                });
            });
       }else if(data['QueryNo'] == 2){
            let min = data['value'][0]
            let max = data['value'][1]
            let q1 = `Select DISTINCT(D.DonorID) from \`Donor Requests\` as D INNER JOIN \`Donor Blood Groups\` as DBG ON DBG.DonorID = D.DonorID, (Select ABG.BloodGroupID, count(*) as c from \`Acceptor Requests\` as AR INNER JOIN  \`Acceptor Blood Groups\` as ABG ON AR.AccID  = ABG.AccID where AR.ReqDate > ${min} & AR.ReqDate < ${max}  Group By ABG.BloodGroupID ORDER BY c DESC LIMIT 1) as T where D.ReqDate > ${min} & D.ReqDate < ${max} AND DBG.BloodGroupID = T.BloodGroupID`
            connection.query( q1, (err,row,field) => {
                console.log(row)
                let a = []
                for (var i = 0; i < row.length; i++) {
                    a.push([row[i]['DonorID']])
                }
                let x = { fields: ['Donor ID'], value: a}   
                console.log(a)
                socket.emit('QueryRun', x)
            });
       }else if(data['QueryNo'] == 3){
            let min = data['value'][0]
            let max = data['value'][1]
            let q1 = `Select BGG.BloodGroup from  \`BloodGroup\` as BGG, (Select DBG.BloodGroupID, count(*) as c from \`Donor Requests\` as DR INNER JOIN \`Donor Blood Groups\` as DBG ON DBG.DonorID = DR.DonorID AND DR.ReqDate < \'${max}\' AND DR.ReqDate > \'${min}\' GROUP BY DBG.BloodGroupID ORDER BY c) as B, (Select DBG.BloodGroupID, count(*) as c from \`Blood Drive\` as BD INNER JOIN \`Blood Drive Collection\` as BDC ON BDC.DriveID = BD.ID INNER JOIN \`Donor Blood Groups\` as DBG ON BDC.DonorID = DBG.DonorID AND BD.DriveDate < \'${max}\' AND BD.DriveDate > \'${min}\' GROUP BY DBG.BloodGroupID ORDER BY c) as D where B.c < D.c and B.BloodGroupID = D.BloodGroupID AND BGG.ID = B.BloodGroupID`
            connection.query( q1, (err,row,field) => {
                console.log(row)
                let a = []
                for (var i = 0; i < row.length; i++) {
                    a.push([row[i]['BloodGroup']])
                }
                let x = { fields: ['Blood Group'], value: a}   
                console.log(a)
                socket.emit('QueryRun', x)
            });
       }else if(data['QueryNo'] == 4){
            let bgroup = data['value'][0]
            let sex = data['value'][1]
            let q1 = `Select D.DonorName ,D.ID from Donor as D, \`Donor Blood Groups\` as DBG, \`BloodGroup\` as BG where D.Sex = \'${sex}\' AND   D.ID = DBG.DonorID  AND BG.ID = DBG.BloodGroupID  AND BG.BloodGroup = \'${bgroup}\'`
            connection.query( q1, (err,row,field) => {
                console.log(row)
                let a = []
                for (var i = 0; i < row.length; i++) {
                    a.push([row[i]['DonorName'],row[i]['ID']])
                }
                let x = { fields: ['Donor Name','Donor ID'], value: a}   
                console.log(a)
                socket.emit('QueryRun', x)
            });
        }else if(data['QueryNo'] == 5){
            let bank = data['value'][0]
            let q1 = `Select BG.BloodGroup,Count(*) as c from \`Blood Sample\` as BS INNER JOIN \`Donor Blood Groups\` as DBG ON DBG.DonorID = BS.DonorID INNER JOIN \`BloodGroup\` as BG ON BG.ID = DBG.BloodGroupID where BS.BloodBankID = ${bank} GROUP BY DBG.BloodGroupID ORDER BY c LIMIT 1`
            let q2 = `Select BG.BloodGroup,Count(*) as c from \`Blood Sample\` as BS INNER JOIN \`Donor Blood Groups\` as DBG ON DBG.DonorID = BS.DonorID INNER JOIN \`BloodGroup\` as BG ON BG.ID = DBG.BloodGroupID where BS.BloodBankID = ${bank} GROUP BY DBG.BloodGroupID ORDER BY c DESC LIMIT 1`
            connection.query( q1, (err,row,field) => {
                connection.query( q2, (errr,rows,fields) => {
                    console.log(row)
                    let a = []
                    if (rows.length !== 0) {
                        a.push([rows[0]['BloodGroup'],row[0]['BloodGroup']])
                    }
                    let x = { fields: ['Most','Least'], value: a}   
                    console.log(a)
                    socket.emit('QueryRun', x)
                });
            });
        }else if(data['QueryNo'] == 6){
            let q1 = " Select A.AccName, A.ID   from Acceptor as A  where  (Select MAX(count)  from (Select B.AID as ID, count(*) as count from  (Select BI.AccID as AID, BS.DonorID as DID from `Blood Sample` as BS Inner Join `Blood Issued` as BI ON BS.SampleID = BI.SampleID) as B  Group by B.AID , B.DID  ) as X where A.ID = X.ID) > 2"
            connection.query( q1, (err,row,field) => {
                console.log(row)
                let a = []
                for (var i = 0; i < row.length; i++) {
                    a.push([row[i]['AccName'],row[i]['ID']])
                }
                let x = { fields: ['Acceptor Name','Acceptor ID'], value: a}   
                console.log(a)
                socket.emit('QueryRun', x)
            });

        }else if(data['QueryNo'] == 7){
            let q1 = "Select AR.AccID from `Acceptor Requests` as AR,  (Select * from Acceptor as A where Exists ( Select * from `Acceptor Diseases` as AD where AD.AccID = A.ID) and  (Select Count(*) from `Blood Issued` as BI where BI.AccID = A.ID ) <= 1  ) as X where  X.ID = AR.AccID and  (Select MAX(Y.count) from (Select AcR.AccID as ID, Count(*) as count  from `Acceptor Requests` as AcR Group by AcR.AccID) as Y where X.ID = Y.ID) = (Select Count(*) from `Acceptor Requests` as B where B.AccID = AR.AccID)"
            connection.query( q1, (err,row,field) => {
                console.log(row)
                let a = []
                for (var i = 0; i < row.length; i++) {
                    a.push([row[i]['AccID']])
                }
                let x = { fields: ['Acceptor ID'], value: a}   
                console.log(a)
                socket.emit('QueryRun', x)
            });
        }else if(data['QueryNo'] == 8){
            let q1 = "Select A.Bgroup , IFNULL(A.S+B.S,0) as count from  (Select BG.BloodGroup as Bgroup , sum(Z.Count) as S from Donor as D  INNER JOIN (Select AD.CarrierID as ID, Count(*) as Count from `Diseases` as AD Group BY AD.CarrierID ) as Z  ON Z.ID = D.ID INNER JOIN `Donor Blood Groups` as ABG  ON ABG.DonorID = D.ID INNER JOIN BloodGroup as BG  ON ABG.BloodGroupID = BG.ID Group By BG.BloodGroup)  as A  INNER JOIN   (Select BG.BloodGroup as Bgroup, sum(D.Count) as S from Acceptor as A  INNER JOIN (Select AD.AccID as ID, Count(*) as Count from `Acceptor Diseases` as AD Group BY AD.AccID ) as D  ON D.ID = A.ID INNER JOIN `Acceptor Blood Groups` as ABG  ON ABG.AccID = A.ID INNER JOIN BloodGroup as BG  ON ABG.BloodGroupID = BG.ID Group BY BG.BloodGroup) as B  ON B.Bgroup = A.Bgroup  ORDER BY count DESC LIMIT 1"
            connection.query( q1, (err,row,field) => {
                console.log(row)
                let a = []
                for (var i = 0; i < row.length; i++) {
                    a.push([row[i]['Bgroup'],row[i]['count']])
                }
                let x = { fields: ['Blood Groups','Number of Diseases'], value: a}   
                console.log(a)
                socket.emit('QueryRun', x)
            });
        }else if(data['QueryNo'] == 9){
            let q1 = "Select C.BloodGroup from BloodGroup as C, (Select DBG.BloodGroupID,count(*) as c from `Blood Drive Collection` as BDC INNER JOIN `Donor Blood Groups` as DBG ON BDC.DonorID = DBG.DonorID, (Select BD.ID from `Blood Drive` as BD ORDER BY BD.DriveDate DESC LIMIT 1) as X where X.ID = BDC.DriveID Group BY DBG.BloodGroupID) as A,   (Select DBG.BloodGroupID,count(*) as c from `Blood Drive Collection` as BDC INNER JOIN `Donor Blood Groups` as DBG ON DBG.DonorID = BDC.DonorID, (Select BD.ID from `Blood Drive` as BD ORDER BY BD.DriveDate DESC LIMIT 1,1) as Y where Y.ID = BDC.DriveID Group BY DBG.BloodGroupID) as B  where C.ID = A.BloodGroupID  AND   A.BloodGroupID = B.BloodGroupID AND   ((B.c - A.c) /B.c ) *100 >= 10;"
            connection.query( q1, (err,row,field) => {
                console.log(row)
                let a = []
                for (var i = 0; i < row.length; i++) {
                    a.push([row[i]['BloodGroup']])
                }
                let x = { fields: ['Blood Groups'], value: a}   
                console.log(a)
                socket.emit('QueryRun', x)
            });
        } else if (data['QueryNo'] == 10){
            let q1 = "Select AVG(RD.age) as average from (Select DISTINCT(DonorID), YEAR(CURDATE()) - YEAR(DateOfBirth) AS age from `Blood Sample` as BS INNER JOIN Donor as D ON D.ID = BS.DonorID) as RD"
            console.log(q1)
            let q2 = "Select AVG(DD.age) as average from  (Select DISTINCT(DonorID), YEAR(CURDATE()) - YEAR(DateOfBirth) AS age from `Blood Drive Collection` as BS INNER JOIN Donor as D  ON D.ID = BS.DonorID) as DD"
            connection.query( q1, (err,rows,fields) => {
                connection.query( q2, (err,row,field) => {
                    console.log(rows)
                    let diff = rows[0]['average']-row[0]['average']
                    let a = { fields: ['Regular Donors','Other Donors', 'Difference'], value: [[rows[0]['average'],row[0]['average'],diff]]}   
                    console.log(a)
                    socket.emit('QueryRun', a)
                });
            });
        }
    })
    socket.on('disconnect', () => console.log('a client disconnected'))
})

server.listen(8000)