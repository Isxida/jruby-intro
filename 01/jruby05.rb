require 'java'

class MyButtons < Java::java.awt.Frame
  def initialize(title)
    super(title)

    button = java.awt.Button.new('OK')
    panel  = java.awt.Panel.new
    panel.add(button)

    button.add_action_listener(ClickAction.new)

    # Frame methods:
    add(panel, java.awt.BorderLayout::SOUTH)
    set_size(200,200)
    set_visible(true)
  end
end

class ClickAction
  include Java::java.awt.event.ActionListener

  def actionPerformed(e)
    puts 'Button is Pressed'
  end
end

mb = MyButtons.new('Sample Swing app')
