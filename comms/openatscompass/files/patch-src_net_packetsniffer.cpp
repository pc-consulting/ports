--- src/net/packetsniffer.cpp.orig	2024-02-29 09:52:46 UTC
+++ src/net/packetsniffer.cpp
@@ -220,8 +220,8 @@ void PacketSniffer::digestPCAPEtherPacket(int ether_ty
         if (ipHeader->ip_p == IPPROTO_TCP) 
         {
             tcpHeader  = (struct tcphdr*)(packet + sizeof(struct ip));
-            sourcePort = ntohs(tcpHeader->source);
-            destPort   = ntohs(tcpHeader->dest);
+            sourcePort = ntohs(tcpHeader->th_sport);
+            destPort   = ntohs(tcpHeader->th_dport);
 
             data       = (u_char*)(packet + sizeof(struct ip) + sizeof(struct tcphdr));
             dataLength = pkthdr->len - (data_offs + sizeof(struct ip) + sizeof(struct tcphdr));
@@ -231,8 +231,8 @@ void PacketSniffer::digestPCAPEtherPacket(int ether_ty
         else if (ipHeader->ip_p == IPPROTO_UDP) 
         {
             udpHeader  = (struct udphdr*)(packet + sizeof(struct ip));
-            sourcePort = ntohs(udpHeader->source);
-            destPort   = ntohs(udpHeader->dest);
+            sourcePort = ntohs(udpHeader->uh_sport);
+            destPort   = ntohs(udpHeader->uh_dport);
 
             data       = (u_char*)(packet + sizeof(struct ip) + sizeof(struct udphdr));
             dataLength = pkthdr->len - (data_offs + sizeof(struct ip) + sizeof(struct udphdr));
