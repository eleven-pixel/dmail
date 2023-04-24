// The 'dmail' program.
program dmail.aleo {

    struct Cid {
        slice1 :field,
        slice2 :field,
        slice3 :field,
        slice4 :field,
        slice5 :field,
        slice6 :field,
        slice7 :field,
        slice8 :field
    }
    
    record message {
        owner:address,
        gates:u64,
        from:address,

        cid:Cid,
        reply:Cid,
        time:field
    }

    transition send(to :address, cid: Cid,reply: Cid,time:field) -> message {
        return message {
            owner:to,
            gates:0u64,
            from:self.caller,

            cid:cid,
            reply:reply,
            time:time
        };
    }
    
    transition receive(msg :message) {

    }

}
