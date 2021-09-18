import UIKit

class ViewController: UIViewController {
    //ctrl키 누르고 storyboard에서 드래그 하면 연결 가능
    //여기서 직접 연결된 변수 이름을 바꾸면안됨. 스토리보드와 연결되지 않기 때문.
    //스토리보드에서 연결을 끊고 다시 동일하게 불러와야함.
    @IBOutlet weak var myLabel: UILabel!
    
    var countDown = 100;
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //동일하게 ctrl키 누르고 storyboard에서 드래그 할 때 action으로 고르면 가능
    @IBAction func onButtonClick(_ sender: Any) {
        /*view.backgroundColor = .green; //배경의 색을 초록색으로 바꾼다.
        myLabel.text = "To be or not to be";//텍스트의 내용을 바꾼다.
        myLabel.textColor = .white;//텍스트의 색을 초록색으로 바꾼다.*/
        countDown -= 5;
        myLabel.text = String(countDown);
        
        if countDown <= 10
        {
            myLabel.textColor = .red; //Swift는 = 양 옆으로 스페이스가 있어야 함
        } else if countDown <= 50{
            myLabel.textColor = .green;
        }
    }

}

