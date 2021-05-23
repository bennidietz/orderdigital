const app = Vue.createApp({
    template : '<h1>Hello {{ firstName }}</h1>',
    data() {
        return {
            firstName: 'John',
            lastName: 'Doe',
            email: 'john@gmail.com',
            gender: 'male',
            picture: '',
        }
    }
})

app.mount('#app')