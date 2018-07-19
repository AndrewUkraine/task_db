public  class  Test2 extends Test3 {   //внутренние классі можно наследовать если статик то без проблем, если не
// статик, то неявно передать через супер.

  /*  public Test2(Test3 test3) { //неявно передали
        test3.super();
    }*/




    public static void main(String[] args) {


        System.out.println(b=10);

    }

    public  static void ura() {
        int c = 5;

        System.out.println(c);

    }

    public static void ura(int a, String c) {
    }


    @Override
    public void privet() {
        super.privet();
    }
}

