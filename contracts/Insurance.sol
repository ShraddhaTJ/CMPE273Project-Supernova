pragma solidity ^0.4.18;

contract Insurance{
    //state variables
    struct User{
        string email;
        string password;
        address user_address;
        string fname;
        string lname;
    }

    struct Policy{
        uint policy_number;
        string benefactor_fname;
        string benefactor_lname;
        uint balance;
        uint premium;
        unit paid;
        address user;
        uint expiry_date;
        policy_status flag;
        uint start_date;
        uint payment_due_amount;
        uint next_due_date;
    }

    struct Pay{
        uint payment_id;
        uint payment_date;
        uint policy_number;
        uint amount;
    }

    struct Claim{
        uint claim_id;
        uint policy_number; 
        uint last_claimed_date;
        uint last_claimed_amount;
    }

    enum policy_status {ACTIVE, EXPIRED, CLOSED}
    
    mapping(address => User) public users_list;
    mapping(User => Policy[]) public user_policies;


    event payPremium(
        uint policy_number;
        uint premium_amount;
        uint date;
    );
    
    function register(string fname, string lname, string email, string password) public {

    }

}
