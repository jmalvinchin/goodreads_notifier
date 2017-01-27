var Book = React.createClass({
  render: function() {
    return (
      <tr>
        <td>{this.props.book.title}</td>
        <td>{this.props.book.publication_date}</td>
      </tr>
    )
  }
});
