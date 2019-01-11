# employee_1 = ["Nick", "Cage", 70000, true]
# employee_2 = ["Julia", "Andrews", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{ employee_2[0] } #{ employee_2[1] } makes #{ employee_2[2] } a year."

# employee_1 = {:first_name => "Nick", :last_name => "Cage", :salary => 70000, :active => true}     #Ruby
# employee_2 = {first_name: "Julia", last_name: "Andrews", salary: 80000, active: true}             #Javascript

# puts "#{ employee_1[:first_name] } #{ employee_1[:last_name] } makes #{ employee_1[:salary] } a year."
# puts "#{ employee_2[:first_name] } #{ employee_2[:last_name] } makes #{ employee_2[:salary] } a year."


#an object is a combination of attributes and behaviours (logical process --> will use methods to contain)


class Employee   #UpperCamelcase, first letter of every word is capitalized.  #The blueprint we will use to create objects is the class
  attr_reader :first_name, :last_name, :active   #meta method, creates reader methods that we wrote below (this mainly works with reader methods, not all types of methods; must type these in as symbols)
  attr_writer :active 
  def initialize(input_options) #parameters = argument = argument variables; can be used inside this method, but cannot be used outside this method    #sets up your instance variables #it runs one time when you create an object. # The initialize method always runs first. 
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
      puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year."
  end

  def give_annual_raise
    @salary *= 1.05       #splat equals
  end

  # def first_name       #referred to as reader methods; the method is the same name as the instance variable
  #   @first_name
  # end

  # def last_name
  #   @last_name
  # end

  # def active    #have to have different naming conventions for the reader and the writer methods
  #   @active
  # end

  # def active=(new_active_status)
  #   @active = new_active_status
  # end

end

# employee_1 = Employee.new(first_name: "Nick",
#                            last_name: "Cage",
#                             salary: 70000,
#                              active: true)   #it knows if you are putting in key-value pairs, to start treating it as a hash.(it sees the colon and the space and knows you are putting in key-value pairs)      #JS notation, you must always call it as a symbol if you define it as a symbol (as we did here))
# employee_2 = Employee.new("Julia",
#                          "Andrews",
#                           salary: 80000,
#                           active: true)

# employee_1.print_info


# employee_1.print_info
# employee_2.print_info
# employee_2.give_annual_raise
# p employee_2.last_name           #runner/reader code (to test your code)

# p employee_2.active
# employee_2.active = false
# p employee_2.active





# print inside the method or outside the method, but not both. 


#initialize runs when you run Employee.new






class Manager < Employee   #UpperCamelcase, first letter of every word is capitalized.  #The blueprint we will use to create objects is the class
  def initialize(input_options)
    super(input_options)    #super looks for the previous one for that same method, to draw the information (the same name method) from the super class. If you define no parenthesis, it will assume the previous super class. 
    @employees = input_options[:employees]
  end


  def send_report
    puts "Sending report..."
    #code to send report
    puts "email sent."
  end
end


  employee_1 = Employee.new(
                            first_name: "Nick",
                            last_name: "Cage",
                            salary: 70000,
                            active: true)   #it knows if you are putting in key-value pairs, to start treating it as a hash.(it sees the colon and the space and knows you are putting in key-value pairs)      #JS notation, you must always call it as a symbol if you define it as a symbol (as we did here))
  employee_2 = Employee.new(
                            first_name: "Julia",
                            last_name: "Andrews",
                            salary: 80000,
                            active: true)



  manager = Manager.new(
                          first_name: "Grace",
                          last_name: "Hopper",
                          salary: 100000,
                          active: true,
                          employees: [employee_1, employee_2]
                          )

p manager
 