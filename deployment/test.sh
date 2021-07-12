if kp build list spring-petclinic | grep STACK | grep x47838da3d5958cc29835d9908b1e6b9768893e5527a576b834dbcfaae70377e;
then
  echo "Image was part of a stack update"
else
  echo "Image was not part of a stack update"
fi

# | grep STACK | grep e47838da3d5958cc29835d9908b1e6b9768893e5527a576b834dbcfaae70377e