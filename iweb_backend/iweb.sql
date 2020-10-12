/*iWeb在线课堂项目必需的数据结构*/
/*SQL不区分大小写，习惯上：关键字都大写，非关键字都小写*/

#删除数据库iweb，如果它存在的话
DROP  DATABASE  IF  EXISTS  iweb;
#重新创建数据库iweb
CREATE  DATABASE  iweb  CHARSET=UTF8;
#进入数据库iweb
USE  iweb;

#创建校区表
CREATE  TABLE  iw_school(
    sid  INT  PRIMARY  KEY  AUTO_INCREMENT,    #校区编号(自动增长的)
	sname  VARCHAR(32),  #名称
	pic  VARCHAR(128),    #图片URL
	address  VARCHAR(64),    #地址
	phone  VARCHAR(32),      #联系电话
	postcode  CHAR(6),   #邮编
	longiyude  DECIMAL(9,6),  #经度
	latitude  DECIMAL(8,6)  #纬度
);

INSERT  INTO  iw_school  values
(NULL, '北京中关村中心','img/school/bjzgc.jpg',
'北京市海淀区北三环西路甲18号（大钟寺附近）中鼎大厦B座7层',
'010-62130963','100098',116.347527,39.9725929);
INSERT  INTO  iw_school  values
(NULL, '北京天坛中心','img/school/bjtt.jpg',
'北京市崇文区珠市口东大街6号珍贝大厦西侧3层达内科技',
'010-67028668','100050',116.417928,39.898673);
INSERT  INTO  iw_school  values
(NULL, '北京广渠门中心','img/school/bjgq.jpg',
'北京市东城区广渠门东广渠家园25号楼启达大厦一层',
'15321130620','100010',116.457211,39.897629);
INSERT  INTO  iw_school  values
(NULL, '北京北京清华园中心','img/school/bjqhy.jpg',
'北京市海淀区花园路小关街120号万盛商务会馆A区三层',
'010-82676916','100088',116.386429,39.984291);
INSERT  INTO  iw_school  values
(NULL, '北京万寿路中心','img/school/bjwsl.jpg',
'北京市海淀区万寿路西街2号文博大厦二层达内科技',
'010-82761288','100081',116.300901,39.916085);
INSERT  INTO  iw_school  values
(NULL, '金海泰资本市场研究中心','img/school/scyj.jpg',
'北京市海淀区万寿西街2号文博大厦7层',
'010-88211816','100087',116.300994,39.916078);
INSERT  INTO  iw_school  values
(NULL, '中国文物信息咨询中心','img/school/xxzx.jpg',
'北京市朝阳区北四环东路高原街甲2号文博大厦3-4层',
'010-84849810','100085',116.435039,39.994083);
INSERT  INTO  iw_school  values
(NULL, '北京阿美巴民族文化艺术中心','img/school/whys.jpg',
'北四环东路高原街甲2号文博大厦12层A129',
'010-84856736','100094',116.435097,39.994079);
INSERT  INTO  iw_school  values
(NULL, '上公益促进中心','img/school/sgycj.jpg',
'广渠家园25号启达大厦五层上学路',
'010-5467386','102092',116.457448,39.897552);
INSERT INTO iw_school VALUES(NULL,'北京潘家园中心','img/school/bjpjy.jpg',
'朝阳区潘家园桥东松榆北路7号院11号楼建业苑写字楼6层
','010-82676989','100098',116.47161,39.88218);
INSERT INTO iw_school VALUES(NULL,'北京亚运村中心','img/school/bjyyc.jpg',
'朝阳区南沙滩66号院1号楼3层
','010-82677889','100012',116.380064,40.007269);
INSERT INTO iw_school VALUES(NULL,'北京大学生实训基地海淀校区','img/school/bjhd.jpg',
'北京市海淀区杏石口路98号院北京师范大学科培校区南门院内教学楼三楼
','010-24677889','100012',116.227416,39.957198);
INSERT INTO iw_school VALUES(NULL,'北京亦庄大学生实训基地','img/school/bjyz.jpg',
'北京市通州区亦庄经济开发区中铁二十一局对面
','010-24677810','100019',116.56222,39.783691);
INSERT INTO iw_school VALUES(NULL,'达内教育','img/school/dnjy1.jpg',
'北京市东城区广渠家园二号楼
','010-24679810','100089',116.454871,39.898628);
INSERT INTO iw_school VALUES(NULL,'北京python开发学院中心','img/school/bjkf.jpg',
'北京市东城区珠市口东大街6-3号
','010-24679810','100089',116.418243,39.898634);
INSERT INTO iw_school VALUES(NULL,'北京达内职业教育集团','img/school/bjzyjy.jpg',
'北京市东城区珠市口东大街珍贝大厦三楼
','010-62126400','100089',116.417664,39.898638);
INSERT INTO iw_school VALUES(NULL,'达内重点教育(北京旗舰店)','img/school/bjdnzd.jpg',
'北京市朝阳区北苑路安苑北里26号诸园文化教育产业园3层
','010-62126490','100099',116.418442,39.993271);
INSERT INTO iw_school VALUES(NULL,'北京北京清华园中心','img/school/bjqhy.jpg',
'北京市海淀区花园路街道花园路小关街120号万盛商务会馆a区玖伍玖网络有限公司',
'1572369784','100083',116.386508,39.984261);
INSERT INTO iw_school VALUES(NULL,'上海达内软件科技有限公司','img/schooln.jpg',
'商城路518号内外联大厦21层',
'1512539487','100014',121.523724,31.235934);
INSERT INTO iw_school VALUES(NULL,'北京商联国际上海分公司','img/school/bjsl.jpg',
'东方路738号裕安大厦6层',
'000-457-63-111','100013',121.531177,31.234511);
INSERT INTO iw_school VALUES(NULL,'万豪中心','img/school/bjwh.jpg',
'北京市东城区建国门南大街7号',
'(010)58119696','100031',116.440805,39.910713);

#创建讲师表
CREATE  TABLE  iw_teacher(
    tid  INT  PRIMARY  KEY AUTO_INCREMENT,    #讲师编号
	tname VARCHAR(64),  #姓名
	pic  VARCHAR(128),    #图片
	skills  VARCHAR(32), #擅长的领域
	experienc  VARCHAR(1024),  #工作经历
	style VARCHAR(1024) #授课风格
);

INSERT  INTO iw_teacher VALUES(NULL,'成亮','img/teacher/cl.jpg','WEB全栈开发',
'10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。',
'讲课诙谐幽默，深处浅出，深得学生喜爱。');
INSERT  INTO iw_teacher VALUES(NULL,'李然','img/teacher/lr.jpg','高级网页设计',
'从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大 量的教学经验。',
'教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。');
INSERT INTO iw_teacher VALUES(NULL,'张东','img/teacher/zd.jpg','JS高级编程',
'美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。
','一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。
');
INSERT INTO iw_teacher VALUES(NULL,'程涛','img/teacher/ct.jpg','移动APP开发',
'曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。
','感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力
');
INSERT INTO iw_teacher VALUES(NULL,'纪盈鑫','img/teacherx/jyx.jpg','前端框架开发',
'曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。
','授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。
');
INSERT INTO iw_teacher VALUES(NULL,'刘苍松','img/teacherx/lcs.jpg','JAVA教研部总监',
'具有10 年的Java 企业应用开发经验。曾经历任德国Software AG 技术顾问，美国Dachieve 系统架构师，美国AngelEngineers Inc. 系统架构师。
','授课思维严谨灵活，将复杂的业务应用逻辑以直观浅显的方式阐述。
');
INSERT INTO iw_teacher VALUES(NULL,'成恒','img/teacherx/ch.jpg','Java教学总监',
'长期奋战在课程研发、一张教学、软件开发岗位，教龄、开发累积达15年，多次参与并主导开发各校园网、医疗系统的OA系统，及在线商城系统、ERP系统等，从事IT行业教学超过9年。
','幽默风趣但不失严谨，知识点讲解十分细腻，对于各个知识点能深入浅出，始终站在学生学习的角度思考知识点的难点所在，善于实施引导性的教学，激发学生自己思考的兴趣与能力，并在讲解过程中穿插知识点的在实训、面试、就业的定位，全方位的让学生认识、理解、掌握每个知识点。
');
INSERT INTO iw_teacher VALUES(NULL,'王克晶','img/teacherx/lwh.jpg','JAVA总监级讲师',
'浪潮集团前总监级项目经理。精通Java与.NET 技术， 熟练的跨平台面向对象开发经验，技术功底深厚。
','授课风格清新自然、条理清晰、主次分明、重点难点突出、引人入胜。
');
INSERT INTO iw_teacher VALUES(NULL,'郝建娥','img/teacherx/hje.jpg','网络营销讲师',
'在北京相关设计公司担任设计师、策划等工作；现担任达内高级美工设计讲师，有多年不同行业设计制作及授课经验。
','授课亲切自然，朴实无华，大量实战案例讲解，课程中注重实操演练，整个授课思路清晰，化难为简。
');
INSERT INTO iw_teacher VALUES(NULL,'孙善明','img/teacher/ssm.jpg',' .NET培训总监',
'具有10年.NET企业应用开发经验。曾任Medilink-Global公司技术总监兼架构师，知金教育咨询公司高级技术经理。弘成科技(纳斯达克上市公司)高级软件工程师
','深入浅出，善于运用类比，将复杂深奥的理论通俗的讲解出来。实践经验丰富，致力于提高学员的实践经验。坚信“用简单的方法解决复杂的问题才是优秀的程序员”
');
INSERT INTO iw_teacher VALUES(NULL,'赵旭','img/teacher/zx.jpg',' 互联网技术讲师',
'达内集团互联网技术讲师， 主讲HTML5、 CSS3、交互设计、原型设计与制作、 JavaScript 等课程。
','教学思路严谨，课堂气氛活跃。讲解时善于运用生活当中的例子，使学员能够快速理解。着重培养学员的动手能力，奉行实践是检验真理的唯一标准，教学能力受到学员们的一致好评。
');
INSERT INTO iw_teacher VALUES(NULL,'李文华','img/teacherh/lwh.jpg','Web前端教研总监',
'曾工作于中国互联网中心、中软国际等机构，先后任教于华育国际、IBM产品基地、达内科技等组织。具备多年互联网项目开发及管理经验，十年以上JavaEE、PHP、移动开发等多方向授课经验。
','行业知识广泛深入，具备多学科全部课程完整授课经验；授课思路顺畅，表达清晰自然，善于化繁为简、化抽象为具体，能够很好的调动学员积极性；亲和力强，善于与学员保持良好的交互；因材施教，能为各层次学员量身定制针对性强的实训和考核体系。教学领域涉及社招生源职业培训、高校毕业生项目实训、高校师资课程集训、企业技术内训等；所授学员理论知识扎实，实践能力强，广泛就职于IBM、百度、阿里巴巴、搜狐、新浪、中软、中科院等知名企业和机构。
');
INSERT INTO iw_teacher VALUES(NULL,'纪威','img/teacher/jw.jpg','英才添翼教研部总监',
'曾任职于多家IT企业，10年软件研发经验，多家IT培训机构担任主讲讲 师、教学主管等职，8年以上的Java授课，近100所高校授课学术交 流，学会了如何驾驭课堂，如何提高教学效果，针对不同的学生运 用不同的教学方法，真正因材施教。
','富有激情、思路清晰、逻辑性强、细致耐心，善于举例，善于激发学生的潜性思考，运用多种授课方法，提高学生动手能力，提高学生的上课兴趣，培养学生求知欲望，课堂气氛轻松活跃！
');
INSERT INTO iw_teacher VALUES(NULL,'周羽','img/teacher/zy.jpg','英才添翼金牌讲师',
'来自日本Jasdaq上市公司，日本雅虎前架构师、3G移动电子商务系统专家、房地产交易系统专家、对日软件外包业务专家。从事软件行业9年以上，资深Java架构师，长期在日本工作。具有极其丰富的设计、开发、项目管理经验。
','风趣幽默、思路敏捷、时有悬念。善制造各种开发情景，通过充分地互动，使得学员能轻松掌握各种开发技术的要点，深受广大学员的好评。
');
INSERT INTO iw_teacher VALUES(NULL,'郭大喜','img/teacher/gdx.jpg','英才添翼Java实训讲师',
'专注于JavaEE企业级软件开发，10年开发培训经验，历任高级软件工程师、项目经理，多次主持参与大型项目，涉及电信、金融、税务等行业；多次应邀至软件企业内训，和著名高校教师技术指导及授课培训。
','授课通俗易懂，深入浅出，教学案例趣味生活化，语言风趣幽默，富有耐心。
');
INSERT INTO iw_teacher VALUES(NULL,'刘苍松','img/teacher/lcs.jpg','英才添翼Java教研部总监',
'具有10年的Java企业应用开发经验。曾经历任德国Software AG 公司技术顾问，美国达而成(Dachieve) 技术公司系统架构师，美国天使工程技术有限公司(Angel Engineers Inc.) 系统架构师
','思维严谨灵活
');
INSERT INTO iw_teacher VALUES(NULL,'李洪鹤','img/teacherh/lhh.jpg','英才添翼Java总监级讲师',
'曾任用友公司软件设计师，具有7 年的JAVA 企业应用开发和内训经验。
','授课幽默风趣、深入浅出。以企业核心应用为导向，教学时引导学员建立起企业开发模式的思维。
');
INSERT INTO iw_teacher VALUES(NULL,'张继文','img/teacherh/zjw.jpg','C++教研总监',
'在北京中海技创科技发展有限公司从事5年的软件设计开发工作。授课善于总结知识点，剖析问题时与现实生活相结合，通俗易懂。课堂气氛掌控能力强，语言幽默风趣。
','授课善于总结知识点，剖析题时与现实生活结合，通俗易懂。课堂气氛掌控能力强语言幽默风趣。
');
INSERT INTO iw_teacher VALUES(NULL,'马志国','img/teacherh/mzg.jpg','C++讲师',
'13年的C++和.net开发经验，参加国家863重点项目的研发，曾任职高级软件开发工程师和项目经理。
','授课风格结合工作中的实际案例，通过层层引导和深入浅出的方式讲解知识点。
');
INSERT INTO iw_teacher VALUES(NULL,'张淑敏','img/teacherh/zsm.jpg','C++讲师',
'五年高校教学经验（华北理工大学信息工程学院），八年知名培训机构教学及教学管理经验，参与24小时心电监护系统（Holter）、脑电图（BEAM）等多个项目的研发，并发表多篇学术论文。
','授课循序渐进、反复思考、推演、总结。善于将知识和生活结合，并应用于实际的产品中。
');
INSERT INTO iw_teacher VALUES(NULL,'吕泽','img/teacherx/lz.jpg','Python讲师',
'曾任职北国人百集团DBA、 Cisco中国产品培训
','授课富有激情、机智诙谐、责任心强，善于将教学与工作实践相结合，启发学生思考
');
INSERT INTO iw_teacher VALUES(NULL,'王凯','img/teacherx/wk.jpg','Linux云计算讲师',
'曾任职多家 IT 企业担任网络 运维、讲师等工作，具备 10 年以上 IT 行业经验，对计算 机网络有较深入的理解和认 识，精通 TCP/IP 及多种路由 交换技术。
','精通 TCP/IP 及多种路由交换技术，擅长思科、华为、H3C 等网络设备，Linux 系统操作以及华为云操作系统 FusionSphere 的平台搭建、调配、业务发放等。
');
INSERT INTO iw_teacher VALUES(NULL,'曹洋','img/teacher/cy.jpg','大数据讲师',
'多年开发经验，曾担任java高级工程师、数据分析师等职务，精通java企业项目开发，从事IT培训教育两2年
','深入浅出、思路清晰连贯、课堂氛围轻松愉快
');
#创建课程类别表
CREATE  TABLE  iw_course_type(
    tid INT PRIMARY KEY AUTO_INCREMENT,  #类别编号
	tname  VARCHAR(16)                   #类别名称
);
INSERT INTO iw_course_type VALUES(NULL,'基础课程');
INSERT INTO iw_course_type VALUES(NULL,'核心课程');
INSERT INTO iw_course_type VALUES(NULL,'进阶课程');
#创建课程表
CREATE  TABLE  iw_course(
    cid INT PRIMARY KEY AUTO_INCREMENT,  #课程编号
    cname VARCHAR(64),                   #课程名称
    pic VARCHAR(128),                                 #介绍性图片
	teacher_id INT,                      #讲师编号，注意：此处不能保存讲师姓名
    duration VARCHAR(16),                #课程时间
    start_time VARCHAR(16),              #开课时长
	#注意：一门课程可能在多个校区开课，此处无法保存多个校区
    price DECIMAL(8,2),                   #价格
    details VARCHAR(4096)              #课程详细介绍  
);

INSERT INTO iw_course VALUES(NULL,'微信小程序开发 ','img/courses/01.jpg',5,'五天','每月底开课','599','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,' unity地形环境搭建及实景漫游','img/courses/02.jpg',4,'七天','每周三开课','600','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'UI控件之基础控件 ','img/courses/03.jpg',3,'十天','每周五开课','899','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,' 微信小程序','img/courses/04.jpg',2,'五天','每周天开课','799','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'手机图标绘制 ','img/courses/05.jpg',1,'六天','每周一开课','439','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'JQuery操作DOM ','img/courses/06.jpg',5,'四天','每周五开课','899','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'WAXPP之一周上手小程序 ','img/courses/07.jpg',4,'七天','每月底开课','999','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'商业插画零基础手绘教程 ','img/courses/08.jpg',3,'八天','每月底开课','299','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'Linux系统管理 ','img/courses/09.jpg',2,'十天','每周四开课','799','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'视频剪辑课程 ','img/courses/10.jpg',1,'十二天','每周五开课','999','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');

INSERT INTO iw_course VALUES(NULL,'数据分析与可视化','img/course/11.jpg',82,'54天','每周天开课',585,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'好看的插画动起来','img/course/12.jpg',15,'52天','每月底开课',599,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'魔术效果制作','img/course/13.jpg',8,'32天','每周天开课',455,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'UI合计职位及课程解读','img/course/14.jpg',15,'8天','每周一开课',852,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'红帽认证课程','img/course/15.jpg',25,'19天','每周三开课',589,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'WED前端课程','img/course/16.jpg',22,'23天','每周二开课',789,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'红帽认证工程师','img/course/17.jpg',43,'47天','每周四开课',459,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'前端基础精品课','img/course/18.jpg',9,'37天','每月底开课',629,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'PS入门基础课','img/course/19.jpg',8,'27天','每周三开课',785,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'前端开发框架','img/course/20.jpg',6,'15天','每周二开课',999,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');

INSERT  INTO iw_course  VALUES(NULL,'mongoDB','img/course/21.jpg',6,'80天','每月底开课','599','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT  INTO iw_course  VALUES(NULL,'微信小程序开发','img/course/22.jpg',7,'60天','每周三开课','509','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT  INTO iw_course  VALUES(NULL,'Linux云计算之Shell脚本编程','img/course/23.jpg',4,'5天','每周日开课','579','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT  INTO iw_course  VALUES(NULL,'EME之微信运营','img/course/24.jpg',6,'20天','每周六开课','559','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT  INTO iw_course  VALUES(NULL,'JAVA项目实战课','img/course/25.jpg',3,'69天','每周五开课','539','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT  INTO iw_course  VALUES(NULL,'hadoop','img/course/26.jpg',2,'100天','每周一开课','519','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT  INTO iw_course  VALUES(NULL,'功能测试工具(QTP)','img/course/27.jpg',4,'30天','每周二开课','529','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT  INTO iw_course  VALUES(NULL,'Linux部署网站','img/course/28.jpg',3,'65天','每周五开课','589','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT  INTO iw_course  VALUES(NULL,'手绘商业宣传图案','img/course/29.jpg',3,'50天','每周四开课','699','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT  INTO iw_course  VALUES(NULL,'教你绘制魔童小哪吒','img/course/30.jpg',3,'50天','每周一开课','459','<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');

INSERT INTO iw_course VALUES(NULL,'数据分析与可视化','img/course/31.jpg',82,'54天','每周天开课',585,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'好看的插画动起来','img/course/32.jpg',15,'52天','每月底开课',599,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'魔术效果制作','img/course/33.jpg',8,'32天','每周天开课',455,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'UI合计职位及课程解读','img/course/34.jpg',15,'8天','每周一开课',852,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');
INSERT INTO iw_course VALUES(NULL,'红帽认证课程','img/course/35.jpg',25,'19天','每周三开课',589,'<p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p><p>本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。</p>');

#创建校区开课表，记录哪个校区开设了哪些课程——典型的“多对多”
CREATE  TABLE  iw_school_course(
    scid INT PRIMARY KEY AUTO_INCREMENT,  #开课编码
	school_id  INT,          #校区编号
	course_id  INT          #课程编号
);

INSERT INTO iw_school_course VALUES(NULL,1,1);
INSERT INTO iw_school_course VALUES(NULL,2,31);
INSERT INTO iw_school_course VALUES(NULL,3,32);
INSERT INTO iw_school_course VALUES(NULL,4,12);
INSERT INTO iw_school_course VALUES(NULL,5,7);
INSERT INTO iw_school_course VALUES(NULL,6,8);
INSERT INTO iw_school_course VALUES(NULL,7,5);
INSERT INTO iw_school_course VALUES(NULL,8,11);
INSERT INTO iw_school_course VALUES(NULL,9,12);
INSERT INTO iw_school_course VALUES(NULL,10,13);
INSERT INTO iw_school_course VALUES(NULL,11,17);
INSERT INTO iw_school_course VALUES(NULL,12,13);
INSERT INTO iw_school_course VALUES(NULL,13,19);
INSERT INTO iw_school_course VALUES(NULL,14,2);
INSERT INTO iw_school_course VALUES(NULL,15,14);
INSERT INTO iw_school_course VALUES(NULL,16,30);
INSERT INTO iw_school_course VALUES(NULL,17,28);
INSERT INTO iw_school_course VALUES(NULL,18,25);
INSERT INTO iw_school_course VALUES(NULL,19,11);
INSERT INTO iw_school_course VALUES(NULL,20,12);
INSERT INTO iw_school_course VALUES(NULL,21,13);
INSERT INTO iw_school_course VALUES(NULL,15,14);
INSERT INTO iw_school_course VALUES(NULL,5,22);
INSERT INTO iw_school_course VALUES(NULL,4,7);
INSERT INTO iw_school_course VALUES(NULL,12,3);
INSERT INTO iw_school_course VALUES(NULL,13,20);
INSERT INTO iw_school_course VALUES(NULL,4,16);
INSERT INTO iw_school_course VALUES(NULL,13,31);
INSERT INTO iw_school_course VALUES(NULL,2,26);
INSERT INTO iw_school_course VALUES(NULL,4,18);
INSERT INTO iw_school_course VALUES(NULL,10,19);
INSERT INTO iw_school_course VALUES(NULL,11,30);
INSERT INTO iw_school_course VALUES(NULL,5,13);
INSERT INTO iw_school_course VALUES(NULL,13,23);
INSERT INTO iw_school_course VALUES(NULL,5,10);
INSERT INTO iw_school_course VALUES(NULL,4,19);
INSERT INTO iw_school_course VALUES(NULL,5,15);
INSERT INTO iw_school_course VALUES(NULL,13,16);
INSERT INTO iw_school_course VALUES(NULL,5,21);
INSERT INTO iw_school_course VALUES(NULL,3,25);
INSERT INTO iw_school_course VALUES(NULL,12,18);
INSERT INTO iw_school_course VALUES(NULL,2,17);
INSERT INTO iw_school_course VALUES(NULL,14,30);
INSERT INTO iw_school_course VALUES(NULL,15,13);
INSERT INTO iw_school_course VALUES(NULL,13,23);

#创建用户信息表
CREATE  TABLE  iw_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,  #用户编号  
    email  VARCHAR(64),     #邮箱
	phone  VARCHAR(32),     #电话
	password  VARCHAR(128)   #登录密码
);
INSERT  INTO  iw_user  VALUES(NULL,'ding@tedu.cn','13501111111',password('123456'));   
INSERT  INTO  iw_user  VALUES(NULL,'dang@tedu.cn','13502222222',password('123456'));   
INSERT  INTO  iw_user  VALUES(NULL,'dou@tedu.cn','13503333333',password('abc123'));   
INSERT  INTO  iw_user  VALUES(NULL,'ya@tedu.cn','13504444444',password('abc123'));   
#创建购物车表
CREATE TABLE cart(
    ctid INT PRIMARY KEY AUTO_INCREMENT,/*购物车编号*/
    userId INT,         /*用户编号*/
    courseId INT,       /*产品编号*/
    count INT     /*数量*/
);
#创建订单表
CREATE TABLE orders(
    oid INT PRIMARY KEY AUTO_INCREMENT,/*订单id*/
    userId INT/*用户id*/
);
#创建用户收藏夹表
CREATE TABLE favorite(
    fid INT PRIMARY KEY AUTO_INCREMENT,/*收藏记录id*/
    userId INT,         /*用户id*/
    courseId INT,       /*课程id*/
    fTime VARCHAR(16)   /*收藏时间*/
);