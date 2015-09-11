import m from 'mithril';

var Person = class {
  init(data = {}) {
    this.name = m.prop(data.name);
    this.age = m.prop(data.age);
  }

};

console.log(1);
export default Person;
