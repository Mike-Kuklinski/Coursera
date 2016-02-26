# Title: Polyalphabetic Encryption ui.R Code
# Coursera: Developing Data Products - Course Project
# Author: Mike Kuklinski
# Date: 9-27-15

# Set working directory accordingly
#setwd('./Coursera/Developing Data Products/DevDataProd - Course Project/Shiny App - BMI')
# to run app, enter runapp() into command line
# load shiny package
library(shiny)
# begin shiny UI
shinyUI(navbarPage("Polyalphabetic Encryptor/Decryptor",
                   # create first tab
                   tabPanel("Documentation",
                            h3("According to recent studies, secret messages are the coolest!"),
                            # paragraph and bold text
                            # Introduction on polyalphabetic ciphers
                            p("Dating back to Pyramid times, people had to send messages securely to one another.
        To do this effectively, certain systems were put in place to ", strong('encrypt')," a
        message so that a 3rd party who intercepted the message, would not be able to understand it. 
        Along with the encrypted message, would be a ", strong('key'), " which the receiver of 
        the message would know and be able to use in order to ", strong('decrypt'), " the 
        encrypted message. Of course if a 3rd party got their hands on the key, then they would be
        able to decrypt the message as well. So it was important to keep the key a secret."),
        br(),p("As years progressed, these encryption systems became more and more
        complex. One of the popular methods was something called a ", strong('polyalphabetic')," ",
        strong('cipher'),". The cipher would basically take each individual letter from the message you wanted to 
        encrypt, and encrypt it based on a ", strong('cipher alphabet.')," The cipher alphabet being used to encrypt
        each letter would also change based on a ", strong('key')," ", strong('phrase'),"."),
        br(), p("For a simple example in which the key phrase is just one letter, 'H',
        then the cipher alphabet would be the following:"),
        br(),
        p("Normal Alphabet: ABCDEFGHIJKLMNOPQRSTUVWXYZ"),
        p("Cipher Alphabet: HIJKLMNOPQRSTUVWXYZABCDEFG"),
        
        br(), p("You can find a more detailed decription of this process on wikipedia or google."),
        br(), p("For this application, you will be using a Polyalphabetic Cipher to encrypt and/or decrypt a
                message. Both the message and key phrase will be of your choosing."),
                                # Instructions for using the app
                            tags$ol(
                                    tags$li("Enter the message you want to encrypt/decrypt into the ",strong('message')," line.
                                            DO NOT use any punctuation (e.g . , / ? : ;) in your message."),
                                    tags$li("Type the ", strong('key phrase'), " into the key phrase line.
                                            DO NOT use any punctuation (e.g . , / ? : ;) in your key phrase."),
                                    tags$li("Select either Encrypt or Decrypt by typing ", strong('0 or 1')),
                                    tags$li("Select the ", strong('Submit')," button."),
                                    tags$li("The encrypted or decrypted text will appear in the output line."),
                                    tags$li("To test the decyrption, you can simply cut and paste the encrypted text
                                            into the message line, enter the same key phrase, and hit submit.")
                            )),
                   # second tab
                   tabPanel("Encrypt/Decrypt",
                            p("See if you can figure out the key phrase to decrypt the encrypted message currently 
                                in the message line. I'll give you a hint. ",strong('"I said put the bunny back in the box."')),
                            p("If you don't feel like cracking this one, go right ahead and play around with the 
                              message and key phrase."),
                            br(),
                            # Text boxes with initial values
                            # Assign variables to use in server
                                textInput('input_mes', label = "Message to be Encrypted/Decrypted", 
                                          value = 'PWPNLIIBQNFEHZUNFGEHXTSNSE JBOPSOZQQTM LTQVWZD'),
                                textInput('input_key', label = "Key Phrase", value = 'hmmmmmmm'),
                                textInput('funct', label = "Encrypt-0 or Decrypt-1?", 
                                          value = 1),
                                submitButton('Submit'),
                                # Display results from encryption/decryption code
                                h4('Message Entered:'),
                                verbatimTextOutput('oinput_mes'),
                                h4('Key Phrase entered:'),
                                verbatimTextOutput('oinput_key'),
                                h4('Encrypted/Decrypted Message is:'),
                                verbatimTextOutput('out_message')
                           )
)
)

