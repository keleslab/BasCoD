# BasCoD : Systematic **Ba**ckground **S**election for Enhanced **Co**ntrastive **D**imension Reduction
![ELECT diagram](/figures/intro.png)

## BasCoD Usage

### Preparation


First of all, before cloning the MINTsC github package, go to the right directory that you would like to implement MINTsC. In the cmd terminal, do

```
cd {BasCoD directory}
```

then go on to the next step. {BasCoD directory} could be for example /storage10/kwangmoon/MINTsC.


#### 1. Repository clone

For cloning the github repository, again on the cmd terminal, run the linux code 

```
git clone https://github.com/keleslab/BasCoD.git
```

For R, we need the requirements as below : 


-   R: [R installation](https://www.r-project.org)  (>=4.2.2)

#### 2. Install/load required R packages

In R, run those codes that download the required packages for running BasCoD.

```
install.packages('MASS')
```

Details about implementing codes and reproducing Figures in the manuscript can be found in the [Tutorial](https://github.com/keleslab/BasCoD/blob/main/code/scripts/) of this github. There are mainly three tutorials provided: 


- Tutorial 1: [Mouse DS data](https://github.com/keleslab/BasCoD/blob/main/code/scripts/Tutorial_Mouse_DS.ipynb)
- Tutorial 2: [Jerber et al. population scale scRNA-seq data](https://github.com/keleslab/BasCoD/blob/main/code/scripts/Tutorial_population_scRNA_Jer)
- Tutorial 3: [HSPC erythroid differentiation analysis data](https://github.com/keleslab/BasCoD/blob/main/code/scripts/Tutorial_inflammation_Liao.ipynb)

The required datasets can be found in the [Google Drive link](https://drive.google.com/drive/folders/1WOm1p2M4XI_K3g_Sr_J0ht3IZoQfRfBH?usp=drive_link).


