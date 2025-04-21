import sys,os,webbrowser 
edge_path='C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe' 
webbrowser.register('edge',None,webbrowser.BackgroundBrowser(edge_path)) 
if len(sys.argv)>1: webbrowser.get('edge').open('edge://newtab/') 
else: webbrowser.open('How to use.pdf') 
sys.exit(0)