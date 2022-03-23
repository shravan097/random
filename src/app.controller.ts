import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  somethingNew(): Array<string> {
    const item = ['a', 'b', 'c'];
    if (item.length == 4) {
      item.pop();
    } else {
      item.push('d');
    }
    return item;
  }
}
