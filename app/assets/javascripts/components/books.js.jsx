var Books = React.createClass({
  getInitialState: function() {
    return { books: this.props.data };
  },

  getDefaultProps: function() {
    return { records: [] };
  },

  render: function() {
    return (
      <div> <h1>Books</h1> </div>
    )
  }
});
