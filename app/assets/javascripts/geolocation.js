$('document').ready(function(){
  $(".locate-me").click(function(e){
    e.preventDefault();
    getGeoLocation();
  });
});
 
function getGeoLocation() {
  navigator.geolocation.getCurrentPosition(setGeoCookie);
}

function setGeoCookie(position) {
  var cookie_val = position.coords.latitude + "|" + position.coords.longitude;
  document.cookie = "lat_lng=" + escape(cookie_val);
  return true;
}     


// function fetchGeo() {
//   navigator.geolocation.getCurrentPosition(
//     function(pos) {
//       // Succesfully got location
//       var lat = pos.coords.latitude,
//           lng = pos.coords.longitude;
//       // fetchLocations(lat, lng);
//     },
//     function(error) {
//       // Failed to get location
//       alert(error);
//     }, {
//       // Options for geolocation
//       maximumAge: 10000, 
//       timeout: 10000,
//       enableHighAccuracy: false
//     }
//   );
// }