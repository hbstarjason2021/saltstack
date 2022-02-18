# saltstack

`curl -L https://bootstrap.saltstack.com -o install_salt.sh`   
`sudo sh install_salt.sh -P -M -N`  
`sudo sh install_salt.sh -P`   


https://katacoda.com/hbstarjason2021/scenarios/saltstack   


`salt '*' saltutil.refresh_pillar`   
`salt \* pillar.get user`    
`salt \* pillar.get config`  

`salt -I 'user:root' test.ping`   
`salt -I 'config:cpu' test.ping`

`salt '*' state.sls nginx`     
`salt '*' cmd.run 'ps -auxf |grep nginx'`    
