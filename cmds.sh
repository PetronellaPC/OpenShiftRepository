    5  vi /usr/local/etc/ocp4.config 
    7  mysql -uuser1 -pmypa55 --protocol tcp -h localhost
    8  oc delete project ${RHT_OCP4_DEV_USER}-mysql-openshift
    9  oc get project
   10  oc delete project petronela-cretu-mysql-openshift 
   11  lab openshift-resources finish
   12  curl php-helloworld-${RHT_OCP4_DEV_USER}-route.${RHT_OCP4_WILDCARD_DOMAIN}
   13  lab openshift-resources finish
   14  curl php-helloworld-petronela-cretu-route.apps.eu45.prod.nextcle.com
   15  oc --help
   17  oc api-resources --help
   19  kubectl api-resources --help
   21  oc new-app
   23  oc new-app --help
   25  lab openshift-resources start
   26  oc login petronela-cretu
   27  oc login --help
   28  oc login https://console-openshift-console.apps.eu45.prod.nextcle.com
   29  oc login https://api.eu45.prod.nextcle.com:6443
   30  lab openshift-resources start
   31  lab-configure
   32  lab openshift-resources start
   36  source /usr/local/etc/ocp4.config
   37  cd /usr/local/etc/ocp4.config
   40  oc login -u ${RHT_OCP4_DEV_USER} -p  ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
   41  oc new-project lessonProject
   42  oc new-project lesson
   43  oc login -u ${RHT_OCP4_DEV_USER} -p  ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
   44  oc new-project ${RHT_OCP4_DEV_USER}-mysql-openshift
   45  oc new-app --as-deployment-config  --docker-image=registry.access.redhat.com/rhscl/mysql-57-rhel7:latest  --name=mysql-openshift -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=testdb -e MYSQL_ROOT_PASSWORD=r00tpa55
   46  oc status
   47  oc status --suggest
   48  oc set probe dc/mysql-openshift --readiness
   49  oc status
   50  oc get pods
   61  oc get pods -o=wide
   62  oc describe pod 
   63  oc describe pod openshift-1-w4zgx to eu45-tj76l-worker-8pkfg
   64  oc get pods -o
   65  oc describe pod mysql-openshift-1-deploy
   66  kubectl get pods
   67  kubectl pod describe 
   68  kubectl describe pod mysql-openshift-1-deploy
   69  kubectl get svc
   70  oc describe serviceql-openshift
   71  kubectl describe service mysql-openshift
   72  kubectl describe dc  mysql-openshift
   73  oc expose service mysql-openshift 
   74  oc get routes
   75  oc port-forward mysql-openshift-1-glqrp 3306:3306
   76  oc port-forward mysql-openshift-1 3306:3306
   77  oc get pods
   78  oc port-forward mysql-openshift-1-w4zgx 3306:3306
   79  lab openshift-routes start
   80  oc get project
   81  source /usr/local/etc/ocp4.config
   82  oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
   83  oc new-project ${RHT_OCP4_DEV_USER}-route
   84  kubectl create deployment hello-node --image=gcr.io/hello-minikube-zero-install/hello-node
   85  kubectl describe dc hello-node
   86  kubectl get nodes
   87  kubectl get pods
   88  oc new-app --as-deployment-config php:7.3~https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps  --context-dir php-helloworld --name php-helloworld
   89  oc get pods --help
   90  oc get pods -w
   91  oc logs
   92  oc describe svc/php-helloworld
   93  oc expose svc/php-helloworld
   94  oc describe route
   95  oc get routes
   96  oc delete route --all
   97  oc exposelab openshift-routes finish
   98  lab openshift-routes finish
   99  echo $PATH
  100  pwd
  101  ls
  102  chmod +x scr1 
  103  ./scr1
  104  ./scr1 
  105  sh scr1 
  106  ./scr1 
  107  help
  108  which oc
  111  ./scr1 
  112  chmod +x scr1 
  113  ll
  115  cd scripting/
  117  w
  118  ./scr1.sh 
  119  ./scr1 
  120  vim src2
  125  chmod  +x src2
  126  source src2
  127  vim src2 
  128  sh src2
  129  . src2
  136  oc edit is php -n openshift
  137   is php -n openshift
  150  tree lib
  153  tree lib | grep openshift
  154  oc edit is php -n openshift
  158  lab-configure 
  160  git clone https://github.com/PetronellaPC/DO180-apps
  162  cd DO180-apps/
  163  git status
  164  vim --help
  165  touch Dockerfile
  166  vim Dockerfile 
  168  sudo podman build -t apacheimg-e:exercise .
  170  vim Dockerfile 
  176  sudo podman images
  177  vim Dockerfile 
  178  mkdir MyExercises
  179  mv Dockerfile MyExercises/
  184  sudo podman build -t apacheimg:exercise .
  188  sudo podman build -t apache-e:exercise --logfile log.log .
  189  ls
  190  cat log.log 
  195  podman rm --help
  196  podman images
  197  sudo podman images
  198  sudo podman rmi 0355
  199  sudo podman rmi --all
  200  sudo podman rmi --all -f
  201  sudo podman rmi --help
  202  sudo podman images
  203  sudo podman rmi --all -f
  204  sudo podman rmi 0355
  205  sudo podman search --help
  206  sudo podman search apache
  207  vim Dockerfile 
  208  sudo podman build -t apacheimg:exercise --logfile apache.log .
  209  vim Dockerfile 
  210  sudo podman build -t apacheimg:exercise --logfile apache-e.log .
  211  sudo podman run -h
  212  sudo podman run --help
  213  sudo podman run --name apacheimg -d -p 10080:80 
  214  sudo podman run --name apachecont -d -p 10080:80 apacheimg
  215  sudo podman images
  216  sudo podman run --name apachecont -d -p 10080:80 da3160db4cbb
  217  sudo podman pods
  218  sudo podman pod
  219  sudo podman get pods
  220  sudo podman pod ls
  221  sudo podman ps
  222  curl localhost:10080
  223  cd ..
  224  git commit -am "exercise on creating an image from a dockerfile"
  225  git add .
  226  sudo git add .
  227  git commit -am "exercise on creating an image from a dockerfile"
  228  cat localhost/apacheimg
  229  curl localhost/apacheimg
  230  cd /etc/containers/
  231  ls
  232  cat registries.conf 
  233  vim registries.conf 
  238  cd DO180-apps/
  239  cd /var/lib/containers/storage
  240  sudo cd /var/lib/containers/storage
  241  sudo podman push --help
  242  sudo podman push apacheimg quay.io/petronella/do180
  243  sudo podman push da3160db4cbb quay.io/petronella/do180
  244  docker pull quay.io/petronella/do180
  245  sudo podman pull quay.io/petronella/do180
  248  sudo podman push da3160db4cbb quay.io/petronella/do180
  249  git status
  256  sudo podman inspect da3160db4cbb
  263  sudo podman push quay.io/localhost/apacheimg 
  264  sudo podman push localhost/apacheimg quay.io/localhost/apacheimg 
  265  sudo podman images
  266  sudo podman push apacheimg quay.io/localhost/apacheimg 
  278  tree / | grep s2i
  279  git clone https://github.com/PetronellaPC/OpenShiftRepository.git
  282  mv --help
  283  mv DO180-apps/MyExercises OpenShiftRepository/
  284  cd OpenShiftRepository/
  291  oc new-app https://github.com/PetronellaPC/OpenShiftRepository.git
  292  oc new-app https://github.com/PetronellaPC/OpenShiftRepository.git --name=nodejsapp --as-deployment-config
  293  sudo podman search nodejs
  295  vim Dockerfile.yaml 
  303  oc new-app https://github.com/PetronellaPC/OpenShiftRepository.git --name=nodejsapp --as-deployment-config
  304  registry.access.redhat.com/rhscl/nodejs-10-rhel7
  305  oc new-app https://github.com/openshift/ruby-hello-world --name=ruby-hello --as-deployment-config
  312  sudo podman build .
  316  vim Dockerfile
  317  sudo podman build .
  318  vim Dockerfile
  321  sudo podman build -t nodejsapp:exercise .
  322  sudo podman images
  333  oc get ruby-hello
  334  oc get dc ruby-hello
  335  oc inspect dc ruby-hello
  336  oc describe dc ruby-hello
  337  oc describe dc ruby-hello > ocapp.yaml
  338  cat ocapp.yaml 
  344  oc get -l deploymentconfig=ruby-hello
  346  oc describe bc ruby-hello > bcapp.yaml
  347  cat bcapp.yaml 
  348  oc get all
  350  FROM registry.access.redhat.com/rhscl/nodejs-10-rhel7
  351  ADD nodejs.js /nodejs.js
  352  ENTRYPOINT ["node", "nodejs.js"]
  354  oc new-app --as-deployment-config nodejs~https://github.com/PetronellaPC/OpenShiftRepository.git --name=myapp
  356  sudo yum install bash-completion
  357  mkdir scripting
  358  cd scripting/
  359  vim scr1
  361  vim nodejs.js 
  367  oc expose service nodejs.js --name nodejs
  368  oc get all
  369  oc expose service myapp --name nodejs
  373  oc describe service nodejs
  374  curl 172.30.212.217:80
  375  vim nodejs.js 
  376  curl 172.30.212.217:8080
  377  oc describe service/myapp
  378  sudo podman pods
  381  sudo podman ps
  382  oc get pod --all-namespaces -l app=router
  387  oc get all
  392  oc logs pod/myapp-1-build
  401  which lab
  403  cd $(which lab)
  404  cat $(which lab)
  406  alias c=clear
  407  c
  410  lab openshift-s2i start
  415  find / -name openshift-s2i | grep openshift-s2i
  416  tree / | grep openshift-s2i
  418  which lab
  419  cd /usr/local/bin/
  420  ls
  422  cat lab
  423  cd /usr/local/lib
  425  cat lab-openshift-s2i 
  426  lab openshift-s2i start
  427  cd 
  428  lab openshift-s2i start
  429  cd DO180-apps
  430  ls
  431  tree / | grep s2i-php-container
  447  lab openshift-s2i start
  452  cd DO180
  454  cd labs/openshift-s2i/
  456  tree s2i-php-container/
  457  cat s2i-php-container/5.6/s2i/bin/assemble
  458  cat s2i-php-container/5.6/s2i/bin/run
  459  c
  460  cat s2i-php-container/5.6/Dockerfile.rhel7
  461  vim s2i-php-container/5.6/Dockerfile.rhel7
  464  cd DO180-apps/
  465  git checkout -b s2i
  466  git push -u origin s2i
  467  source /usr/local/etc/ocp4.config
  468  oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
  469  oc new-project ${RHT_OCP4_DEV_USER}-s2i
  470  oc new-app --as-deployment-config php:7.3 --name=php-helloworld https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps#s2i --context-dir php-helloworld
  471  oc status
  472  oc get pods
  473  oc expose service php-helloworld --name ${RHT_OCP4_DEV_USER}-helloworld
  474  oc get route --all
  475  oc get route 
  476  curl petronela-cretu-helloworld-petronela-cretu-s2i.apps.eu45.prod.nextcle.com
  477  ls
  478  cd php-helloworld/
  479  vim index.php 
  480  git add .
  481  git commit -m 'index file edited'
  482  git push origin s2i
  483  oc start-build php-helloworld 
  484  oc get pods
  485  curl petronela-cretu-helloworld-petronela-cretu-s2i.apps.eu45.prod.nextcle.com
  486  lab openshift-s2i finish
  487  lab multicontainer-design start
  488  c
  489  vim /home/student/DO180/labs/multicontainer-design/images/mysql/Dockerfile
  490  cd /home/student/DO180/labs/multicontainer-design/images
  491  podman build -t do180/mysql-57-rhel7 --layers=false
  492  cd mysql/
  493  podman build -t do180/mysql-57-rhel7 --layers=false
  494  sudo podman build -t do180/mysql-57-rhel7 --layers=false
  495  cd ..
  497  sudo podman build -t do180/mysql-57-rhel7 --layers=false .
  499  vim /home/student/DO180/labs/multicontainer-design/images/mysql/Dockerfile
  500  cd /home/student/DO180/labs/multicontainer-design/images/mysql/
  501  ls
  502  sudo podman build -t do180/mysql-57-rhel7 --layers=false .
  503  sudo podman images
  504  cd ..
  505  ls
  506  cd nodejs/
  507  vim Dockerfile 
  508  ls
  509  sudo podman build -t do180/nodejs --layers=false .
  510  sudo podman images
  511  cd ..
  512  ls
  513  cd deploy/
  514  ls
  515  cd nodejs/
  516  vim Dockerfile 
  517  ls
  518  cd nodejs-source/models/
  519  vim db.js 
  520  cd ..
  521  ls
  522  vim build.sh 
  523  ./build.sh 
  524  ls
  525  cat build.sh
  526  sudo podman images
  527  pwd
  528  cd networked/
  529  ls
  530  vim run.sh 
  531  ./run.sh
  532  sudo podman ps
  533  sudo podman exec -it todoapi env
  534  curl -w "\n" http://127.0.0.1:30080/todo/api/items/1
