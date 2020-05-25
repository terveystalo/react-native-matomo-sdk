import { NativeModules } from 'react-native';
const { RNMatomoSdk } = NativeModules;

export function initialize(apiUrl, siteId) {
  return RNMatomoSdk.initialize(apiUrl, siteId);
}

export function trackView(route) {
  return RNMatomoSdk.trackView(route);
}

export function trackEvent(category, event, name, value) {
  return RNMatomoSdk.trackEvent(category, event, {name: name, value: value});
}

export function setUserId(userId) {
  return RNMatomoSdk.setUserId(userId);
}


export default {
  initialize: initialize,
  trackView: trackView,
  trackEvent: trackEvent,
  setUserId: setUserId,
};
