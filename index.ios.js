'use strict';

import React from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View
} from 'react-native';

import codePush from "react-native-code-push";

var styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'red'
  }
});

class SimpleApp extends React.Component {
  render() {
    return (
      <View style={styles.container}>
        <Text>This is a simple application.</Text>
      </View>
    )
  }
  componentDidMount() {
    codePush.notifyApplicationReady();
    codePush.sync();
  }
}

AppRegistry.registerComponent('SimpleApp', () => SimpleApp);