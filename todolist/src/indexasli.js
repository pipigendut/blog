// import React from 'react';
// import ReactDOM from 'react-dom';
// import './index.css';
// import App from './App';
//
// ReactDOM.render(<App />, document.getElementById('root'));
//
// //TodoItems
// class TodoItems extends React.Component {
//   constructor(props) {
//     super(props);
//
//     // createtaks untuk dekalaris variable listItems
//     // createtakss.bind untuk mengkaitkan fungsi createtakss
//     // jadi fungsi createtakss dibuat inisialisasi bernama createTasks untuk di mapping
//     // di binding agar bisa dipakai menjadi fungsi
//     this.createTasks = this.createTaskss.bind(this);
//   }
//
//   //buat fungsi deletee yg didalamnya ada props.deletes yang berasal dari variable deletes di view
//   deletee(key) {
//     this.props.deletes(key);
//   }
//
//
// changeEditMode(item) => {
//   item.editMode = !item.editMode
// };
//
//
// // karena fungsi createTaskss akan ditampilkan di view maka dibuatlah return li-nya
// createTaskss(item) {
//   if ((item.editMode) == false ) {
//   return <li key={item.key}> <button onClick={() => this.deletee(item.key)}> X </button>
//               {item.text} <button onClick={() => this.changeEditMode(item)}> Edit </button> </li>
//   }
//   else {
//   return <li key={item.key}> <input ref={(a) => this._inputElement = a} type="text" placeholder="masukan namamu" />
//                 {item.text} <button> Edit </button> </li>
//   }
// }
//
// //entriess berasal dari variable yang dideklarasikan di view.
// //lalu di ambil data entriess menggunakan this.props.entriess
// //dan dijadikan sebagai variable todoEntries.
// render() {
//   var todoEntries = this.props.entriess;
//   var listItems = todoEntries.map(this.createTasks);
//
//   return (
//     <ul className="theList">
//         {listItems}
//     </ul>
//   );
// }
// };
//
//
// //Todolist
// class NameForm extends React.Component {
//   constructor(props) {
//     super(props);
//     this.state = {
//       itemsq: []
//     };
//
//     this.addItemm = this.addItem.bind(this);
//     this.deleteItem = this.deleteItem.bind(this);
//     this.deleteAllItem = this.deleteAllItem.bind(this);
//   }
//
//   deleteItem(key) {
//     var filteredItems = this.state.itemsq.filter(function (itemdel) {
//     return (itemdel.key !== key);
//     });
//
// //mengubah items dengan setState
//   this.setState({
//     itemsq: filteredItems
//   });
// }
//
//   deleteAllItem(key) {
//     var filteredItems = this.state.itemsq.filter(function (itemdel) {
//       return (itemdel.key !== key);
//     });
//
// //mengubah items dengan setState
//   this.setState({
//       itemsq: filteredItems
//     });
//   }
//
// // inputan this._inputElement dideklarasikan menjadi object text dan dijadikan sebagai variable newItem
//   addItem(e) {
//   if (this._inputElement.value !== "") {
//     var newItem = {
//       text: this._inputElement.value,
//       key: Date.now(),
//       editMode: false
//     };
//
// // mengubah items dengan setState
// // variable items untuk menampilkan data di view berdasarkan inputan this._inputElement
//   this.setState((prevState) => {
//     return {
//       itemsq: prevState.itemsq.concat(newItem)
//     };
//   });
//
//   this._inputElement.value = "";
//   }
//
//   console.log(this.state.itemsq);
//
//   e.preventDefault();
// }
//
//   render() {
//     return (
//       <div className="main">
//       <div className="header" >
//       <form onSubmit={this.addItemm}>
//       <label>
//         List:
//         <input ref={(a) => this._inputElement = a} type="text" placeholder="masukan namamu" />
//       </label>
//         <input type="submit" value="Add list" />
//       </form>
//        <TodoItems entriess={this.state.itemsq} deletes={this.deleteItem} />
//        <button onClick={this.deleteAllItem}> Delete all </button>
//       </div>
//       </div>
//     );
//   }
// }
//
// ReactDOM.render(
//   <NameForm />,
//   document.getElementById('root1')
// );
