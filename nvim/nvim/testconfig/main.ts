import { bar } from "./bar";

export function main(a: number) {
  return a + 1;
}

export function hello() {
  console.log("Hello world");
}

export type User = {
  name: string;
  age: number;
};

const u: User = {
  name: "Vu Hai Dang",
  age: 24,
};
console.info(u);

main(1);
bar();
