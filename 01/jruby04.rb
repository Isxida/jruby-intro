require 'java'

JFrame = javax.swing.JFrame
JLabel = javax.swing.JLabel

frame  = JFrame.new
jlabel = JLabel.new('Hello World')

frame.add(jlabel)
frame.set_default_close_operation(JFrame::EXIT_ON_CLOSE)
frame.pack
frame.set_size(200, 200)
frame.set_visible(true)
