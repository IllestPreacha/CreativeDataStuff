var i = 1;

let data; //calling the data variable

//load url
let url = "https://docs.google.com/spreadsheets/d/e/2PACX-1vQJPPryw-mxzKXzwhdhccm0fBQx4xGIt-mVbPRtUPADrhJRB9YKpFe7F9I2JZgNuM14a7-q9YVqIlwG/pub?gid=1407936083&single=true&output=csv"

//calling function
function preload(){
  data = loadTable(url, 'csv', 'header'); // leading the url as a csv file , with headers
}

function setup() { 
  createCanvas(windowWidth, windowHeight,WEBGL);
  
  // how many rows?
  console.log(data.getRowCount());
  // what are the columns?
  console.log(data.columns);

  background(10); //baackground color
  
}

    //function mousePressed() {
function draw(){

  // use the second as a timer
  frameRate(1)
  if (second() % 3 == 0);{
      i++;
    }  
//Make the loop run again 
  if (i > 46){
    i = 0;
    background(5)
  }
    c =  "#" + data.getString(i,"Color Track Name"); // call upon the colors of the data frame 
    strokeWeight(data.getNum(i,"Lightness")/ 5); // Stroke Weight
    stroke(c); // Stroke color #using the column from Track Name
    fill(c); // Stroke color #using the column from Track Name
    //let xpos = map(i, 0, data.getRowCount(), 0, width);
    // data.getNum(m, n) evaluates to the value in the
    // cell for row m in column n.
    // replace "TEMP" with some other column name to
    // display a different column.
    
    //Hlab can be ignored and swtch
    // V1 Had only 3 variables
    //V2 had h-lab1
    //V3 will have hlab2
    

    
    rect(data.getNum(i,"Red" ),data.getNum(i, "Green"),data.getNum(i,"Blue%"));


      /*if ( i > 47){
        i = 0
      }
      else {
      i++;
      }
    }*/
}
//data.getNum(i,"H-Lab1") + data.getNum(i,"H-Lab2") + data.getNum(i,"H-Lab3")

  