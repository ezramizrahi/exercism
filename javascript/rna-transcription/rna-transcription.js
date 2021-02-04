//
// This is only a SKELETON file for the 'RNA Transcription' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const toRna = (nucleotide) => {
  if ( nucleotide.includes("X") ) {
    // throw new Error if above evals to true
    throw new Error('Invalid input');
    // else transcribe DNA to RNA
  } else {
    // replacement object
    const replacements = {'A': 'U', 'T': 'A', 'G': 'C', 'C': 'G'};
    // replace() method returns a new string with some/all matches of a pattern
    // replaced by a replacement.
    return nucleotide.replace(/A|T|G|C/g, char => replacements[char]);
  }
};
