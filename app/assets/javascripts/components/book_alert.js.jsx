var BookAlert = React.createClass({
  handleClick: function() {
    console.log('Clicked on ' + this.props.book.title + ' with ID ' + this.props.book.id)
    $.post('api/books/alert', {book: this.props.book}, function(data) {})
  },

  render: function() {
    if (this.props.isPublished) {
      return <div>Released</div>
    }
    return <button onClick={this.handleClick}>Alert</button>
  }
});
