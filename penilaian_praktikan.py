from random import randint
import time
import sys

def welcome():
    welcome=''' 
    == SELAMAT DATANG DI ASISTENSI 
    PRAKTIKUM LAB DASAR JARINGAN TELEKOMUNIKASI == 
    
    Program ini digunakan untuk menilai praktikan 
    dan dijamin (cukup) adil dan tidak merugikan 
    praktikan maupun asisten. 
    
    Range nilai yang diberikan yaitu: 
    --> Range nilai 65 - 95 

    <<PERHATIKAN>>
    Range nilai dapat berubah lebih baik bila praktikan:
    1. Mengumpulkan laporan lengkap
    2. Mengumpulkan penugasan lengkap
    3. Aktif menjawab saat asistensi
    4. Bisa menjawab dengan tepat
    5. Memberi kesimpulan

    Nilai yang diberi bersifat random,
    maka lancarkan ibadah kalian 
    dan tetap berusaha sebaik mungkin!

    GOODLUCK AND DO YOUR BEST!
    '''
    print(welcome)

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
        bb+=18
    elif value==4:
        bb+=25
    elif value==5:
        bb+=30
    else:
        bb += 0

def nilai_angka():
    if(nilai()==95):
        print("SSS --SELAMAT!--")
    if(nilai() in range(86,94)):
        print("A  -- istimewa --")
    if(nilai() in range(76,85)):
        print("AB -- baik sekali --")
    if(nilai() in range(66,75)):
        print("B  -- lebih rajin ya --") 
    if(nilai() in range(61,65)):
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
        return exit(0)

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
        animated_loading()
        print("\nNilai: % s" % nilai())
        #ucapan
        nilai_angka()
        x+=1

def main():
    welcome()
    scale()
    peserta()
    print("\n-- t e r i m a  k a s i h --")

# Driver Program
if __name__ == "__main__":
    main()

#done
print('\n')   
