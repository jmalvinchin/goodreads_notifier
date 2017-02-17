var Book = React.createClass({
  render: function() {
    const publication_status = new Date(this.props.book.publication_date) <= Date.now()
    return (
      <tr>
        <td>{this.props.book.title}</td>
        <td>{this.props.book.publication_date}</td>
        <td><BookStatus isPublished={publication_status}/></td>
        <td><BookAlert key={this.props.book.id} book={this.props.book} isPublished={publication_status} /></td>
      </tr>
    )
  }
});
