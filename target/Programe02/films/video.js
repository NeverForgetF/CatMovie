// 获取元素
const appDownload = document.querySelector('.app-download');
const hiddenContent = document.querySelector('.download-icon');
const app_caret = document.querySelector('.app_caret');

const userLogin = document.querySelector('.user-login');
const hiddenLogin = document.querySelector('.login_icon');
const login_caret = document.querySelector('.login_caret');

const city = document.querySelector('.city');
const hiddenCity = document.querySelector('.city-list');
const city_caret = document.querySelector('.city_caret');

// 添加鼠标移动事件监听器
appDownload.addEventListener('mousemove', function () {
    // 显示隐藏的内容
    hiddenContent.style.display = 'block';
    app_caret.style.transform = 'rotate(180deg)';
});

// 添加鼠标离开事件监听器，如果需要在离开时隐藏内容
appDownload.addEventListener('mouseleave', function () {
    // 隐藏内容
    hiddenContent.style.display = 'none';
    app_caret.style.transform = 'none';
});

// 添加鼠标移动事件监听器
userLogin.addEventListener('mousemove', function () {
    // 显示隐藏的内容
    hiddenLogin.style.display = 'block';
    login_caret.style.transform = 'rotate(180deg)';
});
userLogin.addEventListener('mouseleave', function () {
    // 隐藏内容
    hiddenLogin.style.display = 'none';
    login_caret.style.transform = 'none';
});

// 添加鼠标移动事件监听器
city.addEventListener('mousemove', function () {
    // 显示隐藏的内容
    hiddenCity.style.display = 'block';
    city_caret.style.transform = 'rotate(180deg)';
});
city.addEventListener('mouseleave', function () {
    // 隐藏内容
    hiddenCity.style.display = 'none';
    city_caret.style.transform = 'none';
});
