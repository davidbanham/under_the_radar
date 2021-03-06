random = require './rand.coffee'
React = require 'react'

Item = React.createClass
  render: ->
    return React.DOM.li
      className: React.addons.classSet @props.classes
      onClick: @props.action
    , @props.name

Button = React.createClass
  displayName: 'Button'

  render: ->
    return React.DOM.button
      onClick: @props.action
      type: 'button' if @props.action
    , @props.text

Input = React.createClass
  displayName: 'Input'

  render: ->
    return React.DOM.input
      type: "text"
      value: @props.value
      name: @props.name
      onChange: @props.onChange

List = React.createClass
  render: ->
    return React.DOM.ul null, @props.items?.map (item) ->
      [
        Item name: item.name, classes: item.classes, action: item.action
        Button text: 'X', action: item.remove
      ]

Text = React.createClass
  render: ->
    return React.DOM.p {}, @props.text

module.exports =
  Input: Input
  Button: Button
  Item: Item
  List: List
  Text: Text
