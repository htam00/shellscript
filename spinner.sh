#!/bin/bash

# variavel global
spinner=('|' '/' '-' '\')

copy(){

    # mensage do processo de copia dos arquivos
    echo -n "Copiando os arquivos"

    # chamando a função spin() e declarando a variavel pid
    spin &
    pid=$! # variavel local

    # enquanto i em sequencia de 1 a 10
    # 
    for i in `seq 1 10`
    do
        sleep 1
    done

    kill $pid # matando o process depois de 10 segundos
    echo ""
}

# dentro do escopo da função spin tem um loop
# este loop tem uma chamada da variavel i em variavel global spinner
# em um sleep de tempo de 2 segundos
spin(){
    while [ 1 ]
    do
        for i in "${spinner[@]}"
        do
            echo -ne "."
            sleep 0.2
        done
    done
}

# chamando a função copy()
copy