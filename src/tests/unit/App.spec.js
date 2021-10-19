import { shallowMount } from '@vue/test-utils'
import App from './App'

const factory = (values = {}) => {
  return shallowMount(App, {
    data () {
      return {
        ...values
      }
    }
  })
}

describe('App', () => {
  it('renders a welcome message', () => {
    const wrapper = factory()

    expect(wrapper.find('.message').text()).toEqual("Welcome to the Vue.js cookbook")
  })

  
})