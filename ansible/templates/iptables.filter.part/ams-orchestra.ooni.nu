{% extends 'iptables.filter.part' %}

{% block svc %}
# http & https for public endpoints
-A INPUT -p tcp -m tcp --dport 80 --tcp-flags FIN,SYN,RST,ACK SYN -j ACCEPT
-A INPUT -p tcp -m tcp --dport 443 --tcp-flags FIN,SYN,RST,ACK SYN -j ACCEPT
-A INPUT -p tcp -m tcp --dport 8081 --tcp-flags FIN,SYN,RST,ACK SYN -j ACCEPT
{% endblock %}
