# conda_info

Conda environments are the manager for the python package version control. As we know that the python packages get updates regularly, and two packages that depend on different version can not be installed together. So if we dont want the updated packaged to mess up the current workflow, we need to control the package version.

## Useful conmmands

Conda works by creating environments or "envs", which are collections of python and non-python packages and programs that act as a kind of isolated mini-operating systems. Here are some useful codes for conda usage. 

### 1. To create a new conda environment with python verion = 3.8.

            conda create -n my_env python=3.8
          
### 2. Activating an environment. 
In order to use the environment you just created on the command line, you need to activate the env. 

            conda activate my_env
            
### 3. Adding the created environment to jupyternotebook
Making the environment visible in Jypyter
  
           conda activate my_env
           python -m ipykernel install --user --name my_env --display-name  'Python(my_env)'
           
### 4. Installing new packages in a conda environment
      
           conda activate my_env
           conda install package_name
           
for installing in virtual machine, we would use:
    
          conda activate my_env
          https_proxy=https://webproxy.xxx:xxxx 
          pip install package_name
    
### 5. Cloning the enviroment 
for easier use, sometimes we just clone the old enviroment and build from there.

        conda create --clone source_env -n my_env
        

