# 은행 창구 매니저 STEP 3

# 파일 및 함수 설명:

## Bank 🏦 :
프로젝트에서 요구하는 은행의 역할이 현실세계의 은행과 조금 다른점이 있습니다.
해당 Bank클래스의 역할은 BankManager(은행원), Customer(고객)에서 하지 않는 모든 업무를 수행하고 있습니다. Bank클래스를 크게 3가지로 나누면 아래와 같습니다.
1. 은행의 개점과 종료를 사용자에게 입력받아 해당 작업 수행.
2. 임의의 수 생성 후 해당 수만큼 고객을 큐에 넣어주는 작업.
3. 업무를 고객의 요구에 따라 나눠 BankManager가 수행하도록 하는 작업.

- inputMenu: 은행이 개점을 하거나 종료를 할 때 사용자에게 입력에 필요한 정보를 제공하는 메서드
- generateRandomNumberOfCustomers: 프로젝트의 요구사항에 따라 10이상 30이하의 임의의 수를 생성하고 numberOfCustomers 프로퍼티에 대입 역할의 메서드
- insertCustomersIntoQueue: 생성된 임의의 수 만큼 고객을 생성해 큐에 넣어주는 메서드.
- distributeTask: 고객의 요구에 따라 업무를 처리하는 메서드.
- openBank: 사용자로부터 "종료"입력을 받지 않는 이상 계속 은행 업무를 수행하는 메서드.
 
## BankManager 👩‍💻 :
고객들의 업무를 처리하는 기능을하는 클래스

- handleDepositCustomers: 예금업무에 관한 기능을 담은 메서드 이기때문에 BankManager의 역할에 부합하여 해당 클래스에 구현하였다.
- handleLoanCustomers: 예금업무와 마찬가지로 대출업무도 BankManager의 역할이라 생각하여 해당 클래스에 구현하였다.

## Customer 🧑🏻‍💼 :
- 고객번호와 고객의 업무를 프로퍼티로 갖는 클래스

# 배운개념 📚 :
- DispatchSemaphore
    -  DispatchSemaphore는 꼭 Race Condition을 해결하기 위한 수단은 아니다.
    - 정확히는 공유 자원에 접근할 수 있는 스레드의 수를 제어해주는 역할.
    - 몇개의 스레드에 접근을 허용할 것인지 제어할 수 있기 떄문에 접근을 1개의 스레드만 허용한다면 Race Condition을 방지할 수 있다.

- DispatchGroup
    - DispatchGroup은 비동기적으로 처리되는 작업들을 그룹으로 묶어, 그룹 단위로 작업 상태를 추적할 수 있는 기능. → DispatchGroup을 사용하면 async들을 묶어서 그룹의 작업이 끝나는 시점을 추적하여 어떠한 동작을 수행시킬 수 있다.
    - 이때 묶어줄 async 작업들이 꼭 같은 큐, 스레드에 있지 않더라도 묶어줄 수 있다.
    - DispatchGroup는 async에서만 사용할 수 있다.
    - notify, wait, enter, leave 기능들
