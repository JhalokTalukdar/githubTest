
data {                        // Data block            
  int<lower=0> N;             
  vector[N] y;                
}

parameters {                  // Parameters block         
  real mu;                   
  real<lower=0> sigma;    
}

model {                       // Model block   
  y ~ normal(mu, sigma);    
  mu ~ normal(0, 1000);       
  sigma ~ cauchy(0, 25);  
}
  
  