let myImage = document.querySelector("img");

myImage.onclick = function () {
  let mySrc = myImage.getAttribute("src");
  if (mySrc === "imgs/6d5806aba8a7f6b91bd2de139c19254c9cb950a6.jpg") {
    myImage.setAttribute("src", "imgs/73634c71122ce47fa9d333ce87d7369785be060e.jpg");
  } else {
    myImage.setAttribute("src", "imgs/6d5806aba8a7f6b91bd2de139c19254c9cb950a6.jpg");
  }
};

// let myButton = document.querySelector("button");
// let myHeading = document.querySelector("h1");

function showDateTime() {
    const now = new Date(); // 获取当前日期和时间
    const year = now.getFullYear(); // 年份
    const month = String(now.getMonth() + 1).padStart(2, '0'); // 月份，注意月份是从0开始的，所以我们需要+1
    const date = String(now.getDate()).padStart(2, '0'); // 日期
    const hours = String(now.getHours()).padStart(2, '0'); // 小时
    const minutes = String(now.getMinutes()).padStart(2, '0'); // 分钟
    const seconds = String(now.getSeconds()).padStart(2, '0'); // 秒
  
    // 格式化日期时间为 YYYY-MM-DD HH:MM:SS
    const dateTimeStr = '北京时间 '+`${year}-${month}-${date} ${hours}:${minutes}:${seconds}`;
  
    // 显示日期时间到页面上的某个元素，例如一个ID为'dateTime'的div
    document.getElementById('dateTime').textContent = dateTimeStr;
  }
  
  // 每秒更新时间
  setInterval(showDateTime, 1000);
  
  // 初始化显示日期时间
  showDateTime();
