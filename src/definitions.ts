export interface unityadsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
