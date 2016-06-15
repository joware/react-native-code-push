# Depending on how your project is organized, your node_modules directory may be
# somewhere else; tell CocoaPods where you've installed react-native from npm

target "ReactEmbed" do
    pod 'React', :path => './node_modules/react-native', :subspecs => [
    'Core',
    'RCTImage',
    'RCTNetwork',
    'RCTText',
    'RCTWebSocket',
    # Add any other subspecs you want to use in your project
    ]
    pod 'CodePush', :path => './node_modules/react-native-code-push'
end