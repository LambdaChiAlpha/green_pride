# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Offices
offices = [
  # High Zeta
  { title: "High Pi",      is_executive_committee_member: true,  held_by_alumni: true },
  { title: "High Alpha",   is_executive_committee_member: true,  held_by_alumni: false },
  { title: "High Beta",    is_executive_committee_member: true,  held_by_alumni: false },
  { title: "High Theta",   is_executive_committee_member: false, held_by_alumni: false },
  { title: "High Gamma",   is_executive_committee_member: false, held_by_alumni: false },
  { title: "High Tau",     is_executive_committee_member: true,  held_by_alumni: false },
  { title: "High Iota",    is_executive_committee_member: false, held_by_alumni: false },
  { title: "High Rho",     is_executive_committee_member: false, held_by_alumni: false },
  { title: "High Kappa",   is_executive_committee_member: false, held_by_alumni: false },
  { title: "High Delta",   is_executive_committee_member: false, held_by_alumni: false },
  { title: "High Phi",     is_executive_committee_member: false, held_by_alumni: false },
  { title: "High Sigma",   is_executive_committee_member: false, held_by_alumni: false },
  { title: "High Epsilon", is_executive_committee_member: false, held_by_alumni: false },

  # Elected Administrative Assistants
  { title: "House Manager",                  is_executive_committee_member: false, held_by_alumni: false },
  { title: "First EC At-Large",              is_executive_committee_member: true,  held_by_alumni: false },
  { title: "Second EC At-Large",             is_executive_committee_member: true,  held_by_alumni: false },
  { title: "EC Alternate",                   is_executive_committee_member: true,  held_by_alumni: false },
  { title: "Chapter Excellence",             is_executive_committee_member: false, held_by_alumni: false },
  { title: "Assistant Tau",                  is_executive_committee_member: false, held_by_alumni: false },
  { title: "First Steward",                  is_executive_committee_member: false, held_by_alumni: false },
  { title: "Second Steward",                 is_executive_committee_member: false, held_by_alumni: false },
  { title: "House Duty Manager",             is_executive_committee_member: false, held_by_alumni: false },
  { title: "Senior IFC Delegate",            is_executive_committee_member: false, held_by_alumni: false },
  { title: "Junior IFC Delegate",            is_executive_committee_member: false, held_by_alumni: false },
  { title: "SGA Representative",             is_executive_committee_member: false, held_by_alumni: false },
  { title: "First Athletic Director",        is_executive_committee_member: false, held_by_alumni: false },
  { title: "Second Athletic Director",       is_executive_committee_member: false, held_by_alumni: false },
  { title: "First Greek Games Co-Chairman",  is_executive_committee_member: false, held_by_alumni: false },
  { title: "Second Greek Games Co-Chairman", is_executive_committee_member: false, held_by_alumni: false },

  # Appointed Administrative Assistants
  { title: "Webmaster",               is_executive_committee_member: false, held_by_alumni: false },
  { title: "Assistant Delta",         is_executive_committee_member: false, held_by_alumni: false },
  { title: "Historian",               is_executive_committee_member: false, held_by_alumni: false },
  { title: "Assistant House Manager", is_executive_committee_member: false, held_by_alumni: false }
]

offices.each {|office| Office.create(office) }
