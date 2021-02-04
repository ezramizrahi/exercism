//
// This is only a SKELETON file for the 'Pangram' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const isPangram = (text) => {
  const nonAscii = text.replace(/[^\x00-\x7F]/g, '');
  // remove special characters and whitespaces
  const nonSpecial = nonAscii.replace(/[^\w]/gi, '').toLowerCase();
  // negative lookahead
  const regex = /([a-z])(?!.*\1)/g;
  // determine if input is valid
  if ( text === '' ) {
    return false;
    // determine if cleaned text unique characters has length of 26
  } else if ( nonSpecial.match(regex).length === 26 ) {
    return true;
  } else {
    return false;
  }
};
