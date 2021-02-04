//
// This is only a SKELETON file for the 'Two fer' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const twoFer = (name = null) => {
  if (name === 'Alice') {
    return 'One for Alice, one for me.';
  } else if (name === 'Bob') {
    return 'One for Bob, one for me.';
  } else {
    return 'One for you, one for me.'
  }
};
