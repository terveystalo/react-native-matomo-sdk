/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 * @lint-ignore-every XPLATJSCOPYRIGHT1
 */

import React, {Component} from 'react';
import {Platform, StyleSheet, Text, View} from 'react-native';

import Matomo from 'react-native-matomo-sdk';

// Use values from respective platform examples
const matomoConfig = Platform.OS === 'ios' ? {
  baseUrl: 'https://demo2.matomo.org/piwik.php',
  siteId: 23,
} : {
  baseUrl: 'http://domain.tld/matomo.php',
  siteId: 1,
}

Matomo.initialize(matomoConfig.baseUrl, matomoConfig.siteId)
  .catch(error => console.warn('Failed to initialize matomo', error))
  .then(
    () => Matomo.trackEvent('Application', 'Startup')
    .catch(error => console.warn('Failed to track event', error))
  );

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' + 'Cmd+D or shake for dev menu',
  android:
    'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});

type Props = {};
export default class App extends Component<Props> {
  componentDidMount() {
    Matomo.trackView(['start'])
      .catch(error => console.warn('Failed to track screen', error));
  }

  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>Welcome to React Native!</Text>
        <Text style={styles.instructions}>To get started, edit App.js</Text>
        <Text style={styles.instructions}>{instructions}</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
