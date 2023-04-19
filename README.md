# dmail.aleo

## Build Guide

To compile this Aleo program, run:
```bash
leo build 
```

### Send message

Anyone can send a new mail message by calling `send` function.
The first parameter is the recipient's wallet address

The CID of the second parameter information content on IPFS

Reply to CID for the third parameter

Because Leo currently does not support strings, convert the cid character into binary digits, divide it into 8 slices, and then convert it to Leo Field type. This is because Leo Field type supports a maximum of 76 digits and remains unchanged. If it exceeds 76 digits, it will change

Run `send`:

```
leo run send aleo13upju26f9xnsxz77rs7cs6hffz8d6hpvuvu3xqwmh7trrh65mqpsz4xrl9 "{ 
slice1:101000101101101010100110011011101111000010010field,
slice2:1001001101001101010111010101101011001100110110field,
slice3:1110010001100100101001000100001110000100110101field,
slice4:110110101001100011011101000110010000110001field,
slice5:111010100111000001100010111101001010001010001field,
slice6:1010010010011010011001101101111011100010101field,
slice7:1001010000100101010001110101011110000111000101field,
slice8:1000100110011101101111001100010111001000111000field
}" "{slice1:0field,slice2:0field,slice3:0field,slice4:0field,slice5:0field,slice6:0field,slice7:0field,slice8:0field}"
```

Output sample:

```
➡️  Output

 • {
  owner: aleo13upju26f9xnsxz77rs7cs6hffz8d6hpvuvu3xqwmh7trrh65mqpsz4xrl9.private,
  gates: 0u64.private,
  from: aleo1vlu4nhlnmsufuwtrdxs5pfjyhggl28mvklqutun4smmyt4zdhyysx54mz2.private,
  cid: {
    slice1: 101000101101101010100110011011101111000010010field.private,
    slice2: 1001001101001101010111010101101011001100110110field.private,
    slice3: 1110010001100100101001000100001110000100110101field.private,
    slice4: 110110101001100011011101000110010000110001field.private,
    slice5: 111010100111000001100010111101001010001010001field.private,
    slice6: 1010010010011010011001101101111011100010101field.private,
    slice7: 1001010000100101010001110101011110000111000101field.private,
    slice8: 1000100110011101101111001100010111001000111000field.private
  },
  reply: {
    slice1: 0field.private,
    slice2: 0field.private,
    slice3: 0field.private,
    slice4: 0field.private,
    slice5: 0field.private,
    slice6: 0field.private,
    slice7: 0field.private,
    slice8: 0field.private
  },
  _nonce: 3628249438122404002733756539129099892182212894341134701273652494387234665304group.public
}
```