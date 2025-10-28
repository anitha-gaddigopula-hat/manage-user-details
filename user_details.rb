class User
    
  attr_accessor :name, :age, :address, :phone_number, :dob 

  def create_user
        print "------ENTER USER DETAILS------\n"

        print "Enter Username: "
        @name=gets.chomp
        
        print "Enter Age: "
        @age=gets.chomp.to_i
        
        print "Enter Address: "
        @address=gets.chomp
        
        print "Enter Phone Number: "
        @phone_number=gets.chomp
       
        print "Enter Date Of Birth (DD/MM/YYYY): "
        @dob=gets.chomp
  end

  def display_user
        print "\n-------USER DETAILS------\n"
        puts "Username                   : #{@name}"
        puts "Age                        : #{@age}"
        puts "Address                    : #{@address}"
        puts "Phone Number               : #{@phone_number}"
        puts "Date Of Birth (DD/MM/YYYY) : #{@dob}"
  end
end

# Creating object and calling methods
user=User.new
user.create_user
user.display_user