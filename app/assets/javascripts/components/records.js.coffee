@Records = React.createClass
  # Initialize the component's state and properties

  # Rely on state to dectect whether a re-render is required or not
  getInitialState: ->
    records: @props.data

  # Rely on properties to communicate with other components
  getDefaultProps: ->
    records: []

  render: ->
    React.DOM.div
      className: 'container'
      React.DOM.div
        className: 'row'
        React.DOM.div
          className: 'records'
          React.DOM.h2
            className: 'title text-center'
            'All of Your Expense Records'
          React.DOM.table
            className: 'table table-bordered'
            React.DOM.thead null,
              React.DOM.tr null,
                React.DOM.th null, 'Date'
                React.DOM.th null, 'Title'
                React.DOM.th null, 'Amount'
            React.DOM.tbody null,
              for record in @state.records
                React.createElement Expense, record: record, key: record.id
