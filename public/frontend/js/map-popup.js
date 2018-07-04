var directionsDisplay;
var directionsService = new google.maps.DirectionsService();
var map;
directionsDisplay = new google.maps.DirectionsRenderer();
var myLatlng = new google.maps.LatLng(10.773319, 106.659468);

function initialize() {

  // Create an array of styles.
  var styles = [
    {
      stylers: [
        { hue: "#dc9629" },
        { saturation: -20 }
      ]
    },{
      featureType: "road",
      elementType: "geometry",
      stylers: [
        { lightness: 100 },
        { visibility: "simplified" }
      ]
    },{
      featureType: "road",
      elementType: "labels",
      stylers: [
        { visibility: "off" }
      ]
    }
  ];

  // Create a new StyledMapType object, passing it the array of styles,
  // as well as the name to be displayed on the map type control.
  var styledMap = new google.maps.StyledMapType(styles,
    {name: "Styled Map"});


  // Create a map object, and include the MapTypeId to add
  // to the map type control.
  var mapOptions = {
    zoom: 15,
    center: myLatlng,
    scrollwheel: true,
    mapTypeControlOptions: {
      mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
    }
  };

  
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
  // Place a draggable marker on the map
  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      draggable:true,
      title:"Đồ án môn học 3 - được thực hiện bởi NGUYỄN TÔN HÙNG (1633514)"
  });
  directionsDisplay.setMap(map);

  //Associate the styled map with the MapTypeId and set it to display.
  map.mapTypes.set('map_style', styledMap);
  map.setMapTypeId('map_style');

}

function calcRoute() {

 var start = document.getElementById('start').value;
 var end = myLatlng;
  

  var request = {
      origin:start,
      destination:end,
      travelMode: google.maps.TravelMode.DRIVING
  };
  directionsService.route(request, function(response, status) {
    if (status == google.maps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
    }
  });
}