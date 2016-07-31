Account.delete_all
Balance.delete_all
AccountType.delete_all
Entry.delete_all
Category.delete_all

checking = AccountType.create(name: 'Checking')
credit_card = AccountType.create(name: 'Credit Card')
checking_account = Account.create({ name: 'ABC Financial', account_type: checking })
credit_card_account = Account.create({ name: 'XYZ Credit Services', account_type: credit_card })
Balance.create([{ account: checking_account, balance: 500, state: 'Active' },
                { account: credit_card_account, balance: 250, state: 'Active' }])
rent = Category.create(name: 'Rent')
income = Category.create(name: 'Income')
food = Category.create(name: 'Food and Drink')
debit = TransactionType.create(name: 'Debit')
credit = TransactionType.create(name: 'Credit')
Entry.create(name: 'Starbucks',
                          amount: 3.75,
                          account: credit_card_account,
                          category: food,
                          transaction_type: debit)
Entry.create(name: 'Apartment 123',
                          amount: 800.00,
                          account: checking_account,
                          category: rent,
                          transaction_type: debit)
Entry.create(name: 'Company 123',
                          amount: 600.00,
                          account: checking_account,
                          category: income,
                          transaction_type: credit)
