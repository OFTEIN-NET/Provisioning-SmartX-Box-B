smartx-b-box Cookbook
========================

This [Chef](https://www.chef.io) cookbook is used to provision of SmartX Box Type B for OF@TEIN Playground.


Recipes
-------

<table>
  <tr>
    <th>Recipes</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>['smartx-b-box']['box-install']</tt></td>
    <td>Install the basic software</td>
  </tr>
    <tr>
      <td><tt>['smartx-b-box']['box-config']</tt></td>
      <td>Configure the basic software functions</td>
    </tr>
</table>

Usage
-----

Include `smartx-b-box` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[smartx-b-box::box-install,smartx-b-box::box-config]"
  ]
}
```

