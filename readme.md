Migrations specifically change the schema i.e. what information we want it to hold

Database versions - migrating to new versions. History of all changes in the schema

DISCUSS - Inheritance

Sqlite3 automatically creates the db on migration so no need to do it this time but in rails, you’ll need to do this



Step 1 - add the model in ruby
Step 2 - create and run migration
Step 3 - verify schema


Create the model

```ruby
class model < ActiveRecord::Base
    def intiliaze(name, type)
    end
end
```

DISCUSS - No instance variables or attributes anymore. All done through schema.

```shell 
  rake db:create_migration NAME=create_model_table
```

```ruby
def change
  create_table :models do |t|
    t.string :name
    t.string :type
  end
end
```

```shell
rake db:migrate
```

Never change the schema manually.
Always look at the schema for information on problems for debugging

Run rake console - talk about Pry

Run model - check if it works Do ‘ Model.new ‘

Then do model new with args but don’t use symbols, then use symbols.
Then show them that it hasn’t saved. Then show save! And save

Show, all, find, update, create, find_by

Class.delete(1) and call delete on the instance, destroy is more rails.. get used to it

Rake db:create_migration NAME=add_functions_to_model_name

add_column, :model_name, :function_name, :string

Make mistake

Rake db:rollback STEP=n
Or rake db:rollback

Model methods

Ones that change something for an instance… no save and ones that permanently change the record in the db

If you see something that say def up and def down, they are the same as def change.

Cannot reuse id’s. Once it’s gone, it’s gone

find_by takes a string or a hash.

Where is a new one, and is really useful for collecting instances together. Use this for filtering.

Talk about seed

Reiterate steps.