# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

two_doors_csv = CSV.readlines("db/sizedata/two_door.csv")
two_doors_csv.shift
two_doors_csv.each do |info|
    TwoDoor.create(:standard => info[1],:g_width => info [2],:g_height => info [3],:standard_w => info [4],:standard_h => info [5])
end

sliding_doors_csv = CSV.readlines("db/sizedata/sliding_door.csv")
sliding_doors_csv.shift
sliding_doors_csv.each do |info|
    SlidingDoor.create(:standard => info[1],:g_width => info [2],:g_height => info [3],:standard_w => info [4],:standard_h => info [5])
end

doors_csv = CSV.readlines("db/sizedata/door.csv")
doors_csv.shift
doors_csv.each do |info|
    Door.create(:standard => info[1],:g_width => info [2],:g_height => info [3],:standard_w => info [4],:standard_h => info [5])
end

high_windows_csv = CSV.readlines("db/sizedata/high_window.csv")
high_windows_csv.shift
high_windows_csv.each do |info|
    HighWindow.create(:standard => info[1],:g_width => info [2],:g_height => info [3],:standard_w => info [4],:standard_h => info [5])
end