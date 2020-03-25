# Planejamento

## Roles
1. base_k8s
1. masters_k8s
1. workers
1. devops
---
## Grupos
1. file_servers
1. masters
1. workers
    - qa
    - prd
1. devops
    - jenkins
    - tiller(helm)
---
## GROUP_VARS
1. **group** -> baseado no grupo serão escolhidos os roles e hosts 
1. **task** -> a task define o tipo de operação para cada role. 
    - **Ex.1**: Caso group==masters e task==join, serão executados os scripts para join de novos control planes no cluster k8s
    - **Ex.2**: Caso group==devops e task==jenkins, será instalado e configurado o jenkins no ambiente de devops
1. **labels** -> Labels adicionais para diferenciar os servidores durante processo de join
---