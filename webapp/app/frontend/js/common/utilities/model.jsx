'use strict';
import axios from 'axios';

export default class Model {
  static _httpClient(method, path, params={}, data={}) {
    data = method == 'get' ? null : data; // see 'https://github.com/axios/axios#using-applicationx-www-form-urlencoded-format'
    return axios({
      method: method,
      url: '/api' + path,
      data: data,
      params: params,
      headers: { 'X-CSRF-Token': document.getElementsByName("csrf-token")[0].getAttribute("content") },
      timeout: 3000,
    });
  }

  static get(path, params={}) {
    return Model._httpClient('get', path, params);
  }

  static post(path, data={}) {
    return Model._httpClient('post', path, {}, data);
  }
}
