import { WebPlugin } from '@capacitor/core';

import type { unityadsPlugin } from './definitions';

export class unityadsWeb extends WebPlugin implements unityadsPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
