const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  const loaded = page.waitForNavigation({waitUntil: 'networkidle0'});
  const mouse = page.mouse;
  await page.setViewport({width: 1920,height: 1080});
  await page.goto('https://www.good-loop.com/live-demo');
  await loaded;
  await mouse.click(1124,729);
  await loaded;
  await page.screenshot({path: 'good-loop-live-demo.png'});

  await browser.close();
})();
