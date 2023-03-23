{
  "Standard Starter Template": {
    "prefix": "sst",
    "body": [
      "#include <stdlib.h>",
      "#include <stdio.h>",
      "",
      "int main(int argc, char *argv[])",
      "{$0",
      "",
      "\treturn 0;",
      "}"
    ],
    "description": "Standard starter template for a tiny C program"
  },
  "Preprocessor Starter Template": {
    "prefix": "sstp",
    "body": [
      "// #define NDEBUG // disables assert()",
      "#include <stdlib.h>",
      "#include <stddef.h>",
      "#include <stdbool.h>",
      "#include <assert.h>",
      "#include <errno.h>",
      "#include <stdio.h>"
    ],
    "description": "Preprocessor starter template for a C project"
  },
  "main() template": {
    "prefix": "main",
    "body": [
      "int main(int argc, char *argv[])",
      "{$0",
      "",
      "\treturn 0;",
      "}"
    ],
    "description": "Standard main() snippet"
  },
  "main(void) template": {
    "prefix": "mainn",
    "body": [
      "int main(void)",
      "{$0",
      "",
      "\treturn 0;",
      "}"
    ],
    "description": "No-args main() snippet"
  },
  "#include <...>": {
    "prefix": "#inc",
    "body": ["#include <$0>"],
    "description": "#include <...> snippet"
  },
  "#include \"...\"": {
    "prefix": "#Inc",
    "body": ["#include \"$0\""],
    "description": "#include \"...\" snippet"
  },
  "#define macro": {
    "prefix": "#def",
    "body": ["#define ${1:MACRO}"],
    "description": "Textual macro snippet"
  },
  "#define macro()": {
    "prefix": "#deff",
    "body": ["#define ${1:MACRO}($2) ($3)"],
    "description": "Function-like macro snippet"
  },
  "#if": {
    "prefix": "#if",
    "body": [
      "#if ${1:0}",
      "$0",
      "#endif /* if $1 */"
    ],
    "description": "#if snippet"
  },
  "#ifdef": {
    "prefix": "#ifdef",
    "body": [
      "#ifdef ${1:DEBUG}",
      "$0",
      "#endif /* ifdef $1 */"
    ],
    "description": "#ifdef snippet"
  },
  "#ifndef": {
    "prefix": "#ifndef",
    "body": [
      "#ifndef ${1:DEBUG}",
      "$0",
      "#endif /* ifndef $1 */"
    ],
    "description": "#ifndef snippet"
  },
  "include once": {
    "prefix": "once",
    "body": [
      "#ifndef ${1:FILE}_H",
      "#define $1_H",
      "$0",
      "",
      "#endif /* end of include guard: $1_H */"
    ],
    "description": "Header include guard"
  },
  "extern C": {
    "prefix": "nocpp",
    "body": [
      "#ifdef __cplusplus",
      "extern \"C\" {",
      "#endif",
      "$0",
      "",
      "#ifdef __cplusplus",
      "} /* extern \"C\" */",
      "#endif"
    ],
    "description": "Disable C++ name mangling in C headers"
  },
  "#error": {
    "prefix": "#err",
    "body": ["#error \"$0\""],
    "description": "#error snippet"
  },
  "#warning": {
    "prefix": "#warn",
    "body": ["#warning \"$0\""],
    "description": "#warning snippet"
  },
  "if": {
    "prefix": "if",
    "body": [
      "if (${1:true}) {$0",
      "}"
    ],
    "description": "'if' snippet"
  },
  "if else": {
    "prefix": "ife",
    "body": [
      "if (${1:true}) {$2",
      "} else {$0",
      "}"
    ],
    "description": "'if' with 'else'"
  },
  "else": {
    "prefix": "el",
    "body": [
      "else {$0",
      "}"
    ],
    "description": "'else' snippet"
  },
  "else if": {
    "prefix": "elif",
    "body": [
      "else if (${1:true}) {$0",
      "}"
    ],
    "description": "else-if snippet"
  },
  "if 1L": {
    "prefix": "ifi",
    "body": ["if (${1:true}) $0"],
    "description": "1-line-if"
  },
  "elif 1L": {
    "prefix": "elifi",
    "body": ["else if (${1:true}) $0"],
    "description": "1-line-else-if"
  },
  "ternary": {
    "prefix": "t",
    "body": ["$1 ? $2 : $0"],
    "description": "Ternary operator"
  },
  "switch": {
    "prefix": "switch",
    "body": [
      "switch (${1:expression}) {$0",
      "}"
    ],
    "description": "'switch' snippet"
  },
  "case": {
    "prefix": "case",
    "body": [
      "case ${1:0}:$0"
    ],
    "description": "'case' branch"
  },
  "default": {
    "prefix": "default",
    "body": [
      "default:$0"
    ],
    "description": "'default' branch"
  },
  "while": {
    "prefix": "while",
    "body": [
      "while (${1:true}) {$0",
      "}"
    ],
    "description": "'while' loop snippet"
  },
  "do...while": {
    "prefix": "do",
    "body": [
      "do {$0",
      "} while(${1:false});"
    ],
    "description": "do...while loop snippet"
  },
  "return": {
    "prefix": "ret",
    "body": ["return ${1:0};"],
    "description": "'return' snippet"
  },
  "exit": {
    "prefix": "ex",
    "body": ["exit($0);"],
    "description": "exit() snippet"
  },
  "for": {
    "prefix": "for",
    "body": [
      "for (size_t ${2:i} = 0; $2 < ${1:count}; $2++) {$0",
      "}"
    ],
    "description": "Mostly used 'for' loop"
  },
  "for custom type": {
    "prefix": "fort",
    "body": [
      "for (${1:int} ${2:i} = 0; $2 < ${4:count}; $2++) {$0",
      "}"
    ],
    "description": "Mostly used 'for' loop with custom type"
  },
  "for non-zero start": {
    "prefix": "for1",
    "body": [
      "for (${1:size_t} ${2:i} = ${3:1}; $2 <= ${4:finish}; $2++) {$0",
      "}"
    ],
    "description": "'for' loop with non-zero start"
  },
  "for main() args": {
    "prefix": "forp",
    "body": [
      "for (int ${2:i} = ${1:1}; $2 < argc; $2++) {$0",
      "}"
    ],
    "description": "'for' loop variant for cmdline arguments"
  },
  "for reverse": {
    "prefix": "forr",
    "body": [
      "for (${1:size_t} ${2:i} = ${3:count}; $2 > ${4:0}; $2--) {$0",
      "}"
    ],
    "description": "Mostly used reverse 'for' loop"
  },
  "for reverse custom": {
    "prefix": "forr1",
    "body": [
      "for (${1:int} ${2:i} = ${3:start}; $2 >= ${4:finish}; $2--) {$0",
      "}"
    ],
    "description": "More custom reverse 'for' loop"
  },
  "for custom": {
    "prefix": "forc",
    "body": [
      "for (${1:size_t} ${2:i} = ${3:initval}; $4; $2${5:++}) {$0",
      "}"
    ],
    "description": "Custom 'for' loop"
  },
  "Function declaration": {
    "prefix": "fund",
    "body": ["$4${2:void} ${1:fun}(${3:void});"],
    "description": "Declare a function"
  },
  "Function definition": {
    "prefix": "fun",
    "body": [
      "$4${2:void} ${1:fun}(${3:void})",
      "{$0",
      "}"
    ],
    "description": "Define a function"
  },
  "Function with return var": {
    "prefix": "funv",
    "body": [
      "$4${2:int} ${1:func}(${3:void})",
      "{",
      "\t$2 ${5:retval} = ${6:0};$0",
      "\treturn $5;",
      "}"
    ],
    "description": "Define a function that uses a variable for return"
  },
  "typedef": {
    "prefix": "td",
    "body": ["typedef ${1:void} ${2:Emptiness};"],
    "description": "'typedef' snippet"
  },
  "Complicated typedef": {
    "prefix": "tdd",
    "body": ["typedef $0;"],
    "description": "Declaration-like typedef for func-ptr,array,etc."
  },
  "typedef struct": {
    "prefix": "tdst",
    "body": ["typedef struct $1 ${1:Box};"],
    "description": "Implicit struct typedef"
  },
  "typedef union": {
    "prefix": "tduo",
    "body": ["typedef union $1 ${1:Cell};"],
    "description": "Implicit union typedef"
  },
  "typedef enum": {
    "prefix": "tdenum",
    "body": ["typedef enum $1 ${1:Numbers};"],
    "description": "Implicit enum typedef"
  },
  "struct": {
    "prefix": "st",
    "body": [
      "struct ${1:MyStruct} {$0",
      "};"
    ],
    "description": "'struct' snippet"
  },
  "struct type": {
    "prefix": "stt",
    "body": [
      "typedef struct $1 ${1:Box};",
      "struct $1 {$0",
      "};"
    ],
    "description": "Define a type with struct"
  },
  "union": {
    "prefix": "uo",
    "body": [
      "union ${1:MyUnion} {$0",
      "};"
    ],
    "description": "'union' snippet"
  },
  "union type": {
    "prefix": "uot",
    "body": [
      "typedef union $1 ${1:Cell};",
      "union $1 {$0",
      "};"
    ],
    "description": "Define a type with union"
  },
  "enum constant": {
    "prefix": "enum",
    "body": ["enum $1{ $0 };"],
    "description": "Define a constant with enum"
  },
  "enum": {
    "prefix": "enums",
    "body": [
      "enum ${1:MyEnum} {$0",
      "};"
    ],
    "description": "'enum' struct-like snippet"
  },
  "enum type": {
    "prefix": "enumt",
    "body": [
      "typedef enum $1 ${1:Numbers};",
      "enum $1 {$0",
      "};"
    ],
    "description": "Define a type with enum"
  },
  "printf": {
    "prefix": "pri",
    "body": ["printf(\"${1:%s}\\n\"$0);"],
    "description": "printf() snippet"
  },
  "fprintf": {
    "prefix": "fpri",
    "body": ["fprintf(${1:stderr}, \"${2:%s}\\n\"$0);"],
    "description": "fprintf() snippet"
  },
  "sprintf": {
    "prefix": "spri",
    "body": ["sprintf(${1:buf}, \"${2:%s}\\n\"$0);"],
    "description": "sprintf() snippet"
  },
  "snprintf": {
    "prefix": "snpri",
    "body": ["sprintf(${1:buf}, ${2:max}, \"${3:%s}\\n\"$0);"],
    "description": "snprintf() snippet"
  },
  "scanf": {
    "prefix": "scanf",
    "body": ["scanf(\"${1:%i}\"$0);"],
    "description": "scanf() snippet"
  },
  "fscanf": {
    "prefix": "fscanf",
    "body": ["fscanf(${1:stdin}, \"${2:%i}\"$0);"],
    "description": "fscanf() snippet"
  },
  "sscanf": {
    "prefix": "sscanf",
    "body": ["sscanf(${1:buf}, \"${2:%i}\"$0);"],
    "description": "sscanf() snippet"
  },
  "Print a variable": {
    "prefix": "priv",
    "body": ["printf(\"$0 = %${1:i}\\n\", $0);"],
    "description": "Call printf() to log value of a variable"
  },
  "warn": {
    "prefix": "warn",
    "body": ["warn(\"${1:%s}\"$0);"],
    "description": "warn() snippet"
  },
  "warnx": {
    "prefix": "warnx",
    "body": ["warnx(\"${1:%s}\"$0);"],
    "description": "warnx() snippet"
  },
  "err": {
    "prefix": "err",
    "body": ["err(\"${1:%s}\"$0);"],
    "description": "err() snippet"
  },
  "errx": {
    "prefix": "errx",
    "body": ["errx(\"${1:%s}\"$0);"],
    "description": "errx() snippet"
  },
  "assert": {
    "prefix": "asr",
    "body": ["assert($0);"],
    "description": "assert() snippet"
  },
  "static_assert": {
    "prefix": "stasr",
    "body": ["static_assert($0, \"${1:Oopsie!}\");"],
    "description": "static_assert() snippet"
  },
  "static_assert 1-param": {
    "prefix": "stasr1",
    "body": ["static_assert($0);"],
    "description": "C2X 1-parameter static_assert() snippet"
  },
  "malloc": {
    "prefix": "mlc",
    "body": ["${3:ptr} = malloc(sizeof(${1:int}[${2:1}])$0);"],
    "description": "malloc() snippet"
  },
  "calloc": {
    "prefix": "clc",
    "body": ["${3:ptr} = calloc(${2:1}, sizeof(${1:int})$0);"],
    "description": "calloc() snippet"
  },
  "realloc": {
    "prefix": "rlc",
    "body": ["${1:ptr} = realloc($1, sizeof(${2:int}[${3:1}])$0);"],
    "description": "realloc() snippet"
  },
  "free": {
    "prefix": "fre",
    "body": ["free(${1:ptr});"],
    "description": "free() snippet"
  },
  "malloc declaration": {
    "prefix": "mlcd",
    "body": ["${1:int} *${3:ptr} = malloc(sizeof($1[${2:1}])$0);"],
    "description": "malloc() declaration snippet"
  },
  "calloc declaration": {
    "prefix": "clcd",
    "body": ["${1:int} *${3:ptr} = calloc(${2:1}, sizeof($1)$0);"],
    "description": "calloc() declaration snippet"
  },
  "malloc template": {
    "prefix": "mlct",
    "body": [
      "${1:int} *${3:ptr} = malloc(sizeof($1[${2:1}]));",
      "if (!$3) {",
      "\tfprintf(stderr, \"${4:Your memory is doomed!}\\n\"$5);",
      "\t${6:exit(EXIT_FAILURE)};",
      "}",
      "$0",
      "",
      "free($3);"
    ],
    "description": "Use malloc() with fail option, then free()."
  },
  "calloc template": {
    "prefix": "clct",
    "body": [
      "${1:int} *${3:ptr} = calloc(${2:1}, sizeof($1));",
      "if (!$3) {",
      "\tfprintf(stderr, \"${4:Your memory is doomed!}\\n\"$5);",
      "\t${6:exit(EXIT_FAILURE)};",
      "}",
      "$0",
      "",
      "free($3);"
    ],
    "description": "Use calloc() with fail option, then free()."
  },
  "Comment block": {
    "prefix": ",",
    "body": ["/*$0 */"],
    "description": "Convenient comment block"
  },
  "Multiline comment": {
    "prefix": ",,",
    "body": [
      "/*$0",
      " */"
    ],
    "description": "Convenient multiline comment"
  },
  "Multiline 2-star comment": {
    "prefix": ",d",
    "body": [
      "/**$0",
      " **/"
    ],
    "description": "Doxygen 2-star-style comment"
  },
  "Doxygen template": {
    "prefix": "dox",
    "body": [
      "/*!$1",
      " * @brief ${2:This is something undocumented.}",
      " *",
      " * ${3:Nothing to add here...}$0",
      " */"
    ],
    "description": "Doxygen template to document a var/func/etc"
  },
  "Doxygen function": {
    "prefix": "dfun",
    "body": [
      "/*!",
      " * @brief ${4:This function is undocumented.}",
      " *",
      " * ${5:Nothing to add here...}",
      " *",
      " * @return ${6:Umm...}$0",
      " */",
      "${2:void} ${1:fun}(${3:void});"
    ],
    "description": "Document a function with Doxygen"
  },
  "Todo section": {
    "prefix": "todo",
    "body": [
      "/*! TODO: ${1:I forgor...}",
      " *",
      " * @todo ${2:Cure my dementia.}",
      " */"
    ],
    "description": "Doxygen 'todo' section"
  },
  "Group section": {
    "prefix": "dgr",
    "body": [
      "/*! @name ${1:Useless API.}${2: No more details...}",
      " * @{",
      " */",
      "$0",
      "",
      "/*! @}",
      " */"
    ],
    "description": "Group documented elements"
  },
  "Array length": {
    "prefix": "alen",
    "body": ["(sizeof ${1:arr} / sizeof $1[0])"],
    "description": "Calculate number of elements in an array"
  },
  "Linked list": {
    "prefix": "clist",
    "body": [
      "typedef struct $1 ${1:Node};",
      "struct $1 {$0",
      "\t$1 *${2:next};",
      "};"
    ],
    "description": "Create a linked list template"
  }
}
