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

Details about implementing codes and reproducing Figures in the manuscript can be found in the [Tutorial](https://github.com/keleslab/BasCoD/blob/main/code/scripts/) of this github.

