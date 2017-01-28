var BookAlert = React.createClass({
  handleClick: function() {
    console.log('Clicked on ' + this.props.book.title + ' with ID ' + this.props.book.id)
  },

  render: function() {
    return (
      <button onClick={this.handleClick}>Alert</button>
    )
  }
});
