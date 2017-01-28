var Book = React.createClass({
  render: function() {
    return (
      <tr>
        <td>{this.props.book.title}</td>
        <td>{this.props.book.publication_date}</td>
        <td><BookAlert key={this.props.book.id} book={this.props.book} /></td>
      </tr>
    )
  }
});
