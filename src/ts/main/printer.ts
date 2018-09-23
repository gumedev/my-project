class Printer {
  private str: string;
  private decoration: string;
  private length: number;

  constructor(str: string, decoration: string) {
    this.str = str;
    this.decoration = decoration;
    this.length = this.str.length;
  }

  public getDistDecoration(): string {
    let dist: string = '';

    for (let i = 0; i < this.length; i++) {
      dist += this.decoration;
    }
    return dist;
  }

  public print(): void {
    let distDecoratiion = this.getDistDecoration();

    console.log(distDecoratiion);
    console.log(this.str);
    console.log(distDecoratiion);
  }
}

export = Printer;
