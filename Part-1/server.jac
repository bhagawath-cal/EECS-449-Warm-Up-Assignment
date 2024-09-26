walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker additional_1  {
    has name: str;
    has last_name: str;
    has num: int;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + " " + self.last_name + " who is " + str(self.num) + " years old!"
        };
    }
}

walker additional_2  {
    has num_1: float;
    has num_2: float;

    can return_message with `root entry {
        report {
            "response": self.num_1 * self.num_2 
        };
    }
}