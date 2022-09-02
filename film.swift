import Foundation

var dic = [["film":"Dreams","rating":2.9,"tags":["Biography"]],
           ["film":"Finding Nemo","rating":7,"tags":["Animation", "Adventure", "Comedy"]],
           ["film":"When a Stranger Calls","rating":2.3,"tags":["Horror"," Thriller"]],
           ["film":"Dreams","rating":2.1,"tags":["Biography", "Drama"]]]

func search2 (input : Double , input2 : Double){
    var c = 0
    var g =  dic.count
    while c < g {
        var value = 0.0
        if  let i = dic[c]["rating"]! as? Int
        {
            value = Double((dic[c]["rating"] as? Int)!)
        }else{
            value = (dic[c]["rating"] as? Double)!
        }
        if value >= input && value <= input2 {
            
            var nn = dic[c]
            print("""
            Film Name: \(nn["film"]!)
            Film Rating: \(nn["rating"]!)
            -----------------------
            """
            )}
        c += 1
    }
}
//End  Rating Search

//Start Tags Search
func search1 (input : String ){
    var c = 0
    var g =  dic.count
    print("Films that  has \(input) tag :")    
    while c < g {
        var i = dic[c]["tags"]! as! [String]
        
        for l in i {
            if l as? String == input as? String {
                var nn = dic[c]
                print("""
                film Name: \(nn["film"]!)
                ____________________________
                """
                )
            }}
        c += 1}
}
//End  Tags Search


// Films full info search func
func search(input : String) -> [String: Any] {
    
    var c = 0
    var g =  dic.count
    while c < g {
        var i = dic[c]["film"]!
        if i as? String == input  as? String {
            var nn = dic[c]
            return nn
        }
        c += 1}
    return ["key" :"value"]
}
// End of  Films full info search func


// Adding a new film
func Add(film:String ,rating:Double ,tags:[String]){
    var count = dic.count
    dic.append(["film":film , "rating":rating , "tags":tags])
    var countt = dic.count
    print("Number of movies befor adding :",count)
    if count < countt {
        print("Number of films:",countt)
        print("Film Added!")
    }}
// End of Adding Function


// Update a film
func Update(oldfilm:String , film:String , tags:[String] , rating: Double ) {
    
    var  dicc  = search(input: oldfilm)
    print(" Film Info before update :",dicc)
    dicc["tags"] = tags
    dicc["film"] = film
    dicc["rating"] = rating
    print("Film Info after update :",dicc)
    // print (dic)
}
// End of Update a film


// ----------to run this program funtion ------------------------------

// to add new film
// Add(film:"hello guys",rating:4.6,tags:["Biography","Drama"])

// to update film data
// Update(oldfilm:"Dreams" , film:"Truth" , tags:["Animation"] , rating: 1.1 )

// to search film by film name
// print("Full Data of Film :")
// var searsh = search(input: "Dreams")
// print("""
// Film Name: \(searsh["film"]!)
// Film tags: \(searsh["tags"]!)
// Film Rate: \(searsh["rating"]!)
// """
// )

// to search film by rate of film
// print("Films within your rate:")
// search2(input:2.1, input2:2.5)

// to search fil by tag of film
// search1(input:"Biography")
