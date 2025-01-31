import { registerPlugin } from '@capacitor/core';

import type { unityadsPlugin } from './definitions';

const unityads = registerPlugin<unityadsPlugin>('unityads', {
  web: () => import('./web').then((m) => new m.unityadsWeb()),
});

export * from './definitions';
export { unityads };
