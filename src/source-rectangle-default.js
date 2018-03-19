const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  const loaded = page.waitForNavigation({waitUntil: 'networkidle0'});
  const mouse = page.mouse;
  await page.setViewport({width: 1920,height: 1080});
  await page.goto('http://rectangle.good-loop.com/?gl.variant=default');
  await loaded;
  await mouse.click(175,202);
  await loaded;
  await page.screenshot({path: 'rectangle.png'});

  await browser.close();
})();
