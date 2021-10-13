# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

precinct = Precinct.new(name: "East Elk Ridge Precinct 344", voter_tabulation_district: "Coal County", state_senate: "New York Senate", state_house: "New York House")
precinct.save!
election = Election.new(election_title: "Congressional 405 Special Election", state: "NY", city: "Mount Vernon", election_date: "2021-10-25", election_type: "local", supervisor_name: "Jimmy Bob", precinct: precinct)
election.save!
poll_worker = PollWorker.new(first_name: "David", last_name: "Spade",address_1: "564 Pollster Ave", address_2: "Apt 2F", city: "Mount Vernon", state: "NY", zip_code: "14404", job_title: "Big Poller", phone_number: "914-355-4444")
poll_worker.save!
precinct_pollster = PrecinctPollster.new(poll_worker: poll_worker, precinct: precinct)
precinct_pollster.save!
voter_1 = Voter.new(first_name: "John", last_name: "Snow", address_1: "544 New Berry", address_2: "Apt 42", city: "Mount Vernon", state: "NY", zip_code: "10550", phone_number: "914-444-4333", party_affiliation: "Democrat", provisional: false, last_4_digits_ssn: 4444)
voter_1.save!
voter_2 = Voter.new(first_name: "Colby", last_name: "Maciania", address_1: "New Port Ridge 444", address_2: "Suite 50", city: "Mount Vernon", state: "NY", zip_code: "10550", phone_number: "914-222-2222", party_affiliation: "Republican", provisional: false, last_4_digits_ssn: 4444)
voter_2.save!
election_candidate_1 = ElectionCandidate.new(first_name: "Joyce", last_name: "Reynolds", party: "Democrat", occupation: "Average Politician", address_1: "44 East Elderman Rd", address_2: "Apt 45", city: "Mount Vernon", state: "NY", zip_code: "10550", phone_number: "914-333-4534", gender: "female", election: election)
election_candidate_1.save!
election_candidate_2 = ElectionCandidate.new(first_name: "Gregory", last_name: "James", party: "Republican", occupation: "Average Politician", address_1: "55 Coco Dr", address_2: "Apt 33", city: "Mount Vernon", state: "NY", zip_code: "10550", phone_number: "914-333-4534", gender: "male", election: election)
election_candidate_2.save!
election_candidate_3 = ElectionCandidate.new(first_name: "Coleen", last_name: "Grace", party: "Independent", occupation: "Average Politician", address_1: "333 Navieent Dr", address_2: "Apt 20", city: "Mount Vernon", state: "NY", zip_code: "10550", phone_number: "914-333-4534", gender: "female", election: election)
election_candidate_3.save!
puts "Completed Database Transaction"
