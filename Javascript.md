# In JS, is an empty `Array` return `false` or `true`?

* 2018.05.15
* Written by Jon Jee

#javascript
#typescript
#troubleshooting

## General

> When I was coding, there was a situation that if an array has values, it will return true. So I write like this `bool = !!array`. But, unexpectedly when `array = []`, `bool` is `false`, not `true`.

## Why?

* First, I thought if empty `string` or empty `Array` is parsed to `Boolean`, it must return `false`.
* But it is not.

```javascript
// Conversion
> Boolean("")
false
> Boolean([])
true
// Implied Conversion
> !!""
false
> !![]
true
```
* In Conversion, The result is like this, so I thought `''` is `false`, `[]` is `true`.

```javascript
// Abstract Equality
> "" == false
true
> [] == false
true
```
* But here in Straight Equality, the result is `''` is `false`(of course), `[]` is `false` too.






