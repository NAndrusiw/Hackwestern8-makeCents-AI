import "commonReactions/all.dsl";

context 
{
    // declare input variables here. phone must always be declared. name is optional 
    input phone: string;

    // declare storage variables here 
    var1: string = "";

}

// declare external functions here 
external function function1(log: string): string;

// lines 28-42 start node 
start node root 
{
    do //actions executed in this node 
    {
        #connectSafe($phone); // connecting to the phone number which is specified in index.js that it can also be in-terminal text chat
        #waitForSpeech(5000); // give the person a second to start speaking 
        #say("greeting"); // and greet them. Refer to phrasemap.json > "greeting" (line 12); note the variable $name for phrasemap use
        wait *;
    }
    transitions // specifies to which nodes the conversation goes from here 
    {
        yes: goto yes on #messageHasIntent("yes"); // feel free to modify your own intents for "yes" and "no" in data.json
        no: goto no on #messageHasIntent("no");
    }
}

node yes
{
    do 
    {
        //var result = external function1("test");    //function call
        #sayText("Ok great! What can I help make-cents for you today?"); 
        wait *;
    }
    transitions{
         
    }
}

node no
{
    do 
    {
        #sayText("Ok, thanks for using makeCents. Goodbye");
        exit;
    }
}

node continue
{
    do
    {
        #say("continue");
        wait *;
    }
}

digression investment
{
    conditions {
        on #messageHasIntent("investment");
    }
    do{
        #say("investmentDef");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
    
}

digression asset
{
    conditions {
        on #messageHasIntent("asset");
    }
    do
    {
        #say("assetDef");
        wait *;
    }
       transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}

digression compound_interest
{
    conditions{
        on #messageHasIntent("compound_interest");
    }
    do
    {
        #say("compound_interest");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}

digression penny_stocks
{
    conditions{
        on #messageHasIntent("penny_stocks");
    }
    do
    {
        #say("penny_stocks");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}

digression stock_option
{
    conditions{
        on #messageHasIntent("stock_option");
    }
    do
    {
        #say("stock_option");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}
        
digression blockchain
{
    conditions{
        on #messageHasIntent("blockchain");
    }
    do
    {
        #say("blockchain");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}
        
digression dividends
{
    conditions{
        on #messageHasIntent("dividends");
    }
    do
    {
        #say("dividends");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}
        
digression W9form
{
    conditions{
        on #messageHasIntent("W9form");
    }
    do
    {
        #say("W9form");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}
        
digression bonds
{
    conditions{
        on #messageHasIntent("bonds");
    }
    do
    {
        #say("bonds");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}
        
digression down_payment
{
    conditions{
        on #messageHasIntent("down_payment");
    }
    do
    {
        #say("down_payment");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}
        
digression equity
{
    conditions{
        on #messageHasIntent("equity");
    }
    do
    {
        #say("equity");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}
        
digression escrow
{
    conditions{
        on #messageHasIntent("escrow");
    }
    do
    {
        #say("escrow");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}
        
digression return_on_investment
{
    conditions{
        on #messageHasIntent("return_on_investment");
    }
    do
    {
        #say("return_on_investment");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}
        
digression top_down_investing
{
    conditions{
        on #messageHasIntent("top_down_investing");
    }
    do
    {
        #say("top_down_investing");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}
        
digression unsubsidized_loan
{
    conditions{
        on #messageHasIntent("unsubsidized_loan");
    }
    do
    {
        #say("unsubsidized_loan");
        wait *;
    }
    transitions {
        continue: goto continue on #messageHasIntent("yes");
        no: goto no on #messageHasIntent("no");
    }
}

        
// digression goodbye
// {
//     conditions {on #messageHasIntent("bye");}
//     do 
//     {
//         #sayText("I'm well, thank you!", repeatMode: "ignore"); 
//         #repeat(); // let the app know to repeat the phrase in the node from which the digression was called, when go back to the node 
//         return; // go back to the node from which we got distracted into the digression 
//     }
// }
