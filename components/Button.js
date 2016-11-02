import React from 'react'

export class Button extends React.Component {
  render() {
    return (
      <button style={{
        backgroundColor: 'white',
        border: '1px solid black',
        padding: 10,
        borderRadius: 5
      }}>
        { this.props.children }
      </button>
    )
  }
}
