var Books = React.createClass({
  getInitialState: function() {
    return { books: this.props.data };
  },

  getDefaultProps: function() {
    return { records: [] };
  },

  render: function() {
    return (
      <div>
        <h1>Books</h1>
        <table className="table table-bordered">
          <thead>
            <tr>
              <th>Title</th>
              <th>Description</th>
            </tr>
          </thead>
          <tbody>
            {this.state.books.map(function(book) {
              return <Book key={book.id} book={book}/>
            }.bind(this))}
           </tbody>
        </table>
      </div>
    )
  }
});
