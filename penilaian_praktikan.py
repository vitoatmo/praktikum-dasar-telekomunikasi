from random import randint
import time
import sys
import test 

def scale():
    global ba #batas atas
    global bb #batas bawah
    ba=95
    bb=65
    return

def list_keaktifan():
    list='''
    --LIST KEAKTIFAN--
    1. Laporan lengkap
    2. Penugasan lengkap
    3. Aktif menjawab
    4. Bisa menjawab
    5. SEMUA
    '''
    print(list)

def case_bonus(value):
    global bb #batas bawah
    global ba #batas atas
    if value==1:
        bb+=10
    elif value==2:
        bb+=15
    elif value==3:
        bb+=20
    elif value==4:
        bb+=25
    elif value==5: #auto 95
        bb+=30
    else:
        bb+=0

def ucapan(value):
    if(value==95):
        print("SSS -- GOD LIKE --")
    if(value in range(86,95)):
        print("A  -- istimewa --")
    if(value in range(76,86)):
        print("AB -- baik sekali --")
    if(value in range(66,76)):
        print("B  -- lebih rajin ya --") 
    if(value in range(61,66)):
        print("BC -- cukup baik --")
    else:
        pass   

def nilai(): 
    # random nilai dari scale
    return randint(bb, ba)

def animated_loading():
    chars = "/—\|/—\|/—\|/—\|" 
    for char in chars:
        sys.stdout.write('\r'+'loading...'+char)
        time.sleep(0.1)
        sys.stdout.flush() 

def peserta():
    #input jumlah peserta
    i_peserta = input('\nJumlah peserta: ')
    if(i_peserta==0):
        return keluar()

    #menampilkan list keaktifan
    list_keaktifan()
    #input keaktifan
    i_aktif = input('\nKeaktifan: ')
    #mengubah batas bawah
    case_bonus(int(i_aktif))
    #menampilkan batas baru
    print("\n<UPDATED> --> Range nilai %s - %s" %(bb,ba))
    
    for x in range(int(i_peserta)):
        print("\nPraktikan ke-{}".format(x+1))
        nama = input('Nama: ')
        #animasi loading
        #animated_loading()
        get_nilai = nilai()
        print("\nNilai: % s" % get_nilai)
        #ucapan
        ucapan(get_nilai)
        x+=1

def keluar():
    print("-- terima kasih --\n")
    return exit(0)

def lagi():
    print("\n\nLagi? (y/n)")
    if(input()=="y"):
        return main()
    else:
        return keluar()

def main():
    test.welcome()
    scale()
    peserta()
    lagi()


def run():
    main()
    

# Driver Program
if __name__ == "__main__":
    run()
