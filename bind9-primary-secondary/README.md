Projeto Bind9 com Docker


    Arquitetura>

        Este projeto implementa um servidor DNS Bind9 com zona primária (master) e zona secundária (slave) utilizando Docker e Docker Compose.

            - bind9-master: container responsável pela zona primária, onde os arquivos de configuração e zona são definidos.

            - bind9-slave: container responsável pela zona secundária, que replica automaticamente os registros da zona primária.

            - Rede interna (dnsnet): conecta os dois containers, permitindo a replicação via transferência de zona.

            - Volumes: cada container monta sua própria pasta de configuração (bind9-demo/primary/bind e bind9-demo/secondary/bind).

    Como baixar e executar

        Clone o repositório: 
            git clone https://github.com/seuusuario/repositório
            cd bind9

        Construa as imagens:
            docker compose build

        Suba os containers:
            docker compose up -d

        Verifique se estão rodando:
            docker ps

        Teste a resolução DNS:
            No primário:
            docker exec -it bind9-master bash
            dig @localhost jonas.lan

            No secundário:
            docker exec -it bind9-slave bash
            dig @localhost jonas.lan

    Comandos utilizados:
        Construção e execução:

            docker compose build → constrói as imagens.

            docker compose up -d → sobe os containers em background.

            docker ps → lista containers ativos.

            docker exec -it <container> bash → acessa o shell do container.

            dig @localhost <domínio> → testa resolução DNS dentro do container.
        
        Configuração Bind9:

            named.conf → define opções e zonas (primário e secundário).

            db.jonas.lan → arquivo de zona com registros SOA, NS, A, MX, CNAME




## 📂 Estrutura de Pastas (clicável)

- [README.md](README.md) — Documentação do projeto
- [Dockerfile](Dockerfile) — Imagem base do Bind9
- [compose.yaml](compose.yaml) — Orquestração dos containers
- bind9-demo/
  - primary/
    - bind/
      - [named.conf](bind9-demo/primary/bind/named.conf) — Configuração do Bind9 (master)
      - [db.jonas.lan](bind9-demo/primary/bind/db.jonas.lan) — Arquivo de zona primária
  - secondary/
    - bind/
      - [named.conf](bind9-demo/secondary/bind/named.conf) — Configuração do Bind9 (slave)


 
 



































Boas práticas de Gitflow

    Este projeto segue o fluxo de trabalho Gitflow, que organiza o desenvolvimento em branches:

    main → branch estável, sempre com versão funcional.

    develop → branch de desenvolvimento, onde novas features são integradas.

    feature/ → branches criadas para novas funcionalidades (ex: feature/add-mx-record).

    hotfix/ → branches para correções rápidas em produção.

    release/ → branches para preparar versões estáveis antes de integrar em main.

