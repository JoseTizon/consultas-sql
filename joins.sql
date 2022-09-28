select clients.id, clients.first_name, clients.last_name, clients.email, accounts.account_no, accounts.balance 
from clients
join accounts ON accounts.id = clients.id;

select accounts.account_no, account_types.id, account_types.name
from accounts
inner join account_types on account_types.id = accounts."type"

select transactions.id, transactions.amount, transactions_types."name"
from transactions
inner join transactions_types on transactions_types.id = transactions.id

select transactions.id, transactions.amount, transactions_types."name"
from transactions
join transactions_types on transactions_types.id = transactions.id

create view v_clients_accounts as select clients.id, clients.first_name, clients.last_name, clients.email, accounts.account_no, accounts.balance 
from clients
join accounts ON accounts.id = clients.id;

create view v_accounts_types as select accounts.account_no, account_types.id, account_types.name
from accounts
inner join account_types on account_types.id = accounts."type"

create view v_transactions_detail as select transactions.id, transactions.amount, transactions_types."name"
from transactions
inner join transactions_types on transactions_types.id = transactions.id

create view v_transations_types_detail as select transactions.id, transactions.amount, transactions_types."name"
from transactions
join transactions_types on transactions_types.id = transactions.id