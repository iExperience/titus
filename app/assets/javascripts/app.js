app = new Vue({
  el: '#app',
  data: {
    room: '',
    view: '',
    tv: false,
    sauna: false,
    parking: false,
    cleaning: false,
    amenities: [],
    available_rooms: [],
    selected_room: '',
    room_booked: false
  },

  methods: {
    submit_search: function() {
      vt = this;
      this.selected_room = '';

      axios({
        method: 'post',
        url: '/api/rooms/search',
        data: this.setData(),
        responseType: 'json'
      })
      .then(function (response) {
        vt.available_rooms = response.data
      })
      .catch(function (error) {
        console.log(error);
      });
    },

    setData: function(){
      this.room = $('[data-room-size]').val();
      this.view = $('[data-room-view]').val();

      return {
        room: {
          room_size: this.room,
          view: this.view
        }
      }
    },

    setup_confirmation: function(room) {
      this.selected_room = room;
    },

    book_room: function() {
      this.room_booked = true;
    }
  }
});