## how to backup a certain file with running ```backup``` command 

- so first we change the mod of our file :

  ```bash
  chmod +x backup
  ```
- we create a folder in our home directory and call it ```bin``` :

  ```bash
  mkdir ~/bin
  ```

- we move our backup file into the ```bin``` folder :

  ```bash
  mv backup ~/bin
  ```

- then we go to the ~/.bashrc file and at the end of it,  we add the location of ```bin``` folder to the ```PATH environment varialbe``` :

  ```bash
  PATH="$PATH:$HOME/bin"
  ```

<hr>

now the path to our backup file has added to the PATH environemtn variable . so when we type `backup` in terminal . linux will search for our backup file and will run it. 
