class Location{
  double latitude;
  double longtiude;
  void getCurrentLocation(){
     try{
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.lowest);
    print(position);}
    catch(e){
      print(e);
    }
    print("lat: " + latitude ?? 20);
    print("long: "+ longitude ?? 20);
  }
  
}
