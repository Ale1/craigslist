

["pets","vehicles","housing"].each { |cat| Section.create(:name => cat) }

10.times do 
Post.create(:section_id => [1,2,3].sample, :title=> Faker::Address.city, :desc => Faker::Address.street_name, :secret => "not very secret")
end


