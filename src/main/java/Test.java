import java.util.Arrays;


public class Test {


    public static void main(String[] args) {
     Test.reversCIFR();

     Test test = new Test();
     test.max();


    }

    public static void udalitCastSlovaPosleZnaka (){
        String chapterNumber = "абвг | де ёжз";
        String mainChapterNum = chapterNumber.substring(0, chapterNumber.indexOf("|"));
        System.out.println(mainChapterNum); //абвг
    }

    public  int  max (){
       int [] mass = {3,44,2,4, -5};
       int max=0;

       for (int i =0; i<=mass.length-1; i++){
           if (mass[i]>max){
               max = mass[i];
           }

       }
        return max;
    }

    public  int  min (){
        int [] mass = {3,44,2,4, -5};
        int min=0;

        for (int i =0; i<mass.length; i++){
            if (mass[i]<min){
                min = mass[i];
            }

        }
        return min;
    }


    public  int  summiruem (){
        int [] mass = {3,2,4, 15};
        int max=0;

        for (int i =0; i<mass.length; i++){
                max = max + mass[i];
            }
        return max;
    }

    private static void   sortmassPuzirok (){
        int [] mass = {3,2,4, 14, 1,45};
        //for (int i =mass.length-1; i>0; i--){ //тупо просто по длине перегоняем и поф. как исчеляем
        for (int i =0; i<mass.length-1; i++){  /* счет от конца в начало массива. Внешний цикл скольк раз прогнать.*/
           for (int j =0; j<mass.length-1; j++){     // тут цикл сравниваем значения. Идем от нуля в до конца массива
               if (mass[j]>mass[j+1]){              //3 больше 2  - нужно меняеть местами. Значит Идем по формуле ниже.
                  int max=mass[j];                 //0 и 3
                   mass[j] = mass[j+1];           //3=2
                   mass[j+1] = max;
               }
           }
        }
        System.out.println(Arrays.toString(mass));
    }


    static int calculateFactorial(int n) {
        int result = 1;
        for (int i = 1; i <= n; i++) {
            result = result * i;
        }
        return result;
    }


    static void reversBUKVA() {
        String [] mass = {"a", "b", "c", "d", "f"};
        for (int i = 0; i<mass.length/2; i++) {
               String c = mass[i];
                mass[i]=mass[mass.length-i-1];
            mass[mass.length-i-1] =c;
            }
        System.out.println(Arrays.toString(mass));
    }

/*формула j=n-i+1 - ищем пару */
    static void reversCIFR() {
        int [] mass = {3,2,4, 14, 1,45};
        for (int i = 0; i<mass.length/2; i++) {
            int c = mass[i];
            mass[i]=mass[mass.length-i-1];
            mass[mass.length-i-1] =c;
        }
        System.out.println(Arrays.toString(mass));
    }

    /*формула j=n-i+1 - ищем пару */
    static void reversCIFR2() {
        int [] mass = {3,2,4, 14, 1,45};
        for (int i = 0; i<mass.length/2; i++) {
            int c = mass[i];
            mass[i] = mass[mass.length-i-1];
            mass[mass.length-i-1]=c;
        }
        System.out.println(Arrays.toString(mass));
    }

    static void testcikl1() {
        int a =1;
        for (int i = 0; i<4; i++) {
            System.out.println("Hellow" + " " + a++); //4 раза вывидет 1,2,3.4
        }
    }

    static void testcikl2() {
        int [] mass = new int[5];
        for (int i = 1; i<=mass.length; i++) {
            System.out.println(i);  //1,2,3,4,5 // или длина 5
        }
    }

    static void vivodmassiva() {
        Integer[] mass = {1,2,30,4,50};
        for (int i =0; i<=mass.length-1; i++) { //-1 ставим что бы исклюить исключение. Тоесть если без -1 длина масcива i=6
            System.out.println(i + " " + mass[i]);
        }
       /* System.out.println(mass.length);*/
        //без -1              с -1
//i=0; lenght=5; 1    i=0; lenght=4; 1
//i=1; lenth=5;  2    i=1; lenth=4;  2
//i=2; lenth=5;  3    i=2; lenth=4;  3
//i=3; lent=5;   4    i=3; lent=4;   4
//i=4; lenth=5; 5     i=4; lenth=4;  5
//error
    }


    static void fibanaci() {
        int d =8;
        long[] mass = new long[d+1];
        mass[0]=0; //0
        mass[1]=1; //1
        for (int i = 2; i<=d; i++) {
            mass[i] = mass[i-1]+mass[i-2];
            //i2 = 1+0        //  1
            //i3 = 1+1        //  2
            //i4 = 2+1        //  3 mass[i]=4 = mass[i4-1=i3 которая равняется i3=2]+mass[i4-2=i2 которая равняется i2=1] = 2+1=3
            //i5 = 3+2        //  5
            //i6 = 5+3        //  8
            //i7 = 8+5        // 13
            //i8 = 13+8       // 21 mass[i]=8 = mass[i8-1=i7 которая равняется i7=13]+mass[i8-2=i6 которая равняется i6=8] = 13+8=21

            //просто складывая 2 предыдущих
        }
        System.out.println(Arrays.toString(mass));
        System.out.println(mass[d]);
    }


    static void chengingPlace() {
        int a=3;
        int b = 2; //a=2 b=3
         a = a+b; //a=5
         b=a-b; //b=3
         a=a-b; //a=2
        System.out.println("Now a = " + a + " And b = " + b);
    }


    public static void tablicaUmnogenia (){

        for (int a=1; a<11; a++) {
            for (int i = 1; i < 11; i++) {
                System.out.print(i*a + ", ");
            }
            System.out.println("");
        }
    }

    public static void vivod () {

        for (int i = 0; i <= 10; i++) {
            for (int j = i; j > 0; j--) {
                System.out.print(j);
            }
            System.out.println();
        }
    }





}


