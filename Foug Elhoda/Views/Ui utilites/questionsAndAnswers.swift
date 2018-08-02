//
//  questionsAndAnswers.swift
//  Foug Elhoda
//
//  Created by Hadeer Kamel on 8/2/18.
//  Copyright © 2018 Hadeer Kamel. All rights reserved.
//

import Foundation
class QuestionItem{
    var question : String!
    var answer : String!
    init(question_:String,answer_:String){
        question = question_
        answer = answer_
    }
}
class QuestionsAndAnswers {
  var questionsList : [QuestionItem] = []
    init() {
        questionsList.append(QuestionItem(question_:"ما حكم الحج و ما الدليل؟",answer_:"واجب وركن من أركان الإسلام , والدليل . قوله تعالى : وَلِلَّهِ عَلَى النَّاسِ حِجُّ الْبَيْتِ مَنِ اسْتَطَاعَ إِلَيْهِ سَبِيلًا , وقوله - صلى الله عليه وسلم - : إن الله فرض عليكم الحج فحجوا رواه مسلم ."))
        questionsList.append(QuestionItem(question_:"على من يجب الحج ؟ ",answer_:"يجب الحج على كل مسلم بالغ عاقل حر مستطيع . "))
        questionsList.append(QuestionItem(question_:"ما هي شروط وجوبه ؟",answer_:"شروط وجوب الحج خمسة وهي : (1) الإسلام  (2) والعقل  (3) والبلوغ  (4) والحرية  (5) والاستطاعة "))
        questionsList.append(QuestionItem(question_:" ما حكم حج الصبي الذي لم يبلغ ؟ ",answer_:"حج الصبي يصح ويثاب عليه ولا يجزيه عن حجة الإسلام فإذا بلغ فعليه أن يحج حجة أخرى . "))
        questionsList.append(QuestionItem(question_:"هل الحج واجب على الفور أو على التراخي ؟ مع الدليل ؟ ",answer_:"الحج واجب على الفور إذا تمت شروط وجوبه لقوله تعالى : فَاسْتَبِقُوا الْخَيْرَاتِ وَسَارِعُوا إِلَى مَغْفِرَةٍ مِنْ رَبِّكُمْ وقوله - صلى الله عليه وسلم - : تعجلوا إلى الحج -يعني الفريضة- فإن أحدكم لا يدري ما يعرض له رواه أحمد "))
        questionsList.append(QuestionItem(question_:" ما حكم حج من لم يصل ؟ ",answer_:"لا يصح حج من لم يصل لأن أركان الإسلام كل لا يتجزأ . فمن آمن بها عمل بها كلها ومن ترك واحدا منها مع القدرة بطلت وفسدت كلها والصلاة من الإسلام بمنزلة الرأس من الجسد فكما أنه لا حياة لمن لا رأس له فلا دين لمن لا صلاة له والصلاة عمود الدين الإسلامي الذي يقوم عليه وهي شعار المسلم وتكفر الذنوب فأولى بمن لا يصلي أن يتوب إلى الله تعالى ويصلي باستمرار ثم يحج . "))
        questionsList.append(QuestionItem(question_:"ما الذي ينبغي لمن أراد الحج ؟ ",answer_:"ينبغي له : أولا : أن يتوب إلى الله توبة نصوحا بعد ترك المعاصي والندم على ما  فات منها والعزم على عدم العودة إليها في المستقبل .  ثانيا : أن يختار لحجه نفقة طيبة من مال حلال لأن الله طيب لا يقبل إلا طيبا .  ثالثا : أن يصحب في سفره الأخيار من أهل العلم والطاعة والفقه في الدين ليرشدوه وينفعوه .  رابعا : أن يحفظ جوارحه ولسانه عن الكلام المحرم والنظر المحرم والسماع المحرم .   "))
        questionsList.append(QuestionItem(question_:"ما هو الحج المبرور الذي وعد صاحبه بالمغفرة والجنة ؟ ",answer_:"الحج المبرور هو المقبول الذي لا يخالطه معصية بأن يأتي الحاج فيه بالواجبات والمستحبات ويترك المحرمات والمكروهات ويحج كما شرع الله وكما حج رسول الله - صلى الله عليه وسلم - . "))
        questionsList.append(QuestionItem(question_:"ما هو دعاء السفر ؟ ",answer_:" الله أكبر ثلاثا -سبحان الله- ثلاثا- سبحان الذي سخر لنا هذا وما كنا له مقرنين وإنا إلى ربنا لمنقلبون . اللهم إنا نسألك في سفرنا البر والتقوى ومن العمل ما ترضى- اللهم هون علينا سفرنا هذا واطو عنا بعده اللهم أنت الصاحب في السفر والخليفة في الأهل- اللهم إنا نعوذ بك من وعثاء السفر وكآبة المنظر وسوء المنقلب في الأهل والمال والولد ."))
        questionsList.append(QuestionItem(question_:"ما الذي يقوله المسافر إذا نزل منزلا ؟ ولماذا ؟ ",answer_:"أعوذ بكلمات الله التامات من شر ما خلق- إذا قال ذلك لم يضره شيء حتى يرحل من منزله ذلك . "))
        questionsList.append(QuestionItem(question_:" ما حكم ترك الحج مع القدرة مع الدليل ؟ ",answer_:"حرام وكبيرة من كبائر الذنوب وقد يكون كفرا لقول الله تعالى : وَلِلَّهِ عَلَى النَّاسِ حِجُّ الْبَيْتِ مَنِ اسْتَطَاعَ إِلَيْهِ سَبِيلًا وَمَنْ كَفَرَ فَإِنَّ اللَّهَ غَنِيٌّ عَنِ الْعَالَمِينَ وفي الحديث من استطاع الحج فلم يحج فليمت إن شاء يهوديا أو نصرانيا رواه الترمذي والبيهقي "))
        questionsList.append(QuestionItem(question_:"اذكر شيئا من فضائل الحج ؟ ",answer_:"من فضائل الحج ما ثبتت به الأحاديث الصحيحة عن النبي - صلى الله عليه وسلم -  مثل قوله - صلى الله عليه وسلم - : العمرة إلى العمرة كفارة لما بينها والحج المبرور ليس له جزاء إلا الجنة .  وقوله - صلى الله عليه وسلم - : من حج هذا البيت فلم يرفث ولم يفسق رجع من ذنوبه كيوم ولدته أمه .  وقوله - صلى الله عليه وسلم - : تابعوا بين الحج والعمرة فإنهما ينفيان الفقر والذنوب كما ينفي الكير خبث الحديد والذهب والفضة .  وقوله - صلى الله عليه وسلم - : الحجاج والعمار وفد الله إن دعوه أجابهم وإن استغفروه غفر لهم رواه النسائي وابن ماجة وابن خزيمة وابن حبان في صحيحيهما "))
        questionsList.append(QuestionItem(question_:"ما هي خصائص البيت الحرام ؟ ",answer_:" من خصائص هذا البيت : (1) أن الصلاة فيه أفضل من مائة ألف صلاة فيما سواه من المساجد . .  أنه أفضل بقاع الأرض .  أنه قبلة المسلمين أحياء وأمواتا في مشارق الأرض ومغاربها .  وجوب الحج إليه .  أن قصده يكفر الذنوب والآثام وليس لقاصده ثواب دون الجنة إذا اتقى الله تعالى وبر وصدق .  أن من دخله كان آمنا .  أنه يؤاخذ فيه على الهم بالسيئات قال تعالى : وَمَنْ يُرِدْ فِيهِ بِإِلْحَادٍ بِظُلْمٍ نُذِقْهُ مِنْ عَذَابٍ أَلِيمٍ .  تحريم قطع شجره الأخضر .  تحريم قتل صيده .   "))
        questionsList.append(QuestionItem(question_:"ما الذي يشرع لمن وصل إلى الميقات في الحج والعمرة ؟ ",answer_:"يشرع له أن يتجرد من المخيط إذا كان رجلا وأن يغتسل ويتنظف و1يتطيب ثم ينوي الإحرام ويلبس الثياب للإحرام ويتلفظ بما نوى فيقول لبيك عمرة أو لبيك عمرة وحجا أو لبيك حجا .  "))
        questionsList.append(QuestionItem(question_:"ما هي الأشياء المحرمة على المحرم بحج أو عمرة ؟ ",answer_:"يحرم عليه عشرة أشياء هي : (1) أخذ الشعر من الرجل والمرأة .  تقليم الأظافر .  (3) الطيب .  (4) لبس الثوب المخيط إذا كان رجلا .  تغطية الرأس بالنسبة للرجل والوجه للمرأة إذا لم يرها أجنبي .  قتل صيد البر .  عقد النكاح له أو لغيره .  الجماع وهو يفسد الحج إذا كان قبل التحلل الأول .  المباشرة في ما دون الفرج كالقبلة والنظر لشهوة .  قطع شجر الحرم ونباته الرطب، وهذا عام للمحرم وغيره ."))
        questionsList.append(QuestionItem(question_:"ما الذي يفعل الحاج إذا وصل إلى البيت الحرام ؟ ",answer_:"يطوف طواف العمرة سبعة أشواط ثم يصلي خلف مقام إبراهيم ركعتين ثم يخرج إلى المسعى فيبدأ بالصفا ويختم بالمروة سبعة أشواط ثم يقصر من شعر رأسه ثم يلبس ثيابه العادية إلى اليوم الثامن من ذي الحجة . "))
        questionsList.append(QuestionItem(question_:"اذكر صفة الحج باختصار . ",answer_:" يحرم الحاج في اليوم الثامن من ذي الحجة من مكة أو قربها من الحرم ثم يذهب إلى منى فيبيت بها ويصلي بها خمس صلوات الظهر والعصر والمغرب والعشاء والفجر فإذا طلعت الشمس من اليوم التاسع سار إلى عرفة وصلى بها الظهر والعصر جمع تقديم قصرا ثم يجتهد في الدعاء والذكر والاستغفار إلى أن تغرب الشمس .  فإذا غربت سار إلى مزدلفة فصلى بها المغرب والعشاء حين وصوله ثم يبيت بها إلى أن يصلي الفجر فيذكر الله تعالى ويدعوه إلى قبيل طلوع الشمس ثم يسير منها إلى منى ليرمي جمرة العقبة ثم يذبح الهدي وهو شاة أو سبع بدنة أو سبع بقرة ثم يحلق رأسه ثم يذهب إلى مكة فيطوف طواف الحج .   ثم يرجع إلى منى ثم يبيت بمنى تلك الليالي أي ليلة الحادي عشر والثاني عشر من شهر ذي الحجة ويرمي الجمرات الثلاث بعد زوال الشمس كل واحدة بسبع حصيات متعاقبات يبدأ بالصغرى وهي البعيدة من مكة ثم الوسطى ثم جمرة العقبة فإذا انتهت تلك الأيام وأراد السفر لم يسافر حتى يطوف بالبيت طواف الوداع سبعة أشواط إلا المرأة الحائض والنفساء فلا وداع عليهما . "))
        questionsList.append(QuestionItem(question_:"اذكر أركان الحج ؟ ",answer_:" أركان الحج أربعة وهي : (1) الإحرام .  (2) والوقوف بعرفة .  (3) وطواف الإفاضة .  (4) والسعي بين الصفا والمروة .   "))
        questionsList.append(QuestionItem(question_:"ما هي واجبات الحج ؟ ",answer_:"واجبات الحج سبعة وهي : (1) الإحرام من الميقات المعتبر .  (2) والوقوف بعرفة إلى الليل . (3) والمبيت بمزدلفة .  (4) والمبيت بمنى .  (5) والحلق أو التقصير لشعر الرأس والحلق أفضل .  (6) ورمي الجمار .  (7) وطواف الوداع . "))
        questionsList.append(QuestionItem(question_:" ما هي أركان العمرة وواجباتها ؟ ",answer_:" أركان العمرة ثلاثة وهي : (1) الإحرام .  (2) والطواف .  (3) والسعي .  وواجباتها شيئان : (أ) الإحرام من الميقات .  (ب) والحلق أو التقصير .   "))
        questionsList.append(QuestionItem(question_:" ما هي سنن الحج ؟",answer_:"من سنن الحج : (1) الاغتسال عند الإحرام .  (2) والتلبية .  (3) وطواف القدوم بالنسبة للمفرد أو القارن .  (4) والمبيت بمنى ليلة عرفة . (5) والرمل والاضطباع في طواف القدوم . "))
        questionsList.append(QuestionItem(question_:"ما حكم من ترك ركنا أو واجبا أو سنة في الحج ؟ ",answer_:"حكم من ترك ركنا لم يصح حجه إلا به . ومن ترك واجبا : جبره بدم . ومن ترك سنة فحجه صحيح وليس عليه شيء . "))
        questionsList.append(QuestionItem(question_:"ما حكم من فعل محظورا من محظورات الإحرام عامدا أو جاهلا أو ناسيا ؟ ",answer_:"من فعل محظورا جاهلا أو ناسيا (فلا حرج عليه ولا فدية) ومن فعل محظورا غير الجماع وقتل الصيد فهو مخير بين ثلاثة أشياء صيام ثلاثة أيام أو إطعام ستة مساكين أو ذبح شاة .  أما في الصيد فجزاء مثل ما قتل من النعم . .  وفي الجماع (بدنة) . "))
        questionsList.append(QuestionItem(question_:"ما حكم الحج بالمال الحرام ؟ ",answer_:"الذي يحج بالمال الحرام حجه غير صحيح ويعيد الحج بعد التوبة النصوح "))
        
    }
}