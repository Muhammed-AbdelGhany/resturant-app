import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = "/Filters";
  final Function savefilters;
  final Map<String, bool> currentFilters;
  FiltersScreen(this.currentFilters, this.savefilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool isGlutenFree = false;

  bool isLactoseFree = false;

  bool isVegan = false;

  bool isVegetarian = false;

  @override
  void initState() {
    // TODO: implement initState
    isGlutenFree = widget.currentFilters['gluten'];
    isLactoseFree = widget.currentFilters['lactose'];
    isVegan = widget.currentFilters['vegan'];
    isVegetarian = widget.currentFilters['vegetrian'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Filters'),
          actions: [
            IconButton(
                icon: Icon(Icons.save),
                onPressed: () {
                  final _filter = {
                    'gluten': isGlutenFree,
                    'lactose': isLactoseFree,
                    'vegan': isVegan,
                    'vegetrian': isVegetarian
                  };
                  widget.savefilters(_filter);
                })
          ],
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Adjust Your Meal Section',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                SwitchListTile(
                    title: Text('Gluteen Free'),
                    subtitle: Text('Only include Gluteen Free Meals'),
                    value: isGlutenFree,
                    onChanged: (value) {
                      setState(() {
                        isGlutenFree = value;
                      });
                    }),
                SwitchListTile(
                    title: Text('Lactose Free'),
                    subtitle: Text('Only include Lactose Free Meals'),
                    value: isLactoseFree,
                    onChanged: (value) {
                      setState(() {
                        isLactoseFree = value;
                      });
                    }),
                SwitchListTile(
                    title: Text('Vegan'),
                    subtitle: Text('Only include Vegan Free Meals'),
                    value: isVegan,
                    onChanged: (value) {
                      setState(() {
                        isVegan = value;
                      });
                    }),
                SwitchListTile(
                    title: Text('Vegetarian'),
                    subtitle: Text('Only include Vegetarian Meals'),
                    value: isVegetarian,
                    onChanged: (value) {
                      setState(() {
                        isVegetarian = value;
                      });
                    }),
              ],
            ))
          ],
        ));
  }
}
