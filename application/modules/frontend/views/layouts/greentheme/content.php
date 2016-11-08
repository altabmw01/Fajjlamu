<?php
if (trim($uri1) == 'page') { ?>
    <div class="row margin15">
        <div class="col-md-9 col-lg-9 col-sm-12 col-xs-12">
            <div class="leftinner_content leftinner_content_sub">
                <h1 class="blue"><?php __e((isset($single_page->PageTitle)) ? $single_page->PageTitle : ''); ?></h1>

                <div class='subpagecon'>
                    <?php __e((isset($single_page->Description)) ? $single_page->Description : ''); ?>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-lg-3 col-sm-12 col-xs-12">
            <div class="leftMenu">

                <div class="firstColumn">
                    <?php
                    owndebugger($blocks[0]);
                    __e('<h4 style="background: #278AF0">' . $blocks[0]->BlockTitle . '</h4>');
                    __e($blocks[0]->BlockContent);
                    ?>
                </div>
                <div class="clear margin15"></div>
                <div class="secondColumn">
                    <?php
                    __e('<h4 style="background: #7AB700">' . $blocks[1]->BlockTitle . '</h4>');
                    __e($blocks[1]->BlockContent);
                    ?>
                </div>
                <div class="clear margin15"></div>
                <div class="secondColumn">
                    <div class="secondColumn">
                        <?php
                        __e('<h4 style="background: #7AB700">' . $blocks[2]->BlockTitle . '</h4>');
                        __e($blocks[2]->BlockContent);
                        ?>
                    </div>
                    <h4 style="background: #278AF5"></h4>

                </div>


            </div>
        </div>
    </div>
<?php } else if ($uri1 == 'post') { ?>

<?php } else { ?>
    <!-- slider and home info block -->
    <div class="row marginTop30 homeLeft">
        <div class="col-md-7 col-lg-7 col-sm-12 col-xs-12">
            <div class="sliderSection">
                <div class="topSlider">
                    <ul class="bxslider">
                        <li><img src="http://www.pakutiacollege.edu.bd/uploads/slides/rsz_1koala.jpg"
                                 alt="পহেলা বৈশাখ " title="পহেলা বৈশাখ "/></li>
                        <li><img src="http://www.pakutiacollege.edu.bd/uploads/slides/pakutiaschoolandcollege.jpg"
                                 alt="পাকুটিয়া পাবলিক স্কুল এন্ড কলেজ" title="পাকুটিয়া পাবলিক স্কুল এন্ড কলেজ"/>
                        </li>
                    </ul>
                    <a href="#" class="pager-prev"><i class="icon-chevron-left"></i></a>
                    <a href="#" class="pager-next"><i class="icon-chevron-right"></i></a>
                </div>


                <div class="clear"></div>
                <div class="schoolCorner">
                    <h2>শিক্ষক, শিক্ষার্থী ও অভিভাবক কর্ণার</h2>

                    <div class="clear"></div>
                    <div class="columnOne"><a href="http://www.pakutiacollege.edu.bd/teacherslogin"><img
                                src="http://www.pakutiacollege.edu.bd/feassets/images/tcorner.jpg"
                                alt="tcorner"/></a></div>
                    <div class="columnTwo"><a href="http://www.pakutiacollege.edu.bd/studentslogin"><img
                                src="http://www.pakutiacollege.edu.bd/feassets/images/stcorner.jpg" alt="stcorner"/></a>
                    </div>
                    <div class="columnThree"><a href="http://www.pakutiacollege.edu.bd/guardianlogin"><img
                                src="http://www.pakutiacollege.edu.bd/feassets/images/stacorner.jpg"
                                alt="stacorner"/></a></div>
                </div>
                <div class="clear"></div>
                <div class="headmasterQuote">
                    <h1 class="blue">প্রতিষ্ঠান প্রধানের বার্তা - (অধ্যক্ষ জীবুন নিছা)</h1>

                    <div class="clear"></div>
                    <p>
                        <img class="alignRight"
                             src="http://www.pakutiacollege.edu.bd/uploads/settings/1_principal.jpg"
                             alt="Head Teacher">

                    <div class="comment more">
                        শিক্ষার জ্ঞান মানুষের মনের প্রসারণ, জীবন ও পৃথিবী সম্বন্ধে নতুন চিন্তার উদ্ভাবন ঘটায়। আর
                        শিক্ষা জাতির মেরুদন্ড হয়ে দাড়ায় তখনই, যখন একটি জাতি মানবীয় মূল্যবোধে উজ্জীবিত হয়ে
                        শিক্ষাবান্ধব স্থিতিশীল সমাজ ও কার্যকর রাষ্ট্র প্রতিষ্ঠার মাধ্যমে উন্নত থেকে উন্নতর ভবিষ্যৎ
                        নির্মাণে চেষ্টিত হয়। আর এ জন্য প্রয়োজন সুশিক্ষা। জ্ঞান অর্জনের সুশিক্ষার কোন বিকল্প নেই।
                        আমাদের উচিত সুশিক্ষার মধ্যমে নীতিনৈতিকতা ও বিচার বুদ্ধিবোধকে জাগ্রত করে দেশাত্নবোধের চেতনায়
                        উজ্জীবিত হয়ে নিজেকে সুনাগরিক হিসাবে গড়ে তোলার লক্ষ্যে সঠিকভাবে কর্মকে নিয়ন্ত্রিত করা।
                        টাংগাইল জেলার ঘাটাইল উপজেলায় গ্রামীণ পরিবেশে অবস্থিত পাকুটিয়া পাবলিক স্কুল এন্ড কলেজটি অত্র
                        এলাকায় শিক্ষার দ্বার উন্মোচিত করে উচ্চ শিক্ষার জ্ঞান মানুষের মনের প্রসারণ, জীবন ও পৃথিবী
                        সম্বন্ধে
                        নতুন চিন্তার উদ্ভাবন ঘটায়। আর
                        শিক্ষা জাতির মেরুদন্ড হয়ে দাড়ায় তখনই, যখন একটি জাতি মানবীয় মূল্যবোধে উজ্জীবিত হয়ে
                        শিক্ষাবান্ধব স্থিতিশীল সমাজ ও কার্যকর রাষ্ট্র প্রতিষ্ঠার মাধ্যমে উন্নত থেকে উন্নতর ভবিষ্যৎ
                        নির্মাণে চেষ্টিত হয়। আর এ জন্য প্রয়োজন সুশিক্ষা। জ্ঞান অর্জনের সুশিক্ষার কোন বিকল্প নেই।
                        আমাদের উচিত সুশিক্ষার মধ্যমে নীতিনৈতিকতা ও বিচার বুদ্ধিবোধকে জাগ্রত করে দেশাত্নবোধের চেতনায়
                        উজ্জীবিত হয়ে নিজেকে সুনাগরিক হিসাবে গড়ে তোলার লক্ষ্যে সঠিকভাবে কর্মকে নিয়ন্ত্রিত করা।
                        টাংগাইল জেলার ঘাটাইল উপজেলায় গ্রামীণ পরিবেশে অবস্থিত পাকুটিয়া পাবলিক স্কুল এন্ড কলেজটি অত্র
                        এলাকায় শিক্ষার দ্বার উন্মোচিত করে উচ্চ
                    </div>
                    </p>
                </div>

            </div>
        </div>
        <div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
            <div class="schoolSection bxShadow">
                <div class="map">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d3629.5725033535746!2d89.9839227!3d24.5348707!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1437993374527"
                        [removed] allowfullscreen></iframe>
                </div>
                <div class="schooHeader">
                    <div class="schoolLogo">
                    </div>
                    <div class="schoolName">
                        <h3 class="schoolnamesize">পাকুটিয়া পাবলিক স্কুল এন্ড কলেজ</h3>

                        <p><span>শিক্ষা জাতির মেরুদণ্ড</span><br/>
                                <span><a class="btn btn-default btn-sm" href="gallery">গ্যালারী</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                        class="btn btn-default btn-sm" href="contact">যোগাযোগ</a></span></p>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="schoolInfo">
                    <p>টাংগাইল জেলার ঘাটাইল থানায় পাকুটিয়া গ্রামে মনোরম পরিবেশে ১৯৫২ ইং সনের ২রা জানুয়ারী এলাকার
                        গণ্যমান্য ব্যক্তিবর্গের ঐকান্তিক প্রচেষ্ঠায় গড়ে উঠেছিল পাকুটিয়া পাবলিক হাই স্কুল। সেই
                        থেকে পথ চলা। বিদ্যালয়টি এই এলাকার মানুষের মাঝে বিদ্যার আলো ছড়িয়ে যাচ্ছে। বিদ্যালয়টি
                        ১৯৯৮ইং সালে কলেজে উন্নীত হয়। বর্তমানে স্কুল এন্ড কলেজটিতে প্রায় ১৫০০ ছাত্র ছাত্রী লেখাপড়া
                        করছে।</p>
                    <ul>
                        <li><b>স্থাপিত :</b> ১৯৫২ইং সালের ২রা জানুয়ারী</li>
                        <li><b>ই আই আই এন:</b> 114200</li>
                        <li><b>সময় :</b> সকাল ৯:৩০ থেকে বিকাল ৪:০০</li>
                        <li><b>ফোন :</b> +৮৮০-১৭১২ ৫২৪৫৯৬</li>
                        <li><b>ইমেইল:</b> pakutiacollege.info@gmail.com</li>
                        <li><b>ঠিকানা :</b> পোঃ ডি. পাকুটিয়া, উপজেলাঃ ঘাটাইল, জেলাঃ টাংগাইল।</li>
                    </ul>
                </div>
            </div>
            <a href="http://www.pakutiacollege.edu.bd/onlineadmission">
                <button class="admission">অনলাইন ভর্তির আবেদন</button>
            </a>
            <a href="http://www.pakutiacollege.edu.bd/download">
                <button class="formDownload">ভর্তির ফর্ম ডাউনলোড</button>
            </a>
            <a href="http://www.pakutiacollege.edu.bd/academiccouncill">
                <button class="managingCommettee">পরিচালনা পর্ষদ</button>
            </a>
            <a href="http://www.pakutiacollege.edu.bd/page/exam-statistics">
                <button class="statistics">বিভিন্ন পরীক্ষার পরিসংখ্যান</button>
            </a>

            <div class="clear"></div>

        </div>
    </div>
    <div class="clear"></div>
    <div class="row margin15 homeRight">
        <div class="col-md-7 col-lg-7 col-sm-12 col-xs-12">
            <div class="clear"></div>
            <div class="impLinksWrap homelinks">
                <div class="firstColumn">
                    <h4 style="background: #278AF0">প্রয়োজনীয় লিঙ্কস</h4>
                    <ul>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.techedu.gov.bd"
                                                                    target="_blank">কারিগরি শিক্ষা বোর্ড </a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.moedu.gov.bd" target="_blank">শিক্ষা
                                মন্ত্রণালয়</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.mopme.gov.bd" target="_blank">প্রাথমিক
                                ও গণশিক্ষা মন্ত্রণালয়</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.ngte-welfaretrust.gov.bd"
                                                                    target="_blank">বেসরকারি শিক্ষককল্যাণ
                                ট্রাস্ট</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.basis.org.bd"
                                                                    target="_blank">ব্যাসিস</a>
                        </li>

                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.terbb.gov.bd" target="_blank">বেসরকারি
                                শিক্ষক অবসর বোর্ড</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://xiclassadmission.gov.bd"
                                                                    target="_blank">একাদশ শ্রেণীতে ভর্তি</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.bangabhaban.gov.bd"
                                                                    target="_blank">রাষ্ট্রপতির কার্যালয়</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.pmo.gov.bd" target="_blank">প্রধানমন্ত্রীর
                                কার্যালয়</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.ictd.gov.bd" target="_blank">আইসিটি
                                মন্ত্রনালয়</a></li>
                    </ul>
                </div>
                <div class="secondColumn">
                    <h4 style="background: #7AB700">প্রয়োজনীয় লিঙ্কস</h4>
                    <ul>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.dhakaeducationboard.gov.bd"
                                                                    target="_blank">ঢাকা শিক্ষা বোর্ড</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.dhakaeducationboard.gov.bd"
                                                                    target="_blank">শিক্ষা বোর্ড</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.dshe.gov.bd" target="_blank">মাধ্যমিক
                                ও উচ্চ শিক্ষা অধিদপ্তর</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.nctb.gov.bd"
                                                                    target="_blank">এনসিটিবি</a>
                        </li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.bcs.org.bd" target="_blank">বাংলাদেশ
                                কম্পিউটার সমিতি</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://a2i.pmo.gov.bd"
                                                                    target="_blank">এ২আই</a>
                        </li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.npo.gov.bd" target="_blank">জাতীয়
                                তথ্য বাতায়ন</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://www.naem.gov.bd"
                                                                    target="_blank">নায়েম</a>
                        </li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="https://www.teachers.gov.bd"
                                                                    target="_blank">শিক্ষক বাতায়ন</a></li>
                        <li><i class="fa fa fa-angle-right"></i> <a href="http://banbeis.gov.bd"
                                                                    target="_blank">ব্যানবেইস</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
            <div class="customTab homeTabs">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab"
                                                              data-toggle="tab">সর্বশেষ সংবাদ</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">নোটিশ
                            বোর্ড</a></li>
                    <li role="presentation"><a href="#tab3" aria-controls="tab3" role="tab"
                                               data-toggle="tab">ডাউনলোড</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <ul>
                            <li><a href="http://www.pakutiacollege.edu.bd/latestnews/11">আগামী ৩০ ডিসেম্বর রোজ
                                    বুধবার অত্র বিদ্যালয়ের ৬ষ্ঠ, ৭ম ও ৯ম শ্রেণীর বার্ষিক পরীক্ষার ফল প্রকাশ করা
                                    হবে।</a></li>
                            <li><a href="http://www.pakutiacollege.edu.bd/latestnews/7">ওয়েব সাইটটি পরীক্ষামূলক ভাবে
                                    চালু করা হয়েছে। সাইটটির বিভিন্ন পেইজের লেখা ডেমো হিসেবে ছিল। সকল পৃষ্ঠা আপডেট
                                    করা হচ্ছে। আপনার মূল্যবান মতামত ওয়েবসাইটটিকে আরও সুন্দর করে তুলবে।</a></li>
                            <li><a href="http://www.pakutiacollege.edu.bd/latestnews">সকল সংবাদ</a></li>
                        </ul>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        <ul>
                            <li><a href="http://www.pakutiacollege.edu.bd/notice/4">বিশেষ বিবেচনায় ফরম পূরনে
                                    অনুমতিপ্রাপ্ত ছাত্র-ছাত্রীদের রোল নম্বরঃ</a></li>
                            <li><a href="http://www.pakutiacollege.edu.bd/notice/6">বার্ষিক পরীক্ষার ফলাফল</a></li>
                            <li><a href="http://www.pakutiacollege.edu.bd/notice">সকল নোটিশ</a></li>
                        </ul>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab3">
                        <ul>
                            <li>
                                <a href="http://www.pakutiacollege.edu.bd/uploads/downloads/Electronic_Teacher_Information_Form.pdf"
                                   target="_blank">চ্যাম্পিয়ন স্কুল </a></li>
                            <li><a href="http://www.pakutiacollege.edu.bd/uploads/downloads/School_College1.xls"
                                   target="_blank">বিতর্ক প্রতিযোগিতার ফর্ম</a></li>
                            <li>
                                <a href="http://www.pakutiacollege.edu.bd/uploads/downloads/Website_pre_proposal1.docx"
                                   target="_blank">ক্রিকেট প্রতিযোগিতা</a></li>
                            <li>
                                <a href="http://www.pakutiacollege.edu.bd/uploads/downloads/Academic-Program-School-2013-final1.pdf"
                                   target="_blank">এস এস সি রেজাল্ট ২০১৫ </a></li>
                            <li><a href="http://www.pakutiacollege.edu.bd/uploads/downloads/Schedule_-_Altaf.pdf"
                                   target="_blank">Samrat</a></li>
                            <li><a href="http://www.pakutiacollege.edu.bd/download">সকল ডাউনলোড</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } ?>