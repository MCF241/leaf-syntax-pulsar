# Leaf Syntax Highlighter for Pulsar Edit

Professional syntax highlighting for **Leaf template files** (`.leaf`) in [Pulsar Edit](https://pulsar-edit.dev), with full HTML and Leaf language support.

## Features

✨ **Complete Leaf Syntax Support:**
- Variables: `#(userName)`, `#(user.name)`, nested properties
- Control Flow: `#if()`, `#else`, `#elseif()`, `#endif`
- Loops: `#for()`, `#in`, `#endfor`, `#while()`, `#endwhile`
- Advanced: `#switch()`, `#case()`, `#default`, `#endswitch`
- Functions: `#import()`, `#export()`, `#extend()`, `#call()`, `#embed()`, etc.
- Comments: Single-line `#//` and multi-line `### ... ###`

🎨 **Complete HTML Support:**
- HTML tags and attributes
- String literals and escapes
- HTML comments `<!-- -->`
- HTML entities
- Doctype declarations

🌈 **Professional Color Scheme:**
- **Red** for variables
- **Purple** for keywords
- **Blue** for functions
- **Gray** for comments
- **Orange** for HTML attributes
- **Green** for numbers

## Installation

### From Pulsar Package Registry

1. **Open Pulsar Edit**
2. **Pulsar → Preferences → Install**
3. Search for **`leaf-syntax`**
4. Click **Install**

### Manual Installation

```bash
cd ~/.pulsar/packages
git clone https://github.com/MCF241/leaf-syntax-pulsar.git
cd leaf-syntax-pulsar
npm install
```

Then restart Pulsar Edit.

## Usage

After installation, any `.leaf` file opened in Pulsar will automatically display with Leaf + HTML syntax highlighting.

### Example

```leaf
<!DOCTYPE html>
<html>
<head>
    <title>#(page.title)</title>
</head>
<body>
    <h1>Welcome #(user.name)!</h1>
    
    #if(user.isAdmin)
        <div class="admin-panel">
            <p>Admin Controls</p>
        </div>
    #else
        <p>Regular User</p>
    #endif
    
    #for(item in items)
        <li>#(item.name)</li>
    #endfor
    
    #// This is a Leaf comment
    ### 
        Multi-line Leaf comment
    ###
    
    #import("components/footer")
</body>
</html>
```

## Syntax Highlighting Reference

### Variables
```leaf
#(variableName)
#(object.property)
#(array[0])
```
Highlighted in **red**

### Keywords
```leaf
#if(condition)
#for(item in items)
#switch(value)
#while(condition)
```
Highlighted in **purple**

### Functions
```leaf
#import("path")
#call("function", args)
#embed("component")
#extend("layout")
```
Highlighted in **blue**

### Comments
```leaf
#// Single-line comment

### 
    Multi-line comment
###
```
Highlighted in **gray**

### HTML Elements
All HTML tags, attributes, and entities are properly highlighted with HTML-specific coloring.

## Customization

You can customize the colors by editing `styles/leaf.less`:

```less
@leaf-variable: #d63030;    // Change variable color
@leaf-keyword: #9933cc;     // Change keyword color
@leaf-function: #0066cc;    // Change function color
```

Then reload Pulsar or reinstall the package.

## Vapor Framework Support

This package is designed for **Vapor framework** Leaf templates. For more information about Leaf, visit:
- [Vapor Documentation](https://docs.vapor.codes/leaf/syntax/)
- [Leaf GitHub Repository](https://github.com/vapor/leaf)

## Contributing

Contributions are welcome! Please submit:
- Bug reports
- Feature requests
- Grammar improvements
- Style enhancements

## License

MIT License - See LICENSE file for details

## Credits

Built for the Vapor community and Leaf template language enthusiasts.

---

**Enjoy beautiful Leaf syntax highlighting in Pulsar Edit!** 🍃
