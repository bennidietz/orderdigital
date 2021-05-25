import 'package:flutter/material.dart';
import 'package:forsat/network/classes/common/category.dart';
import 'package:forsat/network/classes/common/country.dart';
import 'package:forsat/network/classes/opportunity/form_fields/category_form_field.dart';
import 'package:forsat/network/classes/opportunity/form_fields/country_form_field.dart';
import 'package:forsat/network/classes/opportunity/form_fields/deadline_form_field.dart';
import 'package:forsat/network/classes/opportunity/form_fields/description_form_field.dart';
import 'package:forsat/network/classes/opportunity/form_fields/organizer_form_field.dart';
import 'package:forsat/network/classes/opportunity/form_fields/title_form_field.dart';
import 'package:forsat/network/repositories/common_repository.dart';
import 'package:forsat/network/state/common_state.dart';
import 'package:intl/intl.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class AddNewOpportunityPage extends StatelessWidget {
  const AddNewOpportunityPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a new opportunity"),
        centerTitle: true,
      ),
      body: Injector(
        inject: [
          Inject<CommonRepository>(() => CommonRepositoryImpl()),
          Inject<CommonState>(() => CommonState(IN.get<CommonRepository>())),
        ],
        builder: (_) {
          return _AddNewOpportunity();
        },
      ),
    );
  }
}

class _AddNewOpportunity extends StatelessWidget {
  _AddNewOpportunity({Key key}) : super(key: key);

  final _commonState = RM.get<CommonState>();

  // Form fields with default values
  final _titleRM = RM.create(TitleFormField(''));
  final _descriptionRM = RM.create(DescriptionFormField(''));
  final _categoryRM = RM.create(CategoryFormField(null));
  final _countryRM = RM.create(CountryFormField(null));
  final _deadlineRM = RM.create(DeadlineFormField(null));
  final _organizerRM = RM.create(OrganizerFormField(''));

  final _deadlineController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WhenRebuilderOr(
      observeMany: [
        () => _commonState
      ],
      initState: (_, __) async {
        await _commonState.setState((s) => s.getCategories());
        await _commonState.setState((s) => s.getCountries());
      },
      onWaiting: () => Container(child: Center(child: CircularProgressIndicator(),),),
      builder: (_, __) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 15,
            ),
            child: Column(
              children: [
                StateBuilder(
                  observe: () => _titleRM,
                  builder: (_, __) {
                    return TextFormField(
                      onChanged: (String title) {
                        _titleRM.setState(
                                (_) => TitleFormField(title)..validate(),
                            catchError: true
                        );
                      },
                      decoration: InputDecoration(
                        errorText: _titleRM.hasError ? _titleRM.error.message : null,
                        hintText: "Enter opportunity title",
                        labelText: "Title",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 10,),
                StateBuilder(
                  observe: () => _descriptionRM,
                  builder: (_, __) {
                    return TextFormField(
                      onChanged: (String description) {
                        _descriptionRM.setState(
                                (_) => DescriptionFormField(description)..validate(),
                            catchError: true
                        );
                      },
                      maxLines: 4,
                      decoration: InputDecoration(
                        errorText: _descriptionRM.hasError
                            ? _descriptionRM.error.message
                            : null,
                        hintText: "Description",
                        labelText: "Description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 10,),
                StateBuilder(
                  observe: () => _categoryRM,
                  builder: (_, __) {
                    return DropdownButtonFormField<Category>(
                      onChanged: (Category category) {
                        _categoryRM.setState(
                                (_) => CategoryFormField(category)..validate(),
                            catchError: true
                        );
                      },
                      decoration: InputDecoration(
                        errorText: _categoryRM.hasError
                            ? _categoryRM.error.message
                            : null,
                        hintText: "Select Category",
                        labelText: "Category",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      items: _commonState.state.categories.map((category)
                        => DropdownMenuItem(
                          value: category,
                          child: Text(category.name)
                        )
                      ).toList(),
                    );
                  },
                ),
                SizedBox(height: 10,),
                StateBuilder(
                  observe: () => _countryRM,
                  builder: (_, __) {
                    return DropdownButtonFormField<Country>(
                      onChanged: (Country category) {
                        _countryRM.setState(
                                (_) => CountryFormField(category)..validate(),
                            catchError: true
                        );
                      },
                      decoration: InputDecoration(
                        errorText: _countryRM.hasError
                            ? _countryRM.error.message
                            : null,
                        hintText: "Select Country",
                        labelText: "Country",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      items: _commonState.state.country.map((country)
                      => DropdownMenuItem(
                          value: country,
                          child: Text(country.name)
                      )
                      ).toList(),
                    );
                  },
                ),
                SizedBox(height: 10,),
                StateBuilder(
                  observe: () => _deadlineRM,
                  builder: (_, __) {
                    return TextFormField(
                      controller: _deadlineController,
                      onTap: () async {
                        DateTime _selectedDeadline = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(Duration(days: 600))
                        );
                        if (_selectedDeadline != null) {
                          _deadlineController.text =
                              DateFormat("yyyy-MM-dd").format(_selectedDeadline);
                          _deadlineRM.setState((_)
                            => DeadlineFormField(_selectedDeadline)..validate()
                          );
                        }
                      },
                      decoration: InputDecoration(
                        errorText: _deadlineRM.hasError ? _deadlineRM.error.message : null,
                        hintText: "Select deadline",
                        suffixIcon: Icon(Icons.event),
                        labelText: "Deadline",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 10,),
                StateBuilder(
                  observe: () => _organizerRM,
                  builder: (_, __) {
                    return TextFormField(
                      onChanged: (String organizer) {
                        _organizerRM.setState(
                                (_) => OrganizerFormField(organizer)..validate(),
                            catchError: true
                        );
                      },
                      decoration: InputDecoration(
                        errorText: _organizerRM.hasError ? _organizerRM.error.message : null,
                        hintText: "Enter organizer name",
                        labelText: "Organizer",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

