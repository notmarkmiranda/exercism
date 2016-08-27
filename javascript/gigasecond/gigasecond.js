function Gigasecond(dateObject) {
  this.checkDate = dateObject;
};

Gigasecond.prototype.date = function(){
  var returnDate = new Date(this.checkDate.getTime() + 1000 * 1000000000)
  return returnDate
}
module.exports = Gigasecond;
