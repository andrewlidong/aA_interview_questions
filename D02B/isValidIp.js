// Write a method that takes a string and returns whether the input is a valid IPv4 address.
//
// Clarify if asked:
//
// Anything between 0.0.0.0 and 255.255.255.255

function isValidIp(str) {
  const ipNums = str.split('.');

  if (ipNums.length !== 4) {
    return false;
  }

  for (let i = 0; i < ipNums.length; i ++) {
    const ipNum = Number(ipNums[i]);

    if (ipNum !== ipNum || (ipNum > 255 || ipNum < 0)) {
      return false;
    }
  }

  return true;
}
