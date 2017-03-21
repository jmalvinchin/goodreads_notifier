var Books = React.createClass({
  getInitialState: function() {
    return { books: this.props.data };
  },

  getDefaultProps: function() {
    return { records: [] };
  },

  render: function() {
    return (
      <div className="container is-fluid">
        <nav className="nav">
          <div className="nav-left">
            <a className="nav-item">
              Goodreads Notifier
            </a>
          </div>
        </nav>
        <table className="table table-bordered">
          <thead>
            <tr>
              <th>Title</th>
              <th>Publication Date</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
            {this.state.books.map(function(book) {
              return <Book key={book.id} book={book}/>
            })}
           </tbody>
        </table>
      </div>
    )
  }
});
