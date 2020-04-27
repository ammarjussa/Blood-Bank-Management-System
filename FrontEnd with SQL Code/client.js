const socket = io()

const delay = secs => new Promise(resolve => setTimeout(resolve, 1000*secs))

socket.on('tableNames', data => {
	setState({tables:data })
})

socket.on('describeData', data => {
	setDescribe(data)
})

socket.on('data', datas => {
	createForm({data:datas[1], fields:datas[0]})
})

socket.on('QueryRun', data => {
	state.isQueryRun = true
	runQueries({Qfields:data})
})
socket.on('querySelect', data => {
	console.log(data)
	state.isQuery = true
	runQueries({Query:data})
})
socket.on('Error',data => {
	console.log("got error")
	alert(`You have Got an Error! \n ${data}`)
	if (state.isUpdate) {
		updateForm()
	} else if(state.isInsert) {
		insertForm()
	} else {
		deleteForm()
	}
})
socket.on('UpdateSearch', data => {
	console.log(`=> ${data}`)
	data.forEach(f => {
		Object.entries(f).forEach(([key, value]) => {
			state.delVal[key] = value
			console.log(`${state.delVal[key]} ${value}`)
		})
	})
	console.log('here')
	updateForm()
})
const setDescribe = data => {
	let dict = []
	let dict1 = []
	let key = []
	data.forEach(f => {
		if (f['Key'] === 'PRI') {
			key.push(f['Field'])
			let type = 'str'
			if (f['Type'] === 'int(11)' ) {type = 'number'}
			if (f['Type'] === 'datetime' ) {type = 'date'}
			dict.push({Name:f['Field'], Type:type})
		}
		let type = 'text'
		if (f['Type'] === 'datetime' ) {type = 'date'}
		if (f['Type'] === 'int(11)' ) {type = 'number'}
		dict1.push({Name:f['Field'], Type: type})
	})
	console.log(dict)
	state.insertDescribe = dict1
	if(state.isInsert){
		insertForm()
	} else if(state.isUpdate){
		updateForm({PrimaryKey:key})
	} else{
		deleteForm({describeTable: dict})
	}
}

const state = {isQueryRun : false,Qfields:{}, QueryData: [null,null],QueryNo: 0, Query : {},isQuery:false, tables:[],data:[],fields:[],describeTable:[],curTable:'',delVal:{},insertDescribe: [],PrimaryKey:[], isInsert: false,isUpdate: false}

socket.emit('giveMeTable','')


const showTable = event => {
	event.preventDefault()
	const element = event.target
	const index = element.id
	state.curTable = state.tables[index]
	socket.emit('tableData', state.tables[index])
}

const reset = event => {
	event.preventDefault()
	state.Query= {}
	state.isQuery = false
	state.isQueryRun = false 
	setState()
}


const InsertEntry = event => {
	event.preventDefault()
	state.isInsert = true
	state.isUpdate = false
	socket.emit('describe', state.curTable)	
}

const DeleteEntry = event => {
	event.preventDefault()
	state.isInsert = false
	state.isUpdate = false
	socket.emit('describe', state.curTable)
}

const UpdateEntry = data => {
	event.preventDefault()
	state.isInsert = false
	state.isUpdate = true
	socket.emit('describe', state.curTable)

}

const showQuery = event => {
	event.preventDefault()
	state.isInsert = false
	state.isUpdate = false
	runQueries()	
}

const setState = updates => {
    Object.assign(state, updates)
    ReactDOM.render( React.createElement('div', null,
    	React.createElement('div', {className: 'tables',style :{align: 'center'}},
	    	state.tables.map( (table,i) => 
	    			React.createElement('button', {className:'button', onClick: showTable,id:i},table), React.createElement('div', {},null)))
		,React.createElement('button',{className:'buttons', onClick: showQuery},'Run Queries')
	),
        document.getElementById('root'))
}

const createForm = updates => {
    Object.assign(state, updates)
    ReactDOM.render( React.createElement('div', null,
    	React.createElement('table', {className: 'table',style :{align: 'center'}},
    		React.createElement('tr',null,
	    		state.fields.map( (table,i) => 
	    			React.createElement('td', {className:'box', value: table['name']},table['name'])))),
    		state.data.map((val,i) => 
    			React.createElement('tr',null,
    					state.fields.map((field,j) => 
    						React.createElement('td', {className:'box', value:val[field['name']]},val[field['name']] )),
    				)),
    	React.createElement('br',null,null),
    	React.createElement('br',null,null),
    	React.createElement('button',{onClick:InsertEntry},'Insert an Entry'),
    	React.createElement('button',{onClick:UpdateEntry},'Update an Entry'),
    	React.createElement('button',{onClick:DeleteEntry},'Delete an Entry'),
    	React.createElement('button',{onClick:reset, style:{float:'right'}},"Go Back")
	),
        document.getElementById('root'))
}

const deleteSubmit = event => {
	event.preventDefault()
	//alert(`You are going to delete an Entry from table ${state.curTable}`)
	console.log(state.delVal)
	socket.emit('DeleteEntry', [state.curTable, state.delVal])
	socket.emit('tableData', state.curTable)
}
const deleteForm = update => {
	Object.assign(state,update)
    ReactDOM.render( React.createElement('div', null,
    	React.createElement('form', {onSubmit:deleteSubmit}, 
    		state.describeTable.map( each => 
    			React.createElement('div',{},each['Name'],
    			React.createElement('input', {onChange: ev => state.delVal[each['Name']] = ev.target.value}, state.delVal[each])
    	)),
    	React.createElement('button',{type:'Submit'},'Delete')),
		React.createElement('button',{onClick:reset, style:{float:'right'}},"Go Back")

	),
    document.getElementById('root'))
}
const insertSubmit = event => {
	event.preventDefault()
	alert(`You are going to insert an Entry in table ${state.curTable}`)
	console.log(state.delVal)
	socket.emit('InsertEntry', [state.curTable, state.delVal])
	Object.assign(state, {describeTable:[],delVal:{},insertDescribe: [], isInsert: false})

	socket.emit('tableData', state.curTable)}


const insertForm = update => {
	Object.assign(state,update)
    ReactDOM.render( React.createElement('div', null,
    	React.createElement('form', {onSubmit:insertSubmit}, 
    		state.insertDescribe.map( each => 
    			React.createElement('div',{style:{width:5}},each['Name'],
    			React.createElement('input', {type: each['Type'],onChange: ev => state.delVal[each['Name']] = ev.target.value}, state.delVal[each['Name']])
    	)),
    	React.createElement('button',{type:'Submit'},'Insert')),
		React.createElement('button',{onClick:reset, style:{float:'right'}},"Go Back")

	),
    document.getElementById('root'))
}


const updateSubmit = event => {
	event.preventDefault()
	alert(`You are going to update an Entry in table ${state.curTable}`)
	console.log(state.delVal)
	let keys = {}
	state.PrimaryKey.forEach(key => {
		keys[key] = state.delVal[key]
	})
	socket.emit('UpdateEntry', [state.curTable, state.delVal,keys])
	Object.assign(state, {describeTable:[],delVal:{},insertDescribe: [], isInsert: false})

	socket.emit('tableData', state.curTable)
}

const changeVal = (type,val) => {
		console.log(state.PrimaryKey)
	if (state.PrimaryKey.includes(type)) {
		let dic = {}
		dic[type] = val 
		socket.emit('updateSearch', [state.curTable,dic])
	} else {
		state.delVal[type] = val
	}
}
const updateForm = update => {
	Object.assign(state,update)
	console.log(state.delVal)
    ReactDOM.render( React.createElement('div', null,
    	React.createElement('form', {onSubmit:updateSubmit}, 
    		state.insertDescribe.map( each => 
    			React.createElement('div',{style:{width:5}},each['Name'],
    			React.createElement('input', {type: each['Type'],onChange: ev => changeVal(each['Name'],ev.target.value), placeholder:state.delVal[each['Name']]}, null)
    	)),
    	React.createElement('button',{type:'Submit'},'Update')),
		React.createElement('button',{onClick:reset, style:{float:'right'}},"Go Back")

	),
    document.getElementById('root'))
}

queryNum = [1,2,3,4,5,6,7,8,9,10]

const QuerySelect = event => {
	event.preventDefault()
	let x = event.target.value
	let y = x.split(' ')[2]
	console.log(y)
	state.QueryNo = y
	state.Query= {}
	state.isQuery = false
	state.isQueryRun = false 
	socket.emit('QuerySelect',y)
}
const QuerySubmit = event => {
	event.preventDefault()
	let x = state.Query['data'].length
	console.log(x)
	let data = {QueryNo: state.QueryNo, value: []}
	for (var i = 0; i < x; i++) {
		data['value'].push(state.QueryData[i])
	}
	console.log(data)
	socket.emit('RunQuery',data)
}
const runQueries = update => {
	Object.assign(state,update)
	console.log(state.delVal)
    ReactDOM.render( React.createElement('div', {name:'Select a Query'},
    	React.createElement('Select', {onChange:QuerySelect}, 
    		React.createElement('option',null,'---Select an Query ---'),
    		queryNum.map(a => 
    			React.createElement('option',{id: a},`Query # ${a}`)
    		)
    	),
		state.isQuery === false || 
		React.createElement('div', null,
			React.createElement('div',null,state.Query['value']),
			React.createElement('form',{onSubmit:QuerySubmit},
				state.Query['data'].map((a,i) => 
					React.createElement('div',null,a['Name'],
						React.createElement('input', {onChange: ev => state.QueryData[i] = ev.target.value,type:a['Type']},null)
					)
				),
				React.createElement('button',{type:'Submit'},'Run Query')
			),
			state.isQueryRun === false ||
			(React.createElement('table', {className: 'table',style :{align: 'center'}},
	    		React.createElement('tr',null,
		    		state.Qfields['fields'].map( (table,i) => 
		    			React.createElement('td', {className:'box', value: table},table)
		    		)
		    	),
	    		state.Qfields['value'].map((val,i) => 
	    			React.createElement('tr',null,
	    					state.Qfields['fields'].map((field,j) => 
	    						React.createElement('td', {className:'box', value:val[j]},val[j] )
	    					),
	    			)
	    		),
		)),
    	React.createElement('button',{onClick:reset, style:{float:'right'}},"Go Back")
    )),
    document.getElementById('root'))
}




// setState({msg: 'Hello World',tables:[]})
