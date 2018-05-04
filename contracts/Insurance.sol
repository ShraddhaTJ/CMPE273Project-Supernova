pragma solidity ^0.4.18;

contract Insurance{
    //state variables
    struct User{
        string email;
        string password;
        address user_address;
        string fname;
        string lname;
        unit active;
    }

    struct Policy{
        uint policy_number;
        string benefactor_email;
        address user;
        policy_status flag;
    }

    struct Pay{
        uint payment_id;
        uint policy_number;
        uint amount;
    }

    struct Claim{
        uint claim_id;
        uint policy_number;
        uint amount;
    }

    enum policy_status {ACTIVE, EXPIRED, CLAIMED}
    
    mapping(address => User) public users_list;
    mapping(address => Policy[]) public user_policies;

    
    function register(string fname, string lname, string email, string password) public {
        if(users_list[msg.sender].active == 1){
            return;
        }
        users_list[msg.sender] = User(email, password, msg.sender, 1, fname, lname);
    }


    function take_insurance(string b_email) public 
    {
        pol = Policy(policy_number, benefactor_email, msg.sender, policy_status.ACTIVE);
        if(user_policies[msg.sender].length == 0){
            Policy[] p;
            p.push(pol)
            user_policies[mg.sender] = p;
        }
        else{
            user_policies[msg.sender].push(p)
        }
    }

    function get_policy_status() public {
        //send the policies of the user and their status
    }


    function pay_premium(uint policy_number, uint amount) public {
        //check for the policies under the user name and update the premium and policies
    }

    function claim_money() public {
        //deduce the balance and update the Policy
    }

    function close_policy() public {
        //close policy on user request
    }

    function renew_policy() public {

    }
}
