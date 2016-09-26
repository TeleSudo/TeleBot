do
 function run(msg, matches)
return [[
<code>راهنمای دستورات ربات</code>


<i>!/#</i>  <b>lock</b> | <b>contacts-links-flood-spam-arabic-member-rtl-sticker-tag-username-bots-english-forward</b>
<code>بستن امکانات بالا</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>unlock</b> | <b>contacts-links-flood-spam-arabic-member-rtl-sticker-tag-username-bots-english-forward</b>
<code>بازکردن امکانات بالا</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>mute</b> | <b>gifs-audio-photo-video-text-documents-all</b>
<code>موت کردن امکانات بالا</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>unmute</b> | <b>gifs-audio-photo-video-text-documents-all</b>
<code>آنموت کردن امکانات بالا</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>promote @username</b> 
<code>کمک مدیر کردن یک شخص</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>demote @username</b>
<code>خارج کردن شخص ازکمک مدیریت</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>modlist</b>
<code>نمایش کمک مدیران</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>ban @username </b>
<code>اخراج کردن یک فرد از گروه به صورت دائمی</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>unban @username</b>
<code>خارج کردن یک فرد از حالت اخراج دائمی</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>info</b>
<code>نمایش اطلاعات اصلی گروه</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>del [reply|number]</b>
<code>پاک کردن تعداد پیام های مورد نظر با ریپلی و تعداد</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>admins</b>
<code>نمایش لیست ادمین های گروه</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>filter [word]</b>
<code>فیلتر کردن یک کلمه</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>unfilter [word]</b>
<code>در اوردن کلمه از فیلتر</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>filterlist</b>
<code>نشان دادن کلمه های فیلتر شده.</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>owner</b>
<code>نمایش آیدی خریدار گروه</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>kick [reply|id]</b>
<code>بلاک کردن و کیک کردن فرد از گروه.</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>setwlc[Text]</b>
<code>تنظیم یک متن به عنوان متن خوشامد گویی</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>delwlc</b>
<code>حذف پیام خوشامد گویی</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>id</b>
<code>نمایش اطلاعات اکانت شما .</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>setname [text]</b>
<code>تغییر اسم گروه</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>setphoto</b>
<code>جایگزین کردن عکس گروه</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>setrules [text]</b>
<code>گذاشتن قوانین برای گروه</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>setabout [text]</b>
<code>گذاشتن متن توضیحات برای سوپر گروه(این متن در بخش توضیحات گروه هم نمایش داده میشه)</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>newlink</b>
<code>ساختن لینک جدید</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>link</b>
<code>گرفتن لینک</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>rules</b>
<code>نمایش قوانین</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>setflood [value]</b>
<code>گذاشتن value به عنوان حساسیت اسپم</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>settings</b>
<code>نمایش تنظیمات گروه</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>muteslist</b>
<code>نمایش لیست افراد سایلنت شده</code>
➖➖➖➖➖➖
<i>!/#</i>  <b>clean [rules|about|modlist|mutelist|bots]</b>
<code>پاک کردن لیست ناظم ها-درباره-لیست سایلنت شده ها-قوانین-بات ها</code>
➖➖➖➖➖➖
]]
end
return {
patterns = {
"^[!/#][Hh]elp$",
"^[Hh]elp$",
"^❓$"
},
run = run
}
end