FasdUAS 1.101.10   ��   ��    k             l      �� ��   XR
Download alert for use with YazSoft's Speed Download 2.


For the Folder Notification scripts to work, they have to be placed in "Scripts/Folder Action Scripts" ... either in /Library or ~/Library. After placing them there, right-click on the folder for which you want notifications and choose "Attach a Folder Action."


Based on ADD - NEW ITEM ALERT (�2002 Apple Computer)

This Folder Action script is designed for use with Mac OS X version 10.2 and higher.

This Folder Action handler is triggered whenever a download item is added to the attached folder
or if the download has finished. 
       	  l     ������  ��   	  
  
 i         I     ��  
�� .facofget****      � ****  o      ���� 0 this_folder    �� ��
�� 
flst  o      ���� 0 added_items  ��    Q     �  ��  k    �       r        m        .incomplete     o      ���� 0 	extension        r        n    
    1    
��
�� 
leng  o    ���� 0 	extension    o      ���� 0 ext_len         r     ! " ! J    ����   " o      ���� 0 started_items      # $ # r     % & % J    ����   & o      ���� 0 finished_items   $  ' ( ' O    W ) * ) X    V +�� , + k   + Q - -  . / . r   + 0 0 1 0 l  + . 2�� 2 n   + . 3 4 3 1   , .��
�� 
pnam 4 o   + ,���� 0 thefile theFile��   1 o      ���� 0 	file_name   /  5�� 5 Z   1 Q 6 7�� 8 6 D   1 4 9 : 9 o   1 2���� 0 	file_name   : o   2 3���� 0 	extension   7 r   7 J ; < ; l  7 G =�� = e   7 G > > n   7 G ? @ ? 7  8 F�� A B
�� 
ctxt A m   < >����  B l  ? E C�� C \   ? E D E D l  @ C F�� F n   @ C G H G 1   A C��
�� 
leng H o   @ A���� 0 	file_name  ��   E o   C D���� 0 ext_len  ��   @ o   7 8���� 0 	file_name  ��   < n       I J I  ;   H I J o   G H���� 0 started_items  ��   8 r   M Q K L K o   M N���� 0 	file_name   L n       M N M  ;   O P N o   N O���� 0 finished_items  ��  �� 0 thefile theFile , o    ���� 0 added_items   * m     O O�null     ߀��  "
Finder.app�����׀��Ѩ   }�����א}�0   )       �B(�Й̿��~MACS   alis    r  Macintosh HD               �N�.H+    "
Finder.app                                                       3��n�H        ����  	                CoreServices    �N�      �n�8      "      3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   (  P Q P r   X ] R S R o   X Y��
�� 
ret  S n      T U T 1   Z \��
�� 
txdl U 1   Y Z��
�� 
ascr Q  V W V r   ^ c X Y X c   ^ a Z [ Z o   ^ _���� 0 started_items   [ m   _ `��
�� 
TEXT Y o      ���� 0 started_names   W  \ ] \ r   d i ^ _ ^ c   d g ` a ` o   d e���� 0 finished_items   a m   e f��
�� 
TEXT _ o      ���� 0 finished_names   ]  b c b r   j o d e d m   j k f f       e n      g h g 1   l n��
�� 
txdl h 1   k l��
�� 
ascr c  i j i r   p x k l k n  p v m n m I   q v�� o���� 0 alias_to_url alias_to_URL o  p�� p o   q r���� 0 this_folder  ��  ��   n  f   p q l o      ���� 0 folder_icon   j  q r q l  y y������  ��   r  s t s r   y � u v u l  y ~ w�� w n   y ~ x y x m   | ~��
�� 
nmbr y n  y | z { z 2  z |��
�� 
cobj { l  y z |�� | o   y z���� 0 started_items  ��  ��   v l      }�� } o      ���� 0 
item_count  ��   t  ~  ~ Z   � � � ����� � ?  � � � � � o   � ����� 0 
item_count   � m   � �����   � k   � � � �  � � � Z   � � � ��� � � ?  � � � � � l  � � ��� � o   � ����� 0 
item_count  ��   � m   � �����  � r   � � � � � m   � � � �  Started downloads    � o      ���� 	0 title  ��   � r   � � � � � m   � � � �  Started download    � o      ���� 	0 title   �  ��� � I   � ��� ����� 0 growlnotify GrowlNotify �  � � � m   � � � �  Download started    �  � � � o   � ����� 	0 title   �  � � � o   � ����� 0 started_names   �  � � � o   � ����� 0 folder_icon   �  ��� � m   � ���
�� boovfals��  ��  ��  ��  ��     � � � l  � �������  ��   �  � � � r   � � � � � l  � � ��� � n   � � � � � m   � ���
�� 
nmbr � n  � � � � � 2  � ���
�� 
cobj � l  � � ��� � o   � ����� 0 finished_items  ��  ��   � l      ��� � o      ���� 0 
item_count  ��   �  ��� � Z   � � � ����� � ?  � � � � � o   � ����� 0 
item_count   � m   � �����   � k   � � � �  � � � Z   � � � ��� � � ?  � � � � � l  � � ��� � o   � ����� 0 
item_count  ��   � m   � �����  � r   � � � � � m   � � � �  Finished downloads    � o      ���� 	0 title  ��   � r   � � � � � m   � � � �  Finished download    � o      ���� 	0 title   �  ��� � I   � ��� ����� 0 growlnotify GrowlNotify �  � � � m   � � � �  Download finished    �  � � � o   � ����� 	0 title   �  � � � o   � ����� 0 finished_names   �  � � � o   � ����� 0 folder_icon   �  ��� � m   � ���
�� boovfals��  ��  ��  ��  ��  ��    R      ������
�� .ascrerr ****      � ****��  ��  ��     � � � l     ������  ��   �  � � � i     � � � I      �� ����� 0 growlnotify GrowlNotify �  � � � o      ���� 0 thename theName �  � � � o      ���� 0 thetitle theTitle �  � � � o      ���� 0 thetext theText �  � � � o      ����  0 imagespecifier imageSpecifier �  ��� � o      ���� 0 issticky isSticky��  ��   � k     | � �  � � � O     � � � r     � � � l 	   ��� � l    ��� � I   �� ���
�� .corecnte****       **** � l    �� � 6    � � � 2   �~
�~ 
pcap � l    ��} � =    � � � 1   	 �|
�| 
pnam � l 	   ��{ � m     � �  GrowlHelperApp   �{  �}  �  ��  ��  ��   � o      �z�z 0 growlrunning GrowlRunning � m      � ��null     ߀��  "System Events.app��ш   }�����ؠ}�(   )       �B(�Й̿�� ~sevs   alis    �  Macintosh HD               �N�.H+    "System Events.app                                                \e�n�
        ����  	                CoreServices    �N�      �n��      "      :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l   �y�x�y  �x   �  ��w � Z    | � ��v � � @     � � � o    �u�u 0 growlrunning GrowlRunning � m    �t�t  � k    \ � �  � � � r    ! � � � m     � �  Folder Actions    � o      �s�s 0 appname appName �  � � � r   " ) �  � J   " '  m   " #  New item     m   # $  Download started    �r m   $ %		  Download finished   �r    o      �q�q 
0 notifs   � 
�p
 O   * \ k   . [  I  . =�o�n
�o .registernull��� ��� null�n   �m
�m 
appl o   0 1�l�l 0 appname appName �k
�k 
anot o   2 3�j�j 
0 notifs   �i
�i 
dnot o   4 5�h�h 
0 notifs   �g�f
�g 
iapp m   6 7  Finder   �f   �e I  > [�d�c
�d .notifygrnull��� ��� null�c   �b
�b 
name o   B C�a�a 0 thename theName �`
�` 
titl o   F G�_�_ 0 thetitle theTitle �^ 
�^ 
appl o   H I�]�] 0 appname appName  �\!"
�\ 
desc! o   L M�[�[ 0 thetext theText" �Z#$
�Z 
ifil# o   P Q�Y�Y  0 imagespecifier imageSpecifier$ �X%�W
�X 
stck% o   T U�V�V 0 issticky isSticky�W  �e   m   * +&&Znull     ߀�� "��GrowlHelperApp.app�ш   }��� ����}�0   )       �B(�Й̿��P~GRRR   alis    �  Macintosh HD               �N�.H+   "��GrowlHelperApp.app                                              "�ٽ��        ����  	                	Resources     �N�      ���     "�� "�� "�� W T� T�  \�  fMacintosh HD:Users:ingmar:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  YUsers/ingmar/Library/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app   /    ��  �p  �v   � I  _ |�U'(
�U .sysodlogaskr        TEXT' b   _ j)*) b   _ h+,+ b   _ d-.- o   _ `�T�T 0 thetitle theTitle. o   ` c�S
�S 
ret , o   d g�R
�R 
ret * o   h i�Q�Q 0 thetext theText( �P/0
�P 
btns/ J   m r11 2�O2 m   m p33  OK   �O  0 �N4�M
�N 
dflt4 m   u v�L�L �M  �w   � 565 l     �K�J�K  �J  6 787 l     �I9�I  9 / ) translate a file alias to a file:/// URL   8 :;: i    <=< I      �H>�G�H 0 alias_to_url alias_to_URL> ?�F? o      �E�E 0 	this_file  �F  �G  = k     R@@ ABA r     CDC c     EFE n     GHG 1    �D
�D 
psxpH o     �C�C 0 	this_file  F m    �B
�B 
ctxtD o      �A�A 0 	this_file  B IJI r    KLK m    	MM  /   L n     NON 1   
 �@
�@ 
txdlO 1   	 
�?
�? 
ascrJ PQP r    RSR n    TUT 2    �>
�> 
citmU o    �=�= 0 	this_file  S l     V�<V o      �;�; 0 path_segments  �<  Q WXW Y    ;Y�:Z[�9Y k   " 6\\ ]^] r   " (_`_ n   " &aba 4   # &�8c
�8 
cobjc o   $ %�7�7 0 i  b l  " #d�6d o   " #�5�5 0 path_segments  �6  ` o      �4�4 0 this_segment  ^ e�3e r   ) 6fgf l 	 ) 1h�2h n  ) 1iji I   * 1�1k�0�1 0 encode_text  k lml o   * +�/�/ 0 this_segment  m non m   + ,�.
�. boovtrueo p�-p m   , -�,
�, boovfals�-  �0  j  f   ) *�2  g n      qrq 4   2 5�+s
�+ 
cobjs o   3 4�*�* 0 i  r l  1 2t�)t o   1 2�(�( 0 path_segments  �)  �3  �: 0 i  Z m    �'�' [ l   u�&u I   �%v�$
�% .corecnte****       ****v l   w�#w o    �"�" 0 path_segments  �#  �$  �&  �9  X xyx r   < Az{z m   < =||  /   { n     }~} 1   > @�!
�! 
txdl~ 1   = >� 
�  
ascry � r   B G��� c   B E��� l  B C��� o   B C�� 0 path_segments  �  � m   C D�
� 
TEXT� o      �� 0 	this_file  � ��� r   H M��� m   H I��      � n     ��� 1   J L�
� 
txdl� 1   I J�
� 
ascr� ��� L   N R�� b   N Q��� m   N O��  file://   � o   O P�� 0 	this_file  �  ; ��� l     ���  �  � ��� i    ��� I      ���� 0 encode_text  � ��� o      �� 0 	this_text  �  �  � k     :�� ��� r     ��� l 	   ��� m     �� . (abcdefghijklmnopqrstuvwxyz0123456789.-_:   �  � l     ��� o      �� 0 acceptable_characters  �  � ��� r    ��� m    ��      � l     ��� o      �� 0 encoded_text  �  � ��� X    7���� Z    2����� E   ��� l   ��
� o    �	�	 0 acceptable_characters  �
  � o    �� 0 	this_char  � r    #��� l   !��� b    !��� l   ��� o    �� 0 encoded_text  �  � o     �� 0 	this_char  �  � l     ��� o      �� 0 encoded_text  �  �  � r   & 2��� c   & 0��� l  & .��� b   & .��� l  & '�� � o   & '���� 0 encoded_text  �   � l 	 ' -���� I   ' -������� 0 encode_char  � ���� o   ( )���� 0 	this_char  ��  ��  ��  �  � m   . /��
�� 
TEXT� l     ���� o      ���� 0 encoded_text  ��  � 0 	this_char  � o    ���� 0 	this_text  � ���� L   8 :�� l  8 9���� o   8 9���� 0 encoded_text  ��  ��  � ��� l     ������  ��  � ���� i    ��� I      ������� 0 encode_char  � ���� o      ���� 0 	this_char  ��  ��  � k     K�� ��� r     ��� l    ���� l    ���� I    �����
�� .sysoctonshor       TEXT� o     ���� 0 	this_char  ��  ��  ��  � l     ���� o      ���� 0 	ascii_num 	ASCII_num��  � ��� r     ��� l 	  ���� J    �� ��� m    	��  0   � ��� m   	 
��  1   � ��� m   
 ��  2   � ��� m    ��  3   � ��� m    ��  4   � ��� m    ��  5   � ��� m    ��  6   � ��� l 	  ���� m    ��  7   ��  � ��� m    ��  8   � ��� m    ��  9   � ��� m    ��  A   �    m      B     m      C     m      D    	
	 l 	  �� m      E   ��  
 �� m      F   ��  ��  � l     �� o      ���� 0 hex_list  ��  �  r   ! / n   ! - 4   " -��
�� 
cobj l  % ,�� [   % , l  % *�� _   % * o   % &���� 0 	ascii_num 	ASCII_num m   & )���� ��   m   * +���� ��   l  ! "�� o   ! "���� 0 hex_list  ��   o      ���� 0 x    r   0 > !  n   0 <"#" 4   1 <��$
�� 
cobj$ l  4 ;%��% [   4 ;&'& l  4 9(��( `   4 9)*) o   4 5���� 0 	ascii_num 	ASCII_num* m   5 8���� ��  ' m   9 :���� ��  # l  0 1+��+ o   0 1���� 0 hex_list  ��  ! o      ���� 0 y   ,��, L   ? K-- c   ? J./. l  ? F0��0 b   ? F121 b   ? D343 m   ? B55  %   4 o   B C���� 0 x  2 o   D E���� 0 y  ��  / m   F I��
�� 
TEXT��  ��       ��6789:;��  6 ����������
�� .facofget****      � ****�� 0 growlnotify GrowlNotify�� 0 alias_to_url alias_to_URL�� 0 encode_text  �� 0 encode_char  7 �� ����<=��
�� .facofget****      � ****�� 0 this_folder  �� ������
�� 
flst�� 0 added_items  ��  < ���������������������������� 0 this_folder  �� 0 added_items  �� 0 	extension  �� 0 ext_len  �� 0 started_items  �� 0 finished_items  �� 0 thefile theFile�� 0 	file_name  �� 0 started_names  �� 0 finished_names  �� 0 folder_icon  �� 0 
item_count  �� 	0 title  =  �� O������������������ f���� � � ����� � � �����
�� 
leng
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
ctxt
�� 
ret 
�� 
ascr
�� 
txdl
�� 
TEXT�� 0 alias_to_url alias_to_URL
�� 
nmbr�� �� 0 growlnotify GrowlNotify��  ��  �� � ��E�O��,E�OjvE�OjvE�O� = :�[��l kh ��,E�O�� �[�\[Zk\Z��,�2E�6FY ��6F[OY��UO���,FO��&E�O��&E�O���,FO)�k+ E�O��-�,E�O�j %�k �E�Y a E�O*a ���fa + Y hO��-�,E�O�j '�k 
a E�Y a E�O*a ���fa + Y hW X  h8 �� �����>?���� 0 growlnotify GrowlNotify�� ��@�� @  ������������ 0 thename theName�� 0 thetitle theTitle�� 0 thetext theText��  0 imagespecifier imageSpecifier�� 0 issticky isSticky��  > ������������������ 0 thename theName�� 0 thetitle theTitle�� 0 thetext theText��  0 imagespecifier imageSpecifier�� 0 issticky isSticky�� 0 growlrunning GrowlRunning�� 0 appname appName�� 
0 notifs  ?  ���A�� ��� �	&��������������������~�}�|�{�z3�y�x�w
�� 
pcapA  
�� 
pnam
�� .corecnte****       ****
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
�� 
name
�� 
titl
�� 
desc
� 
ifil
�~ 
stck�} 
�| .notifygrnull��� ��� null
�{ 
ret 
�z 
btns
�y 
dflt�x 
�w .sysodlogaskr        TEXT�� }� *�-�[�,\Z�81j E�UO�k C�E�O���mvE�O� /*������a  O*a �a ��a �a �a �a  UY �_ %_ %�%a a kva ka  9 �v=�u�tBC�s�v 0 alias_to_url alias_to_URL�u �rD�r D  �q�q 0 	this_file  �t  B �p�o�n�m�p 0 	this_file  �o 0 path_segments  �n 0 i  �m 0 this_segment  C �l�kM�j�i�h�g�f�e|�d��
�l 
psxp
�k 
ctxt
�j 
ascr
�i 
txdl
�h 
citm
�g .corecnte****       ****
�f 
cobj�e 0 encode_text  
�d 
TEXT�s S��,�&E�O���,FO��-E�O &k�j kh ��/E�O)�efm+ ��/F[OY��O���,FO��&E�O���,FO�%: �c��b�aEF�`�c 0 encode_text  �b �_G�_ G  �^�^ 0 	this_text  �a  E �]�\�[�Z�] 0 	this_text  �\ 0 acceptable_characters  �[ 0 encoded_text  �Z 0 	this_char  F ���Y�X�W�V�U
�Y 
kocl
�X 
cobj
�W .corecnte****       ****�V 0 encode_char  
�U 
TEXT�` ;�E�O�E�O .�[��l kh �� 
��%E�Y �*�k+ %�&E�[OY��O�; �T��S�RHI�Q�T 0 encode_char  �S �PJ�P J  �O�O 0 	this_char  �R  H �N�M�L�K�J�N 0 	this_char  �M 0 	ascii_num 	ASCII_num�L 0 hex_list  �K 0 x  �J 0 y  I �I������������H�G5�F
�I .sysoctonshor       TEXT�H 
�G 
cobj
�F 
TEXT�Q L�j  E�O���������������a a vE�O�a �a "k/E�O�a �a #k/E�Oa �%�%a & ascr  ��ޭ