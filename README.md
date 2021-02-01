I. File list:
------------

* findDealers.sh
* forLoopsNew.sh
* for_loops.sh
* roulette_dealer_finder_by_time.sh
* roulette_dealer_finder_by_time_and_game.sh
* script.sh
* redTeamTopology.svg


II. Scope and Design:
--------------------
* The linux bash scripts in the repo / project serves the following purposes:

   * Lucky Duck has lost a significant amount of money on the roulette tables over the last month.
   * The largest losses occurred on March 10, 12, and 15.
   * There is a player working with a Lucky Duck dealer to steal money at the roulette tables.
   * The casino has a large database with data on wins and losses, player analysis, and dealer schedules.
   * The scripts are designed to navigating, modifying, and analyzing these data files to gather evidence on the rogue player and dealer.
   * Several evidence files to assist the prosecution are prepared.

* The network daiagram depicts the following:
   * Network components:
       * Azure resource group - The azure resource group that bundles all the resources for the project.
       * Virtual network with IP address range - Virtual network configured within the resource group.
       * Subnet range - Subnet range specificed.
       * Flow of specific traffic (e.g., HTTP, SSH) -  Http tarffic is served via 8080 for ELKStack , ssh enabled for Jump Box access from public IP.
       * Security group blocking traffic - NSG with firewall rules.
       * Load balancer - LB configuared for 2 DWVA machines.
       * Jump Box Vm , 2 DVWA Vms - Jump Box configured for access to all azure resources , DWVA (web servers hosting DVWA)
       * Docker and Ansible are deployed in Jump Boxes.
         * ELK stack configured in Jump Box , deployed and configuration managed by Ansible. - Docker installed in Jump Box along with Ansible, Ansible scripts responsible for deploying and managing File Beats , Metric Beats , ELK stack.




