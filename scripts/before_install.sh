killall node

if [ -d /home/ec2-user/albasg ]; then
    rm -rf /home/ec2-user/albasg
fi

mkdir -vp /home/ec2-user/albasg