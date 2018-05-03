pragma solidity ^0.4.18;

contract Insurance{
    //state variables
    struct User{
        string email;
        string password;
        string policy_number;
        address user_address;
        string fname;
        string lname;
    }

    struct Policy{
        uint policy_number;
        address provider;
        string benefactor_fname;
        string benefactor_lname;
        uint claimed_amount;
        uint unclaimed_balance;
        uint premium;
        uint last_paid_date;
        uint expiry_date;
        uint last_claimed_data;
        uint last_claimed_amount;
        uint next_due;
        uint active_flag;
        uint start_date;
    }

}
