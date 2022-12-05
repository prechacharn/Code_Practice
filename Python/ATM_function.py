class ATM:
    def __init__(self, name, passcode, balance):
        self.name = name
        self.passcode = passcode
        self.balance = balance 
    
    def __str__(self):
        return "ATM Application"
    
    # ATM method
    def deposit(self, num):
        """how much do you wnat to deposit"""
        x = 0
        while x < 3:
            passcode = int(input(f"Please insert your Passcode: "))
            if passcode == self.passcode:
                print(f"Hi! {self.name} welcome to deposit services")
                self.balance += num
                print (f"{num} is deposited to your account")
                print (f"Credit Balance = {self.balance}")
                break
            else :
                print("Please try again!")
                x += 1

    def withdraw(self, num):
        """how much do you wnat to withdraw"""
        x = 0
        while x < 3:
            passcode = int(input(f"Please insert your Passcode: "))
            if passcode == self.passcode:
                self.balance -= num
                print(f"Hi! {self.name} welcome to withdraw services")
                print (f"you withdraw {num} Bath")
                print (f"Credit Balance = {self.balance}")
                break
            else :
                print("Please try again!")
                x += 1

    def check_balance(self):
        """Check Balance"""
        x = 0
        while x < 3:
            passcode = int(input(f"Please insert your Passcode: "))
            if passcode == self.passcode:
                print(f"Hi! {self.name} welcome to checkin-balance services")
                print(f"Credit Balance = {self.balance}")
                break
            else :
                print("Please try again!")
                x += 1
    
    def get_otp(self):
        """OPT requirement service"""
        opt = 838430
        x = 0
        while x < 3:
            passcode = int(input(f"Please insert your Passcode: "))
            if passcode == self.passcode:
                print(f"The OTP for {self.name} is {opt}")
                break
            else :
                print("Please try again!")
                x += 1

    def transfer(self):
        """transfer money"""
        x = 0
        recieved_account = input("Reciever card no: ")
        amount = int(input("Trasnsfer amount: "))

        while x < 3:
            passcode = int(input(f"Please insert your Passcode: "))
            if passcode == self.passcode:
                if self.balance >= 0:
                    print(f"Balance = {self.balance - amount}")
                    self.balance -= amount
                    print(f"""##successful transfering
                    to card no.: {recieved_account}
                    Transfer Amount: {amount}
                    """)
                break
            else :
                print("Please try again!")
                x += 1
# insert data
customer_1 = ATM("Tae", 9999, 10000)
customer_2 = ATM("Toy", 1423, 100000)
customer_3 = ATM("Aun", 3525, 30000)
customer_4 = ATM("Bow", 1362, 123000)
customer_5 = ATM("Meaw", 9374, 50000)

## test_deposit
customer_1.deposit(1000)

#withdraw
customer_3.withdraw(500)

print(type(customer1.passcode))

#check_balance
customer_4.check_balance()

#request_otp
customer_1.get_otp()

#transfer_money
customer_1.transfer()
