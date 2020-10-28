from random import randint
import time
import sys

def welcome():
    print("\n-- Program Penilaian Praktikum Lab Dasar Telekomunikasi --")
    print("--> Range nilai 65 - 95")

def scale():
    global ba #batas atas
    global bb #batas bawah
    ba=95
    bb=65
    return

def case_bonus(value):
    global bb #batas bawah
    if value==1:
        bb += 10
    elif value==2:
        bb+=20
    elif value==3:
        bb+=30
    else:
        bb += 0
    

def nilai(): 
    # random nilai dari scale
    return randint(bb, ba)

def animated_loading():
    chars = "/—\|" 
    for char in chars:
        sys.stdout.write('\r'+'loading...'+char)
        time.sleep(1.5)
        sys.stdout.flush() 

def peserta():
    i_peserta = input('\nJumlah peserta: ')
    i_aktif = input('\nKeaktifan: ')
    case_bonus(int(i_aktif))
    print("\nGaransi nilai %s - %s" %(bb,ba))
    
    for x in range(int(i_peserta)):
        nama = input('\nNama: ')
        # animated_loading()
        print("\nNilai: % s" % nilai())

def main():
    welcome()
    scale()
    peserta()

# Driver Program
if __name__ == "__main__":
    main()

#done
print('\n')   
