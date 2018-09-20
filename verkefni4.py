
from bottle import *
#from sys import argv
import urllib.request, json

"""
with open("gengi.json","r") as skra:                                  |
    gogn = json.load(skra)                                            | upprifjun bara
print(gogn)                                                           |
"""
################# Mein side #########################################
@route("/")
def index():
    return """
            <h2>Verkefni 4</h2>
            <p><a href='/a'>Json local</a></p>
            <p><a href='/b'>Json af APIs.is</a></p>
    """
#####################################################################
################ link 1. json local #################################
@route("/a")
def index():
    return template("index.tpl")

#####################################################################
############### link 2. APIs.is #####################################
with urllib.request.urlopen("http://apis.is/currency/") as url:
    data = json.loads(url.read().decode())

@route('/b')
def index():
    return template("index2.tpl", data=data)

######################################################################
###################### auka ##########################################
@route('/static/<skra>')
def statd_skra(skra):
    return static_file(skra, root='./static')

@error(404)
def villa(error):
    return "<h2 style='color:red'>Þessi siða finnst ekki</h2><h1>ERROR 404</h2>"
######################################################################

#run(host='0.0.0.0' ,port=argv[1], debug=True)
run(host='localhost', port=8080, reloader=True, debug=True)
