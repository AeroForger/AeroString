# AeroString

AeroString is a simple Lua library that adds useful string methods.

## Installation

Install AeroString using LuaRocks:

```bash
luarocks install AeroString
```

## Methods

| **Methods**| **Examples** |
| --- | --- |
| split | ```String.split("Hello,World", ",")``` -> ``{"Hello", "World}`` |
| trim | `String.trim(" Hello ")` -> `"Hello"` |
| startsWith | `String.startsWith("Hello World", "Hello")` -> `true` |
| endsWith | `String.endsWith("Hello World", "World")` -> `true` |
| contains | `String.contains("Hello World", "World")` -> `true` |

## Usage

```lua
local String = require("AeroString")

local text = "   Hello World   "

print(String.trim(text))
print(String.contains(text, "World"))
print(String.startsWith(text, "   Hello"))
print(String.endsWith(text, "   "))

-- split method

local result = String.split("Hello,World,Lua", ",")

print(result[1]) -- Hello
print(result[2]) -- World
print(result[3]) -- Lua

```

## License

AeroString is licensed under the Apache License 2.0.
