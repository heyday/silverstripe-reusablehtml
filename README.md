# SilverStripe Reusable Html

All of Bootstrap's boilerplate element structures as composable templates, as well as some other common HTML structures (using [heyday/silverstripe-composeparser](https://github.com/heyday/silverstripe-composeparser)).

## Installation (with composer)

	$ composer require camspiers/silverstripe-reusablehtml

## Usage example

A [Bootstrap modal](http://getbootstrap.com/javascript/#modals-examples):

```html
<:bsmodal fade=1>
	<:bsmodalheader>
		<h2>Hello, world!</h2>
	</:bsmodalheader>

	<:bsmodalbody>
		<p>We're in a Bootstrap modal!</p>
	</:bsmodalbody>
</:bsmodal>
```

For a full list of templates provided by this module, look in the [templates directory](templates).

### Template blocks

Reusable HTML adds two additional template blocks that are used in the templates it provides: `required` and `dataattrs`. These can also be used in your own templates.

#### `<% required %>`

The required block allows defining a list of variables that must be present for the template to render. Missing variables will cause an exception to be thrown during template rendering.

```html
<:MyTemplate foo="Hello"/>

// MyTemplate.ss
<% required $foo, $bar %>

// Result
InvalidArgumentException: the field 'bar' is required
```


#### `<% dataattrs %>`

The data attributes block renders all HTML data attributes passed into an include statement. No closing block is required.

```html
<:MyTemplate data-foo="bar"/>

// MyTemplate.ss
<div <% dataattrs %>></div>

// Rendered
<div data-foo="bar"></div>
```