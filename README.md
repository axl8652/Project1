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
       * Azure resource group
       * Virtual network with IP address range
       * Subnet range
       * Flow of specific traffic (e.g., HTTP, SSH)
       * Security group blocking traffic
       * Load balancer
       * Jump Box Vm , 2 DVWA Vms.
       * Docker and Ansible are deployed in Jump Boxes.
         * ELK stack configured in Jump Box , deployed and configuration managed by Ansible.




