
- name: checking data types
  hosts: localhost
  vars:
    NAME: Sivakumar # key value
    Skills: #Skills is a list type
    - DevOps
    - Shell
    - ANsible
    - Linux
    Experience: # Experience is map type. It contains key value pairs
      DevOps: 7
      AWS: 6
      Docker: 4
    Trainer: true # boolean
  tasks:
  - name: print key value pair
    ansible.builtin.debug:
      msg: "name: {{NAME}}"

  - name: print list
    ansible.builtin.debug:
      msg: "Skills: {{Skills}}"
  
  - name: print map
    ansible.builtin.debug:
      msg: "Experience: {{Experience}}"

  - name: print boolean
    ansible.builtin.debug:
      msg: "is he Trainer: {{Trainer}}"
