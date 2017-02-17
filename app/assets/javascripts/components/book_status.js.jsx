var BookStatus = React.createClass({
  render: function() {
    const isPublished = this.props.isPublished
    if (isPublished) {
      return <div>Published</div>
    }
    return <div>Pending</div>
  }
})
