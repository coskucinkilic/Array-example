import Array "mo:base/Array";
import Vector "mo:vector";

shared actor class Echo() = this {

  var x = 0;

  stable var xVec = Vector.new<Nat>();

  while (x < 101) {
    Vector.add(xVec, x);
    x += 1
  };

  // Say the given phase.
  public shared func getMult() : async [Nat] {

    let result : [Nat] = Array.tabulate<Nat>(Vector.size(xVec), func(idx : Nat) {Vector.get(xVec, idx) * 100});
    return result
  };

}
