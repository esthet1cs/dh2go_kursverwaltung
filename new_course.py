# coding: utf-8

# service script for building participant lists from a spreadsheet, suitable for usage in adduser and chpasswd
# spreadsheet column used in this script: Name
# expected input: csv-file named teiln.csv
# output: 
#   - user.list: a list of usernames
#   - user.pass: a list in the format username:password, as expected by chpasswd

import pandas as pd
import string
import secrets
from unidecode import unidecode

# helper functions

def make_nk(name):
    '''
    input a name string, output a string with the first letter plus the last word
    '''
    name = name.lower()
    name = name.split()
    nk = name[0][0] + name[-1]
    return nk

def make_pw(length=8):
    '''
    return an alphanumerical password with the given length, defaults to 8 (taken from the secrets package tutorial)
    '''
    alphabet = string.ascii_letters + string.digits
    password = ''.join(secrets.choice(alphabet) for i in range(length))
    return password


df = pd.read_csv('teiln.csv')                                   # read data from file


### construct additional columns: usernames, passwords, user:pass

df.Nutzungskennung = df.Name.apply(lambda x: make_nk(x))                # construct usernames column
df.Nutzungskennung = df.Nutzungskennung.apply(lambda x: unidecode(x))    # change non-ascii-characters to ascii-compatible chars

# expecting: user list either has Matrikelnummer for all participants, or the column does not exist
# check if we have Matrikelnummern
# if we do, use them to construct the initial password with m + Matrikelnummer
if 'Matrikelnummer' in df.columns:
    df['Passwort'] = df.Matrikelnummer.apply(lambda x: 'm' + x)
# if no Matrikelnummern
else:
    passwords = []                                                  # make a list with passwords matching the length of the user list
    for i in range(len(df)):
        passwords.append(make_pw(8))
        
    df["Passwort"] = passwords                                      # construct passwords columns = random password for each user
    df['userlist'] = df.Nutzungskennung + ':' + df.Passwort         # construct user:pass column for the user:pass file


### export to file

with open('user.list', 'w') as f:               # userlist
    for user in df.Nutzungskennung:
        f.write(user)
        f.write('\n')
        
with open('user.pass', 'w') as f:           # user.pass
    for userpass in df.userlist:
        f.write(userpass + '\n')
        
df.to_csv('teiln_full.csv')                 # full participant csv file with usernames and initial passwords




