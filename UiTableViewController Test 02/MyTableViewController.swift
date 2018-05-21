
import UIKit

class MyTableViewController: UITableViewController {
    
    var foodStoreNames = ["늘해랑", "번개반점", "아딸", "왕짜장", "토마토 도시락", "홍콩반점"]
    var foodStoreThumbnail = ["01", "02", "03", "04", "05", "06"]
    var foodStoreAddress = ["부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 418-282" ]
    var foodStoreTel = ["051-852-9969","051-852-9969","051-852-9969","051-852-9969","051-852-9969","051-852-9969"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "배달의 DIT"
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodStoreNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath) as! FoodStoreTableViewCell

        // Configure the cell...
        
       cell.foodStoreCellName.text = foodStoreNames[indexPath.row]
        cell.foodStoreCellImage.image = UIImage(named: foodStoreThumbnail[indexPath.row])
        cell.foodStoreCellAddress.text = foodStoreAddress[indexPath.row]
        cell.foodStoreCellTel.text = foodStoreTel[indexPath.row]
        
        return cell
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
