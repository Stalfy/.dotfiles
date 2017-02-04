nstructions after installing ubuntu 16.04
  <ol>
    <li> Removing the hard block on airplane mode. (This method will leave the LED on but enable wi-fi)
      <ul>
        <li>sudo apt-get update
        <li>sudo apt-get upgrade
        <li>echo "options asus_nb_wmi wapf=1" | sudo tee /etc/modprobe.d/asus_nb_wmi.conf
      </ul>
    </li>
    <li> Installing git
      <ul>
        <li>sudo apt-get update
        <li>sudo apt-get install git
      </ul>
    </li>
    <li> Installing vim
      <ul>
        <li>sudo apt-get vim
      </ul>
    </li>
    <li> Installing latest Java
      <ul>
        <li>sudo apt-get install default-jdk
      </ul>
    </li>
    <li> Installing NetBeans
      <ul>
        <li>sudo add-apt-repository ppa:vajdics/netbeans-installer
        <li>sudo apt update
        <li>sudo apt upgrade
        <li>sudo apt install netbeans-installer
      </ul>
    </li>
  </ol>

