# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#################### ALL TIPS ####################

############# TIPS FOR BIGCHALLENGES #############
t1  = Tip.create(   
                    title: 'Clean or replace the filter on your air conditioner', 
                    description: 'Clean or replace your A/C filter regularly (about once a month). A high quality filter can last up to three months.', 
                    type_id: 'Miscellaneous Tips'
                )
t2  = Tip.create(   
                    title: 'Switch to LED lights', 
                    description: 'LED bulbs last three times as long as CFL bulbs, and use a fraction of the energy.', 
                    type_id: 'Lighting'
                )
t3  = Tip.create(   
                    title: 'Smart thermostats can help you save', 
                    description: 'Consider purchasing and installing a smart thermostat. Average savings could add up to 3% of your total energy costs.', 
                    type_id: 'Cooling'
                )
t4  = Tip.create(   
                    title: 'Reduce energy costs of your humidistat', 
                    description: 'Set your humidistat to 58% to help control the humidity in your home.', 
                    type_id: 'Cooling'
                )
t5  = Tip.create(   
                    title: 'Shave a minute off your shower time', 
                    description: 'The average shower takes about 8 minutes. Reduce your shower time by 1 minute to decrease your water use by 13%. This will reduce the energy used and your water heating cost.', 
                    type_id: 'Water Heating'
                )
t6  = Tip.create(   
                    title: 'Adjust your fridge temperature settings', 
                    description: 'An ideal fridge temperature is 33° F to 39° F.', 
                    type_id: 'Refrigeration'
                )
t7  = Tip.create(   
                    title: 'Weatherize your home', 
                    description: 'If you feel a draft, caulk around windows and weatherstrip around doors. You can also add door sweeps to the bottom of exterior doors.', 
                    type_id: 'Cooling'
                )
t8  = Tip.create(   
                    title: 'Install low-flow showerheads', 
                    description: 'You can save 25 to 60% more water per showerhead, and use less water heater energy.', 
                    type_id: 'Water Heating'
                )
t9  = Tip.create(   
                    title: 'Give slow cookers a try!', 
                    description: 'Slow cookers use less energy than a stovetop or oven when preparing foods that can take hours to cook.', 
                    type_id: 'Cooking'
                )

############## TIPS FOR CHALLENGES ##############
t10 = Tip.create(   
                    title: 'Improve your insulation', 
                    description: 'Repair or replace your insulation and weatherstripping. This can save you 20% or more on heating and cooling costs.', 
                    type_id: 'Cooling'
                )
t11 = Tip.create(   
                    title: 'Turn off your ceiling fan', 
                    description: 'Ceiling fans cool people, not rooms. Turn off the ceiling fan when you leave the room to save energy.', 
                    type_id: 'Cooling'
                )
t12 = Tip.create(   
                    title: 'Lower the temperature on your water heater to 120°F', 
                    description: 'Save from 3 to 5% on your water heating costs by reducing the temperature by 10° F.', 
                    type_id: 'Water Heating'
                )
t13 = Tip.create(   
                    title: 'Use oven lights to check on food', 
                    description: 'Turn on the oven light to look through the glass window instead of opening the oven door to check food.', 
                    type_id: 'Cooking'
                )
t14 = Tip.create(   
                    title: 'Consider task lighting', 
                    description: ' Why light an entire room? Light only what you need.', 
                    type_id: 'Lighting'
                )
t15 = Tip.create(   
                    title: 'Install a dimmer switch', 
                    description: 'Turning down the light level can save energy and extend the life of light bulbs. However, make sure your LED light bulbs are compatible with dimmer switches.', 
                    type_id: 'Lighting'
                )
t16 = Tip.create(   
                    title: 'Save for the holidays', 
                    description: 'Older holiday lights consume a huge amount of energy. Switch to LEDs and cut your holiday lighting costs by 75 to 80%.', 
                    type_id: 'Lighting'
                )
t17 = Tip.create(   
                    title: 'Turn off the lights!', 
                    description: 'Do not leave any lights on when not needed. For outdoors, install light detecting photocells to ensure lights are off during the day.', 
                    type_id: 'Lighting'
                )
t18 = Tip.create(   
                    title: 'Look for ENERGY STAR® when shopping for audio and video equipment', 
                    description: 'Equipment with the ENERGY STAR label is up to 50% more efficient than standard models.', 
                    type_id: 'Always On'
                )
t19 = Tip.create(   
                    title: 'Use a smart power strip to save electricity automatically!', 
                    description: 'Phantom energy drawn from plugged devices can inflate your bill. Replace older power strips with smart power strips to stop this.', 
                    type_id: 'Always On'
                )
t20 = Tip.create(   
                    title: 'Do not want to keep unplugging?', 
                    description: 'Use a smart plug! Smart plugs and switches can reduce energy loss when devices and appliances are not in use.', 
                    type_id: 'Always On'
                )
t21 = Tip.create(   
                    title: 'Take a weekend off!', 
                    description: 'If you have a home office, put your computer on sleep mode. Make sure other devices are turned off on the weekend and when you are on vacation.', 
                    type_id: 'Always On'
                )
t22 = Tip.create(   
                    title: 'Learn the power management features of your computer', 
                    description: 'Use sleep mode and other power management features on your computer to reduce your energy usage by up to 4%.', 
                    type_id: 'Miscellaneous Tips'
                )
t23 = Tip.create(   
                    title: 'Run a full load', 
                    description: 'Reduce the number of loads. The machine will use the same amount of energy, regardless of how full it is.', 
                    type_id: 'Laundry & Cleaning'
                )
t24 = Tip.create(   
                    title: 'Wash with cold water', 
                    description: 'Washing your clothes in cold water can reduce energy use by as much as 90% (and it is better for your clothes).', 
                    type_id: 'Laundry & Cleaning'
                )
t25 = Tip.create(   
                    title: 'Let your dishes air dry', 
                    description: 'Air-drying your dishes instead of using the dishwasher to heat-dry can save you up to 50% more energy.', 
                    type_id: 'Laundry & Cleaning'
                )
t26 = Tip.create(   
                    title: 'Make sure your fridge has a tight seal', 
                    description: 'If you do not have a tight seal all the way around the refrigerator door, it’s almost the same as leaving the door open. A simple way to verify a good seal is to close the door on a single sheet of paper then try to pull it out with the door still closed.', 
                    type_id: 'Refrigeration'
                )
t27 = Tip.create(   
                    title: 'Adjust your freezer temperature settings', 
                    description: 'An ideal freezer temperature is 0° F to 5° F.', 
                    type_id: 'Refrigeration'
                )
t28 = Tip.create(   
                    title: 'Keep your fridge full!', 
                    description: 'Full shelves help your refrigerator maintain a cold temperature better than empty shelves.', 
                    type_id: 'Refrigeration'
                )
t29 = Tip.create(   
                    title: 'Keep your food covered', 
                    description: 'Uncovered food releases moisture. This can force your refrigerator to work harder, using more energy.', 
                    type_id: 'Refrigeration'
                )
t30 = Tip.create(   
                    title: 'Find the magic number', 
                    description: 'For every degree lower you set your thermostat, you will save 5% on monthly heating costs. Set thermostat on "Auto" at 68° F or lower; when away or at bedtime, lower it to 65° F.', 
                    type_id: 'Miscellaneous Tips'
                )
t31 = Tip.create(   
                    title: 'Unblock your vents', 
                    description: 'Blocked air vents reduce airflow in your HVAC system. Clear vents of obstructions (like furniture) and keep them open to increase your HVAC system efficiency by up to 40%.', 
                    type_id: 'Miscellaneous Tips'
                )
t32 = Tip.create(   
                    title: 'Avoid the night sweats', 
                    description: 'Set your thermostat between 65 and 68° F before going to bed to reduce heating costs by up to 10%.', 
                    type_id: 'Miscellaneous Tips'
                )
t33 = Tip.create(   
                    title: 'Hang heavy curtains over your windows', 
                    description: 'Use lined curtains or drapes to keep the heat in and cold out, especially at night.', 
                    type_id: 'Miscellaneous Tips'
                )
t34 = Tip.create(   
                    title: 'Use the right burner', 
                    description: 'Use the right-sized burner for your pot while cooking to speed up your cooking and reduce energy loss by 40%.', 
                    type_id: 'Miscellaneous Tips'
                )
t35 = Tip.create(   
                    title: 'Consider replacing your old cookware', 
                    description: 'Flat-bottomed cookware allows for more contact with heating elements. A warped-bottom pot can take 50% more energy to boil the same amount of water!.', 
                    type_id: 'Miscellaneous Tips'
                )
t36 = Tip.create(
                    title: 'Tour',
                    description: 'Take a look to all pages in your personal Menu',
                    type_id: 'One Time'
)


#################### ALL CHALLENGES ####################

#################### BIG CHALLENGES ####################
Challenge.create(   
                    title: 'Energy for the world', 
                    description: 'Keep your energy consumption per month less than 1000 kwh.', 
                    points: 100, 
                    tips: [t1,t2,t3]
                )
Challenge.create(   
                    title: 'Get first', 
                    description: 'Stay in the top 5 positions of your network rank.', 
                    points: 100, 
                    tips: [t4,t5,t6]
                )
Challenge.create(   
                    title: 'Win $300', 
                    description: 'Reduce your total bill amount by $300 in a year ($25 each month).', 
                    points: 1200, 
                    tips: [t7,t8,t9]
                )

################## REGULAR CHALLENGES ##################
Challenge.create(   
                    title: 'Rock the Bulb', 
                    description: 'Reduce the bill in the month $5', 
                    points: 10, 
                    tips: [t10,t18,t26]
                )
Challenge.create(   
                    title: 'Energy Chicken', 
                    description: 'Up minimun two positions in your ranking network', 
                    points: 10, 
                    tips: [t13,t19,t27]
                )
Challenge.create(   
                    title: 'Opower Social Energy', 
                    description: 'Invite your friends to use this app to save the world', 
                    points: 10, 
                    tips: [t12,t20,t28]
                )
Challenge.create(   
                    title: 'Welcome to GreenLink', 
                    description: "You have earned 10 pts for activating your user account. These points generate a ranking in your network and identify your contribution to reduce electricity consumption. Congratulations!", 
                    points: 10, 
                    tips: [t36]
                )
Challenge.create(   
                    title: 'Sharing shake', 
                    description: 'This month only invite your friends to use this app and growth your network try to get more points from the Big Challenge.', 
                    points: 15, 
                    tips: [t14,t22,t30]
                )
Challenge.create(   
                    title: 'The history', 
                    description: 'If you see your dashboard you can see the history of consume of your energy change this an this month reduce your consume in 100Kwh', 
                    points: 50, 
                    tips: [t15,t23,t31]
                )
Challenge.create(   
                    title: 'You can do it', 
                    description: 'This month you can reduce the bill amount $20', 
                    points: 20, 
                    tips: [t16,t24,t32]
                )
Challenge.create(   
                    title: 'Less for less', 
                    description: 'Reduce your consume of energy (Kwh) in the month 20Kwh', 
                    points: 5, 
                    tips: [t17,t25,t33]
                )
