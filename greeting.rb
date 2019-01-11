def khan_family
  khan_family = [
    ["1: SARDAR MUHAMMAD SIDDIQUE KHAN", 
      ["1.1: Tariq Hussain", 
        ["1.1.1: Ubaid Tariq", "1.1.2: Junaid Tariq", "1.1.3: Uzzam Tariq", 
         "1.1.4: Aalyan Tariq"], 
      "1.2: Nargis Siddique", 
        ["1.2.1: Umer Arif", "1.2.2: Huma Arif", "1.2.3: Usman Arif"], 
      "1.3: Nagina Siddique", 
        ["1.3.1: Hassan Sheraz", "1.3.2: Hanan Sheraz"]
      ], 
    "2: SARDAR ANWAR HUSSAIN KHAN", 
      ["2.1: Amir Anwar", 
        ["2.1.1: Palwasha Amir", "2.1.2: Shazain Amir", "2.1.3: Zayan Amir"], 
      "2.2: Yasir Anwar", 
        ["2.2.1: Ammar Yasir", "2.2.2: Noria Yasir"],
      "2.3: Nasir Anwar",
        ["2.3.1: OnHold", 
          ["2.3.1.1: TooLate"]
        ]
      ]
    ]
  ]

khan_family.each do |khan_array|
  khan_array.each do |parent_element|
    if parent_element.class != Array
      puts "Parent #{parent_element}."
      else
        parent_element.each do |child_element|
          if child_element.class != Array
            puts "Child #{child_element}."
          else
            child_element.each do |grandchild_element|
             if grandchild_element.class != Array
                puts "GrandChild #{grandchild_element}."
              else
                grandchild_element.each do |grandgrandchild_element|
                  puts "GrandGrandChild: #{grandgrandchild_element}."
                end
              end
            end
          end
        end
      end
    end
  end
end
khan_family[0]












