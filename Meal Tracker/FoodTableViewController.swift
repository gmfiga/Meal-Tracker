//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Administrator on 6/26/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit


class FoodTableViewController: UITableViewController {
    
    
    var meals: [Meal] = []
    
    var breakefast: [Food] = []
    var lunch: [Food] = []
    var dinner: [Food] = []
    
    var pancake: Food =  Food(name: "Pancakes", description: "Fluffy pancakes")
    var sausage: Food = Food(name: "Sausages", description: "Crunchy beef sausages")
    var egg: Food = Food(name:"Eggs", description: "Scrambled Eggs")
    var potatos: Food = Food(name: "Mashed Potatos", description: "Warm mashed potatos")
    var steak: Food = Food(name: "Sirloin", description: "Medium cooked sirloin steak")
    var veggies: Food = Food(name: "Broccoli", description: "Steam coocked broccoli")
    var cereal: Food = Food(name: "OatMeal", description: "A full bowl of oatmeal")
    var fruits: Food = Food(name: "Strawberries", description: "Frozen strawberries")
    var milk: Food = Food(name: "Milk", description: "A cup of fat free milk")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        breakefast.append(pancake)
        breakefast.append(sausage)
        breakefast.append(egg)
        
        lunch.append(potatos)
        lunch.append(steak)
        lunch.append(veggies)
        
        dinner.append(cereal)
        dinner.append(fruits)
        dinner.append(milk)
        
        meals = [
            Meal(name:"Breakefast", food: breakefast),
            Meal(name:"Lunch", food: lunch),
            Meal(name:"Dinner", food: dinner)
        ]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        
        
        cell.textLabel?.text = "\(meals[indexPath.section].food[indexPath.row].name)"
        cell.detailTextLabel?.text = meals[indexPath.section].food[indexPath.row].description
        cell.showsReorderControl = true
      
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
