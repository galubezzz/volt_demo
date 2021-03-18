# README

```sh 
bundle
rake db:setup
rails s
```

- [all programs](http://localhost:3000/programs)
- [all with sport_id = 1](http://localhost:3000/programs?sport_id=1)
- [all programs with specified equipment with ids=[2,3,4]](http://localhost:3000/programs?equipment_ids[]=3&equipment_ids[]=2&equipment_ids[]=4)
- [all programs with specified equipment with ids=[2,3,4] filtered by sport with id=1](http://localhost:3000/programs?equipment_ids[]=3&equipment_ids[]=2&equipment_ids[]=4&sport_id=1)


