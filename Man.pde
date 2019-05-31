public class Man {
  int countBody=0;
  public Man() {
  }
  public void manDisplay() {
    line(190, 135, 190, 100);
    line(190, 100, 280, 100);
    line(280, 100, 280, 300);
    fill(128);
    rect(160, 300, 160, 20);
    if (countBody>0) {
      fill(255);
      ellipse(190, 150, 30, 30);
      if(countBody > 1){
        fill(256);
        arc(192,160,25,5,60,62);
        line(185,140,185,150);
        line(195,140,195,150);
       
        if (countBody >2) {
        line(190, 165, 190, 215);
        if (countBody >3) {
          line(190, 180, 215, 170);
          if (countBody >4) {
            line(190, 180, 165, 170);
            if (countBody >5) {
              line(190, 215, 215, 245);
              if (countBody >6) {
                line(190, 215, 165, 245);
              }
            }
          }
        }
      }
      }
    }
  }
}
