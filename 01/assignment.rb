require "java"

%w(Frame Panel Label TextField PasswordField Button).each do |klass|
  java_import("javax.swing.J#{klass}")
end

class JPanel
  def add(el, options = {})
    x       = options.fetch(:x, 0)
    y       = options.fetch(:y, 0)
    width   = options.fetch(:width, 120)
    height  = options.fetch(:height, 30)
    enabled = options.fetch(:enabled, true)

    el.set_bounds(x, y, width, height)
    el.disable if !enabled

    super(el)
  end
end

class LoginPanel < JPanel
  def initialize
    super
    set_layout(nil)

    lbl_title    = JLabel.new("A simple application:")
    lbl_login    = JLabel.new("LoginId")
    txt_login    = JTextField.new
    lbl_password = JLabel.new("Password") 
    txt_password = JPasswordField.new
    lbl_message  = JLabel.new("Message")
    txt_message  = JTextField.new
    btn_submit   = JButton.new("Submit")
    btn_refresh  = JButton.new("Refresh")

    add lbl_title,    x: 20,  y: 20, width: 150
    add lbl_login,    x: 20,  y: 50
    add txt_login,    x: 170, y: 50 
    add lbl_password, x: 20,  y: 80 
    add txt_password, x: 170, y: 80
    add lbl_message,  x: 20,  y: 110
    add txt_message,  x: 170, y: 110, width: 260, enabled: false
    add btn_submit,   x: 60,  y: 150
    add btn_refresh,  x: 170, y: 150

    btn_refresh.add_action_listener do |e|
      txt_login.text    = ""
      txt_password.text = ""
      txt_message.text  = ""
    end

    btn_submit.add_action_listener do |e|
      txt_message.text = "Today's noobs are tomorrow's experts"
    end
  end
end

class App < JFrame
  def initialize(title)
    super(title)
    
    add(LoginPanel.new)

    set_size(440, 220)
    set_default_close_operation(EXIT_ON_CLOSE)
    set_visible(true)
  end
end

App.new('Assignment 1')
