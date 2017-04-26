import { SportsStore4Page } from './app.po';

describe('sports-store4 App', () => {
  let page: SportsStore4Page;

  beforeEach(() => {
    page = new SportsStore4Page();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
