if Event.count.zero?
  Event.create!([
    { title: "Karaoke Night", venue: "Your Venue Name, City", starts_at: 2.weeks.from_now.change(hour: 20), ends_at: 2.weeks.from_now.change(hour: 23, min: 30) },
    { title: "DJ Dance Party", venue: "Your Venue Name, City", starts_at: 3.weeks.from_now.change(hour: 21), ends_at: 3.weeks.from_now.change(hour: 25 - 24, min: 0) + 1.day }
  ])
end
