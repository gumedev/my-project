class Sample {
  public name: string;
  public age: number;

  constructor(name: string, age: number) {
    this.name = name;
    this.age = age;
  }

  public getName(): string {
    return this.name;
  }
  public getAge(): number {
    return this.age;
  }
}

export = Sample;
