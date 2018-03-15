const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  const loaded = page.waitForNavigation({waitUntil: 'networkidle0'});
  await page.setViewport({width: 1920,height: 1080});
  await page.goto('http://rectangle.good-loop.com');
  await loaded;
  await page.screenshot({path: 'rectangle.png'});

  await browser.close();
})();
