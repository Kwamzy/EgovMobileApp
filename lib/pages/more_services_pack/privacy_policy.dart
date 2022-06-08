import 'package:egovservice/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Privacy_Policy extends StatelessWidget{
  const Privacy_Policy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.4,
        leading: BackButton(
          color: Palette.activeColor,
          onPressed: (){
            Navigator.of(context).maybePop();;
          },
        ),
        title: Text(
          "Privacy Policy",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
              fontSize: 18,
              color: Colors.black
          ),
        ),
      ),
      body: Scaffold(
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.only(left: 30, right: 30),

          child: SingleChildScrollView(

            child: Column(
              children: <Widget>[

                SizedBox(height: 10,),

                Image(
                  image: AssetImage("assets/images/Accra_pic_5.png"),
                ),
                SizedBox(height: 20,),
                Text(
                  "By downloading any application from Electricity Company of Ghana or iOS™M (here after referred to as VFM Systems), installing or using this application or any portion thereof ('Application'), you agree to the following terms and conditions (the 'Terms and Conditions'). \n1. USE OF APPLICATION a. VFM Systems grants you the non-exclusive, non-transferable, limited right and license to install and use this Application solely and exclusively for your personal use. b. You may not use the Application in any manner that could damage, disable, overburden, or impair the Application (or servers or networks connected to the Application), nor may you use the Application in any manner that could interfere with any other party's use and enjoyment of the Application (or servers or networks connected to the Application). c. You agree that you are solely responsible for (and that VFM Systems has no responsibility to you or to any third party for) your use of the Application, any breach of your obligations under the Terms and Conditions, and for the consequences (including any loss or damage which VFM Systems may suffer) of any such breach. \n2. PROPRIETARY RIGHTS You acknowledge that (a) the Application contains proprietary and confidential information that is protected by applicable intellectual property and other laws, and (b) VFM Systems and its contractors' own all right, title and interest in and to the Application and content, excluding content provided by you, that may be presented or accessed through the Application, including without limitation all Intellectual Property Rights therein and thereto. 'Intellectual Property Rights' means any and all rights existing from time to time under patent law, copyright law, trade secret law, trademark law, unfair competition law, and any and all other proprietary rights, and any and all applications, renewals, extensions and restorations thereof, now or hereafter in force and effect worldwide. You agree that you will not, and will not allow any third party to, (i) copy, sell, license, distribute, transfer, modify, adapt, translate, prepare derivative works from, decompile, reverse engineer, disassemble or otherwise attempt to derive source code from the Application or content that may be presented or accessed through the Application for any purpose, unless otherwise permitted, (1) take any action to circumvent or defeat the security or content usage rules provided, deployed or enforced by any functionality (including without limitation digital rights management functionality) contained in the Application, (ili) use the Application to access, copy, transfer, transcode or retransmit content in violation of any law or third party rights, or (iv) remove, obscure, or alter VFM Systems's or its contractors' copyright notices, trademarks or other proprietary rights notices affixed to or contained within or accessed in conjunction with or through the Application. \n3. TERMINATION These Terms and Conditions will continue to apply until terminated by either you or VFM Systems as set forth below. You may terminate these Terms and Conditions at any time by permanently deleting the Application from your mobile device in its entirety. Your rights automatically and immediately terminate without notice from VFM Systems if you fail to comply with any provision of these Terms and Conditions. In such event, you must immediately delete the Application. \n4. INDEMNITY To the maximum extent permitted by law, you agree to defend, indemnify and hold harmless VFM Systems, its affiliates and their respective directors, officers, employees and agents from and against any and all claims, actions, suits or proceedings, as well as any and all losses, liabilities, damages, costs and expenses (including reasonable attorneys fees) arising out of or accruing from your use of the Application, including your downloading, installation, or use of the Application, or your violation of these Terms and Conditions. \n5. DISCLAIMER OF WARRANTIES a. YOU EXPRESSLY UNDERSTAND AND AGREE THAT YOUR USE OF THE APPLICATION IS AT YOUR SOLE DISCRETION AND RISK AND THAT THE APPLICATION IS PROVIDED AS IS AND AS AVAILABLE WITHOUT WARRANTY OF ANY KIND. b. YOU ARE SOLELY RESPONSIBLE FOR ANY DAMAGE TO YOUR MOBILE DEVICE, OR OTHER DEVICE, OR LOSS OF DATA THAT RESULTS FROM SUCH USE. C. VFM Systems FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES AND CONDITIONS OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO THE IMPLIED WARRANTIES AND CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON- INFRINGEMENT, WITH RESPECT TO THE APPLICATION d. THE APPLICATION IS NOT INTENDED FOR USE IN THE OPERATION OF NUCLEAR FACILITIES, LIFE SUPPORT SYSTEMS, EMERGENCY COMMUNICATIONS, AIRCRAFT NAVIGATION OR COMMUNICATION SYSTEMS, AIR TRAFFIC CONTROL SYSTEMS, OR ANY OTHER ACTIVITIES IN WHICH THE FAILURE OF THE APPLICATION COULD LEAD TO DEATH, PERSONAL INJURY, OR SEVERE PHYSICAL OR ENVIRONMENTAL DAMAGE. \n6. LIMITATION OF LIABILITY YOU EXPRESSLY UNDERSTAND AND AGREE THAT VFM Systems, ITS SUBSIDIARIES AND AFFILIATES, AND ITS LICENSORS ARE NOT LIABLE TO YOU UNDER ANY THEORY OF LIABILITY FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL CONSEQUENTIAL OR EXEMPLARY DAMAGES THAT MAY BE INCURRED BY YOU THROUGH YOUR USE OF THE APPLICATION, INCLUDING ANY LOSS OF DATA OR DAMAGE TO YOUR MOBILE DEVICE, WHETHER OR NOT VFM Systems OR ITS REPRESENTATIVES HAVE BEEN ADVISED OF OR SHOULD HAVE BEEN AWARE OF THE POSSIBILITY OF ANY SUCH LOSSES ARISING. \n7. MISCELLANEOUS a. These Terms and Conditions constitute the entire Agreement between you and VFM Systems relating to the Application and govern your use of the Application, and completely replace any prior or contemporaneous agreements between you and VFM Systems regarding the Application. b. The failure of VFM Systems to exercise or enforce any right or provision of these Terms and Conditions does not constitute a waiver of such right or provision, which will still be available to VFM Systems. c. If any court of law, having the jurisdiction to decide on this matter, rules that any provision of these Terms and Conditions is invalid, then that provision will be removed from the Terms and Conditions without affecting the rest of the Terms and Conditions. The remaining provisions of these Terms and Conditions will continue to be valid and enforceable. d. The rights granted in these Terms and Conditions may not be assigned or transferred by either you or VFM Systems without the prior written approval of the other party. Neither you nor VFM Systems are permitted to delegate their responsibilities or obligations under these Terms and Conditions without the prior written approval of the other party. e. These Terms and Conditions and your relationship with VFM Systems under these Terms and Conditions will be governed by the laws of Ghana without regard to its conflict of laws provisions. You and VFM Systems agree to submit to the exclusive jurisdiction of the courts located within Ghana to resolve any legal matter arising from these Terms and Conditions. Notwithstanding this, you agree that VFM Systems will still be allowed to apply for injunctive remedies (or an equivalent type of urgent legal relief) in any jurisdiction.",
                  style: TextStyle(
                    height: 1.6,
                    color: Colors.black,
                    fontFamily: "Roboto",
                    fontSize: 16,
                    letterSpacing: 0.1,
                    wordSpacing: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}