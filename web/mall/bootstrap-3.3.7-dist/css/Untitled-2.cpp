#include <iostream.h>
#include <string.h>
//***********************************************************************************
void initial_room(); //初始化80个房间信息
void welcome();      //验证用户登陆,登陆成功显示欢迎信息
void enter();
void book_room();
void check_in();
void check_out();
void inquire();
int i = 0;
//***********************************************************************************
struct Room //客房结构体
{
    int number;
    int dank; //住房等级
    int price;
    int state;
};

class Customer
{
  public:
    Customer();

    void set_name(char *n) { strcpy(name, n); }
    void set_ID(char *p) { strcpy(ID, p); }
    void set_room_number(int n) { room_number = n; }
    void set_day(int d) { day = d; }
    void set_prepaid(int p) { prepaid = p; }
    char *get_name() { return name; }
    char *get_ID() { return ID; }
    int get_room_number() { return room_number; }
    int get_day() { return day; }
    int get_prepaid() { return prepaid; }

    virtual ~Customer();

  private:
    char name[10], ID[19];
    int room_number;
    int prepaid;
    int change;
    int day;
};
Customer::Customer()
{
    cout << "请您输入顾客的姓名\n";
    cin >> name;
    cout << "请您输入顾客的身份证号码\n";
    cin >> ID;
    prepaid = change = day = 0;
}
Customer::~Customer()
{
    cout << "该顾客退房成功!" << endl;
}
//***********************************************************************************
Room room[80];          //初始化80个房间
Customer *customer[80]; //80个指向customer的指针

void main() //程序入口从这里开始运行
{
    char choice = '1';
    initial_room(); //初始化80个房间的信息,分四个等级
    welcome();      //验证用户登陆,登陆成功显示欢迎信息

    while (choice == '1')
    {
        enter(); //根据用户的选择执行不同的功能
        cout << endl;
        cout << "继续使用本系统请按\"1\",退出请按\"2\"! ";
        cin >> choice;
        cout << endl;
    }
}
//系统登陆界面***********************************************************************
void welcome() //验证用户登陆,登陆成功显示欢迎信息
{
    char name[4], code[7];
    cout << "请输入用户名和密码(以空格隔开):\n";
    cin >> name >> code;
    while ((strcmp(name, "000") != 0) || (strcmp(code, "666666") != 0))
    {
        cout << "用户名或密码输入有误,请重新输入!\n";
        cin >> name >> code;
    }
    cout << endl;
    cout << endl;
    cout << " ▲***************************▲\n";
    cout << " △  欢迎使用酒店客房管理系统 △\n";
    cout << " ▲***************************▲\n";
    cout << endl;
}
//系统入口***************************************************************************
void enter()
{
    int kind_of_service;
    cout << "请选择服务类别:订房、入住、退房还是查询? \n";
    cout << " 1->订房 2->入住 3->退房 4->查询: ";
    cin >> kind_of_service;
    if ((kind_of_service > 4) || (kind_of_service < 1))
    {
        cout << "您的输入有误，请重试!\n";
        cin >> kind_of_service;
    }
    else
        switch (kind_of_service)
        {
        case 1:
            book_room(); //订房
            break;
        case 2:
            check_in(); //入住
            break;
        case 3:
            check_out(); //退房
            break;
        case 4:
            inquire(); //查询
            break;
        }
}

//订房实现***************************************************************************
void book_room()
{
    customer[i] = new Customer;
    int room_standard, day;
    cout << "请您选择预定房间的标准:\n";
    cout << "1.单人间/天150元\n 2.双人间/天200元\n 3.标准间/天300元\n 4.总统套房/天600元\n";
    cin >> room_standard;
    cout << "请输入预定天数\n";
    cin >> day;
    customer[i]->set_day(day); //设定住宿的天数
    switch (room_standard)
    {
        int n;
    case 1:
        cout << "住房费用总共为: " << day * 150 << "元\n"; //计算单人间住房费用
        for (n = 0; n < 20; n++)                           //从第一个级别的房间中查找一个空闲的房间
        {
            if (room[n].state == 0) //state=0表示该住房没有被预定的
            {
                cout << "预定成功★房间号码为: " << room[n].number << endl;
                room[n].state = 1;
                customer[i]->set_room_number(room[n].number); //？？
                break;
            }
        }
        break;
    case 2: //标准2的房间预订
        cout << "住房费用总共为: " << day * 200 << " 元\n";
        for (n = 20; n < 40; n++)
        {
            if (room[n].state == 0)
            {
                cout << "预定成功★房间号码为: " << room[n].number << endl;
                room[n].state = 1;
                customer[i]->set_room_number(room[n].number); //？？
                break;
            }
        }
        break;
    case 3:
        cout << "住房费用总共为: " << day * 300 << " 元\n";
        for (n = 40; n < 60; n++)
        {
            if (room[n].state == 0)
            {
                cout << "预定成功★房间号码为: " << room[n].number << endl;
                room[n].state = 1;
                customer[i]->set_room_number(room[n].number);
                break;
            }
        }
        break;
    case 4:
        cout << "住房费用总共为: " << day * 600 << "元\n";
        for (n = 60; n < 80; n++)
        {
            if (room[n].state == 0)
            {
                cout << "预定成功★房间号码为: " << room[n].number << endl;
                room[n].state = 1;
                customer[i]->set_room_number(room[n].number);
                break;
            }
        }
        break;
    }
    i++; //住房的顾客数加1
}
//入住登记***************************************************************************
void check_in() //入住查询
{
    char name1[10], id1[19];
    int ding_or_no, prepaid;
    cout << "该顾客订房了吗? (1->订了 2->没订) ";
    cin >> ding_or_no;
    if (ding_or_no == 1)
    {
        cout << "请输入顾客的姓名:" << endl;
        cin >> name1;
        cout << "请输入顾客的身份证号码:" << endl;
        cin >> id1;
        for (int j = 0; j <= i; j++)
        {
            if ((strcmp(customer[j]->get_name(), name1) == 0) && (strcmp(customer[j]->get_ID(), id1) == 0)) //查找该顾客的定房信息
            {
                int num = customer[j]->get_room_number(); //取得定房的房间号
                cout << "顾客" << name1 << "今天入住本宾馆! 房间号码为: " << num << endl;
                switch (num / 100)
                {
                case 6:
                    prepaid = customer[j]->get_day() * 150;
                    customer[j]->set_prepaid(prepaid);
                    cout << "请收房费 " << prepaid << "元整!" << endl; //开始收费
                    room[num % 100 - 1].state = 2;                     //修改房间状态为入住状态
                    break;
                case 7:
                    prepaid = customer[j]->get_day() * 200;
                    customer[j]->set_prepaid(prepaid);
                    cout << "请收房费 " << prepaid << "元整!" << endl;
                    room[19 + num % 100].state = 2;
                    break;
                case 8:
                    prepaid = customer[j]->get_day() * 300;
                    customer[j]->set_prepaid(prepaid);
                    cout << "请收房费 " << prepaid << "元整!" << endl;
                    room[39 + num % 100].state = 2;
                    break;
                case 9:
                    prepaid = customer[j]->get_day() * 600;
                    customer[j]->set_prepaid(prepaid);
                    cout << "请收房费 " << prepaid << "元整!" << endl;
                    room[59 + num % 100].state = 2;
                    break;
                }
                break;
            }
        }
    }
    else
    {
        customer[i] = new Customer;
        int room_standard, day;
        cout << "请您选择预定房间的标准:\n";
        cout << "1.单人间/天150元\n2.双人间/天200元\n3.标准间/天300元\n4.总统套房/天600元\n";
        cin >> room_standard;
        cout << "请输入住宿天数\n";
        cin >> day;
        customer[i]->set_day(day);
        switch (room_standard)
        {
            int n;
        case 1:
            prepaid = day * 150;
            customer[i]->set_prepaid(prepaid);
            cout << "请收房费 " << prepaid << "元整!\n";
            for (n = 0; n < 20; n++)
            {
                if (room[n].state == 0)
                {
                    cout << "入住房间号码为: " << room[n].number << endl;
                    room[n].state = 2;
                    customer[i]->set_room_number(room[n].number);
                    break;
                }
            }
            break;
        case 2:
            prepaid = day * 200;
            customer[i]->set_prepaid(prepaid);
            cout << "请收房费 " << prepaid << "元整!\n";
            for (n = 20; n < 40; n++)
            {
                if (room[n].state == 0)
                {
                    cout << "入住房间号码为: " << room[n].number << endl;
                    room[n].state = 2;
                    customer[i]->set_room_number(room[n].number);
                    break;
                }
            }
            break;
        case 3:
            prepaid = day * 300;
            customer[i]->set_prepaid(prepaid);
            cout << "请收房费 " << prepaid << "元整!\n";
            for (n = 40; n < 60; n++)
            {
                if (room[n].state == 0)
                {
                    cout << "入住房间号码为: " << room[n].number << endl;
                    room[n].state = 2;
                    customer[i]->set_room_number(room[n].number);
                    break;
                }
            }
            break;
        case 4:
            prepaid = day * 600;
            customer[i]->set_prepaid(prepaid);
            cout << "请收房费 " << prepaid << "元整!\n";
            for (n = 60; n < 80; n++)
            {
                if (room[n].state == 0)
                {
                    cout << "入住房间号码为: " << room[n].number << endl;
                    room[n].state = 2;
                    customer[i]->set_room_number(room[n].number);
                    break;
                }
            }
            break;
        }
        i++;
    }
}
//退房结算***************************************************************************
void check_out()
{
    char name2[10], id2[19];
    int standard, j, room_number, day1, day2, day;
    cout << "请输入要退房的顾客姓名和身份证号码:\n";
    cin >> name2 >> id2;
    cout << "请输入该顾客实住天数:\n";
    cin >> day2;
    for (j = 0; j < i; j++)
    {
        if ((strcmp(customer[j]->get_name(), name2) == 0) && (strcmp(customer[j]->get_ID(), id2) == 0))
        {
            room_number = customer[j]->get_room_number();
            standard = room_number / 100;
            day1 = customer[j]->get_day();
            day = day1 - day2;
            switch (standard)
            {
            case 6:
                cout << "顾客的房间号是" << room_number << " :为单人间,每天150元\n";
                cout << "该顾客预付了房费 " << customer[j]->get_prepaid() << "元, 实际消费 " << day2 * 150 << "元整!\n";
                cout << endl;
                if (day > 0)
                    cout << "请退给该顾客 " << day * 150 << " 元整!\n";
                if (day < 0)
                    cout << "请补收该顾客住房费 " << -day * 150 << " 元整!\n";
                break;
            case 7:
                cout << "顾客的房间号是" << room_number << " :为双人间,每天200元\n";
                cout << "该顾客预付了房费 " << customer[j]->get_prepaid() << "元, 实际消费 " << day2 * 200 << "元整!\n";
                cout << endl;
                if (day > 0)
                    cout << "请退给该顾客 " << day * 200 << " 元整!\n";
                if (day < 0)
                    cout << "请补收该顾客住房费 " << -day * 200 << " 元整!\n";
                break;
            case 8:
                cout << "顾客的房间号是" << room_number << " :为标准间,每天300元\n";
                cout << "该顾客预付了房费 " << customer[j]->get_prepaid() << "元, 实际消费 " << day2 * 300 << "元整!\n";
                cout << endl;
                if (day > 0)
                    cout << "请退给该顾客 " << day * 300 << " 元整!\n";
                if (day < 0)
                    cout << "请补收该顾客住房费 " << -day * 300 << " 元整!\n";
                break;
            case 9:
                cout << "顾客的房间号是" << room_number << " :为总统套房,每天600元\n";
                cout << "该顾客预付了房费 " << customer[j]->get_prepaid() << "元, 实际消费 " << day2 * 600 << "元整!\n";
                cout << endl;
                if (day > 0)
                    cout << "请退给该顾客 " << day * 600 << " 元整!\n";
                if (day < 0)
                    cout << "请补收该顾客住房费 " << -day * 600 << " 元整!\n";
                break;
            }
            cout << endl;
            cout << "退房核算清楚,请按1: ";
            char account;
            cin >> account;
            if (account == '1')
            {
                for (int k = 0; k < 80; k++)
                {
                    if (room[k].number == customer[j]->get_room_number())
                        room[k].state = 0;
                }
                i--;
                for (; j < i; j++)
                {
                    customer[j] = customer[j + 1];
                }
                delete customer[i];
            }
        }
    }
}
//信息查询***************************************************************************
void inquire()
{
    char inquire_choice;
    cout << "房间信息查询请按1, 顾客信息查询请按2: " << endl;
    cin >> inquire_choice;
    if (inquire_choice == '1')
    {
        int j, k = 0;
        cout << endl;
        cout << "下列房间还没人预订，也没人入住：" << endl;
        for (j = 0; j < 80; j++)
        {
            if (room[j].state == 0)
            {
                if (k % 10 == 0)
                    cout << endl;
                cout << room[j].number << '\t';
                k++;
            }
        }
        cout << endl;
        cout << endl;
        k = 0;
        cout << "下列房间已预订：" << endl;
        for (j = 0; j < 80; j++)
        {
            if (room[j].state == 1)
            {
                if (k % 10 == 0)
                    cout << endl;
                cout << room[j].number << '\t';
                k++;
            }
        }
        k = 0;
        cout << endl;
        cout << endl;
        cout << "下列房间有人入住：" << endl;
        for (j = 0; j < 80; j++)
        {
            if (room[j].state == 2)
            {
                if (k % 10 == 0)
                    cout << endl;
                cout << room[j].number << '\t';
                k++;
            }
        }
        cout << endl;
        cout << endl;
    }
    else if (inquire_choice == '2')
    {
        cout << "按姓名查询请按1, 按身份证查询请按2: " << endl;
        char inquire_choice;
        cin >> inquire_choice;
        if (inquire_choice == '1')
        {
            char name3[10];
            cout << "请输入顾客的姓名: " << endl;
            cin >> name3;
            for (int j = 0; j <= i; j++)
            {
                if (strcmp(customer[j]->get_name(), name3) == 0)
                {
                    cout << name3 << "的住房信息如下:\n";
                    cout << '\t' << "房间号为: " << customer[j]->get_room_number() << endl;
                    cout << "\t"
                         << "预付房费为: " << customer[j]->get_prepaid() << endl;
                }
            }
        }
        if (inquire_choice == '2')
        {
            char id3[10];
            cout << "请输入顾客的身份证号: " << endl;
            cin >> id3;
            for (int j = 0; j <= i; j++)
            {
                if (strcmp(customer[j]->get_ID(), id3) == 0)
                {
                    cout << customer[j]->get_name() << "的住房信息如下:\n";
                    cout << '\t' << "房间号为: " << customer[j]->get_room_number() << endl;
                    cout << "\t"
                         << "预付房费为: " << customer[j]->get_prepaid() << endl;
                }
            }
        }
    }
}
//房间信息初始化*********************************************************************
void initial_room() //对80个房间进行初始化,分4个等级
{
    int j, k = 601;
    for (j = 0; j < 20; j++)
    {
        room[j].number = k++;
        room[j].dank = 1;
        room[j].price = 150;
        room[j].state = 0;
    }
    k = 701;
    for (j = 20; j < 40; j++)
    {
        room[j].number = k++;
        room[j].dank = 2;
        room[j].price = 200;
        room[j].state = 0;
    }
    k = 801;
    for (j = 40; j < 60; j++)
    {
        room[j].number = k++;
        room[j].dank = 3;
        room[j].price = 300;
        room[j].state = 0;
    }
    k = 901;
    for (j = 60; j < 80; j++)
    {
        room[j].number = k++;
        room[j].dank = 4;
        room[j].price = 600;
        room[j].state = 0;
    }
}