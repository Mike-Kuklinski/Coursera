# Title: Polyalphabetic Encryption Server Code
# Coursera: Developing Data Products - Course Project
# Author: Mike Kuklinski
# Date: 9-27-15

# Code for encrypting and decrypting messages using a polyalphabetic cipher
library(dplyr)


key_word <- function(word){
        # Function to create a data.frame where each column is an
        # encrypted alphabet based on a letter in a given key phrase
        alph <-  c(LETTERS, " ")
        key_word_table <- data.frame('orig' = alph)
        key_letters <- strsplit(word, '')[[1]]
        # Loop through key phrase, letter by letter and use helper function,
        # key_alpha to create new alphabet
        for (char in seq_len(nchar(word))){
                key_sub <- key_alpha(key_letters[char])
                key_word_table <- mutate(key_word_table, key_sub)
                temp_names <- names(key_word_table)
                temp_names[char+1] <- as.character(char)
                names(key_word_table) <- temp_names
        }
        key_word_table[,-1]
}


key_alpha <- function(letter){
        # Helper function to create cipher alphabet where the letter 
        # input is the first letter in the cipher alphabet
        alph <-  c(LETTERS, " ")
        key_idx <- match(toupper(letter), alph)
        keybet <- c(alph[key_idx:27], alph[1:key_idx-1])
        keybet
}

encrypt <- function(message, key_phrase){
        # Function to encrypt 
        encrypt_message <- NULL
        # Create data.frame of cipher alphabets for each letter in key phrase
        key <- as.data.frame(key_word(key_phrase))
        modulo <- nchar(key_phrase)
        split_message <- strsplit(message, '')[[1]]
        # Loop through message letters and data.frame of cipher alphabets to 
        # ecrypt each letter
        for (char in seq_len(nchar(message))){
                encrypt_idx <- match(toupper(split_message[char]),  c(LETTERS, " "))
                # Use modulo to cycle through data.frame
                if(char%%modulo == 0){
                        key_idx <- modulo
                }else {key_idx <- char%%modulo}
                encrypt_alpha <- key[encrypt_idx, key_idx]
                encrypt_message <- paste(encrypt_message, encrypt_alpha, sep = "")
        }
        encrypt_message
}



decrypt <- function(encrypt_message, key_phrase){
        # Function to encrypt 
        decrypt_message <- NULL
        # Create data.frame of cipher alphabets for each letter in key phrase
        key <- as.data.frame(key_word(key_phrase))
        modulo <- nchar(key_phrase)
        split_message <- strsplit(encrypt_message, '')[[1]]
        # Loop through message letters and data.frame of cipher alphabets to 
        # ecrypt each letter
        for (char in seq_len(nchar(encrypt_message))){
                # Use modulo to cycle through data.frame
                if(char%%modulo == 0){
                        key_idx <- modulo
                }else {key_idx <- char%%modulo}
                decrypt_idx <- match(toupper(split_message[char]), key[,key_idx])
                decrypt_alpha <- c(LETTERS, " ")[decrypt_idx]
                decrypt_message <- paste(decrypt_message, decrypt_alpha, sep = "")
        }
        decrypt_message
        
}


# Use this code for server
run_program <- function(message, key, fun){
        h <- as.numeric(fun)
        if(h == 0){answer <- encrypt(message, key)}
        else if(h == 1){answer <- decrypt(message, key)}
        else {answer <- '0 to Encrypt; 1 to Decrypt'}
        answer
}


# load libraries
library(shiny)
# begin shiny server
shinyServer(
        function(input, output) {
                # Take user input variables and run encryption code
                output$oinput_mes <- renderPrint({input$input_mes})
                output$oinput_key <- renderPrint({input$input_key})
                datasetInput <- renderText({as.numeric(input$funct)})
                output$out_message <- renderPrint({run_program(input$input_mes,
                                                               input$input_key,
                                                               as.numeric(input$funct) )})
        }
)
