package # hide from PAUSE
	LoadTest::Result::JustATable;

use base qw(DBIx::Class::Core);

__PACKAGE__->table('just_a_table');

__PACKAGE__->add_columns(
  id => { data_type => 'integer', is_auto_increment => 1 },
  name => { data_type => 'varchar', size => 255 }
);

__PACKAGE__->set_primary_key('id');

__PACKAGE__->has_many(
  'bars',
  'LoadTest::Result::Bar',
  { 'foreign.b' => 'self.id' }
);


1;
