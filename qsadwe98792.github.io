$ git commit -m "add index"
[master (root-commit) 80450b2] add index
 1 file changed, 10 insertions(+)
 create mode 100644 index.html
 
 $ git remote add origin https://github.com/qsadwe98792/qsadwe98792.github.io.git

$ git push -u origin master
Counting objects: 3, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 327 bytes | 327.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To https://github.com/qsadwe98792/qsadwe98792.github.io.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.



<!DOCTYPE html>
<html lang="en">

<head>
    <title>TRPG CoC調查局 - 入骨三分-結團2</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">

    <style>
        /* General */

@font-face {
    font-family: Whitney;
    src: url(https://cdn.jsdelivr.net/gh/Tyrrrz/DiscordFonts@master/whitney-300.woff);
    font-weight: 300;
}

@font-face {
    font-family: Whitney;
    src: url(https://cdn.jsdelivr.net/gh/Tyrrrz/DiscordFonts@master/whitney-400.woff);
    font-weight: 400;
}

@font-face {
    font-family: Whitney;
    src: url(https://cdn.jsdelivr.net/gh/Tyrrrz/DiscordFonts@master/whitney-500.woff);
    font-weight: 500;
}

@font-face {
    font-family: Whitney;
    src: url(https://cdn.jsdelivr.net/gh/Tyrrrz/DiscordFonts@master/whitney-600.woff);
    font-weight: 600;
}

@font-face {
    font-family: Whitney;
    src: url(https://cdn.jsdelivr.net/gh/Tyrrrz/DiscordFonts@master/whitney-700.woff);
    font-weight: 700;
}

body {
    font-family: "Whitney", "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 17px;
}

a {
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

img {
    object-fit: contain;
}

.markdown {
    max-width: 100%;
    line-height: 1.3;
    overflow-wrap: break-word;
}

.preserve-whitespace {
    white-space: pre-wrap;
}

.spoiler {
    /* width: fit-content; */
    display: inline-block;
    /* This is more consistent across browsers, the old attribute worked well under Chrome but not FireFox. */
}

.spoiler--hidden {
    cursor: pointer;
}

.spoiler-text {
    border-radius: 3px;
}

.spoiler--hidden .spoiler-text {
    color: rgba(0, 0, 0, 0);
}

.spoiler--hidden .spoiler-text::selection {
    color: rgba(0, 0, 0, 0);
}

.spoiler-image {
    position: relative;
    overflow: hidden;
    border-radius: 3px;
}

.spoiler--hidden .spoiler-image {
    box-shadow: 0 0 1px 1px rgba(0, 0, 0, 0.1);
}

.spoiler--hidden .spoiler-image * {
    filter: blur(44px);
}

    .spoiler--hidden .spoiler-image:after {
        content: "SPOILER";
        color: #dcddde;
        background-color: rgba(0, 0, 0, 0.6);
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        font-weight: 600;
        /* padding: 0.5em 0.7em; */
        padding: 100%;
        /* This ruins those beutifully rounded buttons, but it's needed to prevent a FireFox bug with video and audio elemnts. */
        /* The bug is that you can click trough the spoiler layer and play the video or audio, I could not identify the cause. */
        /* I leave this here, in case someone is brave enough to venture in to madness that is undocumented browser behaviour. */
        border-radius: 20px;
        letter-spacing: 0.05em;
        font-size: 0.9em;
    }

.spoiler--hidden:hover .spoiler-image:after {
    color: #fff;
    background-color: rgba(0, 0, 0, 0.9);
}

.quote {
    margin: 0.1em 0;
    padding-left: 0.6em;
    border-left: 4px solid;
    border-radius: 3px;
}

.pre {
    font-family: "Consolas", "Courier New", Courier, monospace;
}

.pre--multiline {
    margin-top: 0.25em;
    padding: 0.5em;
    border: 2px solid;
    border-radius: 5px;
}

.pre--inline {
    padding: 2px;
    border-radius: 3px;
    font-size: 0.85em;
}

.mention {
    border-radius: 3px;
    padding: 0 2px;
    color: #7289da;
    background: rgba(114, 137, 218, .1);
    font-weight: 500;
}

.emoji {
    width: 1.25em;
    height: 1.25em;
    margin: 0 0.06em;
    vertical-align: -0.4em;
}

.emoji--small {
    width: 1em;
    height: 1em;
}

.emoji--large {
    width: 2.8em;
    height: 2.8em;
}

/* Preamble */

.preamble {
    display: grid;
    margin: 0 0.3em 0.6em 0.3em;
    max-width: 100%;
    grid-template-columns: auto 1fr;
}

.preamble__guild-icon-container {
    grid-column: 1;
}

.preamble__guild-icon {
    max-width: 88px;
    max-height: 88px;
}

.preamble__entries-container {
    grid-column: 2;
    margin-left: 0.6em;
}

.preamble__entry {
    font-size: 1.4em;
}

.preamble__entry--small {
    font-size: 1em;
}

/* Chatlog */

.chatlog {
    max-width: 100%;
}

.chatlog__message-group {
    display: grid;
    margin: 0 0.6em;
    padding: 0.9em 0;
    border-top: 1px solid;
    grid-template-columns: auto 1fr;
}

.chatlog__author-avatar-container {
    grid-column: 1;
    width: 40px;
    height: 40px;
}

.chatlog__author-avatar {
    border-radius: 50%;
    height: 40px;
    width: 40px;
}

.chatlog__messages {
    grid-column: 2;
    margin-left: 1.2em;
    min-width: 50%;
}

.chatlog__author-name {
    font-weight: 500;
}

.chatlog__timestamp {
    margin-left: 0.3em;
    font-size: 0.75em;
}

.chatlog__message {
    padding: 0.1em 0.3em;
    margin: 0 -0.3em;
    background-color: transparent;
    transition: background-color 1s ease;
}

.chatlog__content {
    font-size: 0.95em;
    word-wrap: break-word;
}

.chatlog__edited-timestamp {
    margin-left: 0.15em;
    font-size: 0.8em;
}

.chatlog__attachment {
    margin-top: 0.3em;
}

.chatlog__attachment-thumbnail {
    vertical-align: top;
    max-width: 45vw;
    max-height: 500px;
    border-radius: 3px;
}

.chatlog__embed {
    display: flex;
    margin-top: 0.3em;
    max-width: 520px;
}

.chatlog__embed-color-pill {
    flex-shrink: 0;
    width: 0.25em;
    border-top-left-radius: 3px;
    border-bottom-left-radius: 3px;
}

.chatlog__embed-content-container {
    display: flex;
    flex-direction: column;
    padding: 0.5em 0.6em;
    border: 1px solid;
    border-top-right-radius: 3px;
    border-bottom-right-radius: 3px;
}

.chatlog__embed-content {
    display: flex;
    width: 100%;
}

.chatlog__embed-text {
    flex: 1;
}

.chatlog__embed-author {
    display: flex;
    margin-bottom: 0.3em;
    align-items: center;
}

.chatlog__embed-author-icon {
    margin-right: 0.5em;
    width: 20px;
    height: 20px;
    border-radius: 50%;
}

.chatlog__embed-author-name {
    font-size: 0.875em;
    font-weight: 600;
}

.chatlog__embed-title {
    margin-bottom: 0.2em;
    font-size: 0.875em;
    font-weight: 600;
}

.chatlog__embed-description {
    font-weight: 500;
    font-size: 0.85em;
}

.chatlog__embed-fields {
    display: flex;
    flex-wrap: wrap;
}

.chatlog__embed-field {
    flex: 0;
    min-width: 100%;
    max-width: 506px;
    padding-top: 0.6em;
    font-size: 0.875em;
}

.chatlog__embed-field--inline {
    flex: 1;
    flex-basis: auto;
    min-width: 150px;
}

.chatlog__embed-field-name {
    margin-bottom: 0.2em;
    font-weight: 600;
}

.chatlog__embed-field-value {
    font-weight: 500;
}

.chatlog__embed-thumbnail {
    flex: 0;
    margin-left: 1.2em;
    max-width: 80px;
    max-height: 80px;
    border-radius: 3px;
}

.chatlog__embed-image-container {
    margin-top: 0.6em;
}

.chatlog__embed-image {
    max-width: 500px;
    max-height: 400px;
    border-radius: 3px;
}

.chatlog__embed-footer {
    margin-top: 0.6em;
}

.chatlog__embed-footer-icon {
    margin-right: 0.2em;
    width: 20px;
    height: 20px;
    border-radius: 50%;
    vertical-align: middle;
}

.chatlog__embed-footer-text {
    font-size: 0.75em;
    font-weight: 500;
}

.chatlog__reactions {
    display: flex;
}

.chatlog__reaction {
    display: flex;
    align-items: center;
    margin: 0.35em 0.1em 0.1em 0.1em;
    padding: 0.2em 0.35em;
    border-radius: 3px;
}

.chatlog__reaction-count {
    min-width: 9px;
    margin-left: 0.35em;
    font-size: 0.875em;
}

.chatlog__bot-tag {
    position: relative;
    top: -.2em;
    margin-left: 0.3em;
    padding: 0.05em 0.3em;
    border-radius: 3px;
    vertical-align: middle;
    line-height: 1.3;
    background: #7289da;
    color: #ffffff;
    font-size: 0.625em;
    font-weight: 500;
}

/* Postamble */

.postamble {
    margin: 1.4em 0.3em 0.6em 0.3em;
    padding: 1em;
    border-top: 1px solid;
}
    </style>
    <style>
        /* General */

body {
    background-color: #36393e;
    color: #dcddde;
}

a {
    color: #0096cf;
}

.spoiler-text {
    background-color: rgba(255, 255, 255, 0.1);
}

.spoiler--hidden .spoiler-text {
    background-color: #202225;
}

.spoiler--hidden:hover .spoiler-text {
    background-color: rgba(32, 34, 37, 0.8);
}

.quote {
    border-color: #4f545c;
}

.pre {
    background-color: #2f3136 !important;
}

.pre--multiline {
    border-color: #282b30 !important;
    color: #b9bbbe !important;
}

/* === Preamble === */

.preamble__entry {
    color: #ffffff;
}

/* Chatlog */

.chatlog__message-group {
    border-color: rgba(255, 255, 255, 0.1);
}

.chatlog__author-name {
    color: #ffffff;
}

.chatlog__timestamp {
    color: rgba(255, 255, 255, 0.2);
}

.chatlog__message--highlighted {
    background-color: rgba(114, 137, 218, 0.2) !important;
}

.chatlog__message--pinned {
    background-color: rgba(249, 168, 37, 0.05);
}

.chatlog__edited-timestamp {
    color: rgba(255, 255, 255, 0.2);
}

.chatlog__embed-color-pill--default {
    background-color: rgba(79, 84, 92, 1);
}

.chatlog__embed-content-container {
    background-color: rgba(46, 48, 54, 0.3);
    border-color: rgba(46, 48, 54, 0.6);
}

.chatlog__embed-author-name {
    color: #ffffff;
}

.chatlog__embed-author-name-link {
    color: #ffffff;
}

.chatlog__embed-title {
    color: #ffffff;
}

.chatlog__embed-description {
    color: rgba(255, 255, 255, 0.6);
}

.chatlog__embed-field-name {
    color: #ffffff;
}

.chatlog__embed-field-value {
    color: rgba(255, 255, 255, 0.6);
}

.chatlog__embed-footer {
    color: rgba(255, 255, 255, 0.6);
}

.chatlog__reaction {
    background-color: rgba(255, 255, 255, 0.05);
}

.chatlog__reaction-count {
    color: rgba(255, 255, 255, 0.3);
}

/* Postamble */

.postamble {
    border-color: rgba(255, 255, 255, 0.1);
}

.postamble__entry {
    color: #ffffff;
}
    </style>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.6/styles/solarized-dark.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.6/highlight.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            document.querySelectorAll('.pre--multiline').forEach(block => hljs.highlightBlock(block));
        });
    </script>

    <script>
        function scrollToMessage(event, id) {
            var element = document.getElementById('message-' + id);

            if (element) {
                event.preventDefault();

                element.classList.add('chatlog__message--highlighted');

                window.scrollTo({
                    top: element.getBoundingClientRect().top - document.body.getBoundingClientRect().top - (window.innerHeight / 2),
                    behavior: 'smooth'
                });

                window.setTimeout(function() {
                    element.classList.remove('chatlog__message--highlighted');
                }, 2000);
            }
        }

        function showSpoiler(event, element) {
            if (element && element.classList.contains('spoiler--hidden')) {
                event.preventDefault();
                element.classList.remove('spoiler--hidden');
            }
        }
    </script>
</head>
<body>

<div class="preamble">
    <div class="preamble__guild-icon-container">
        <img class="preamble__guild-icon" src="https://cdn.discordapp.com/icons/740485930355392554/a_81c4a6762929c3f2888b81ac3b2b75eb.png" alt="Guild icon">
    </div>
    <div class="preamble__entries-container">
        <div class="preamble__entry">TRPG CoC調查局</div>
        <div class="preamble__entry">調查組-1（已借出-艾鷲斯） / 入骨三分-結團2</div>


    </div>
</div>

<div class="chatlog">


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">16-Jan-21 07:17 PM</span>

            <div class="chatlog__message " data-message-id="799960399864659968" id="message-799960399864659968">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>  
角卡幫我丟這就好了
舊卡是警察那些的也可以放上來

我這周及下周不能約，之後三 五 六 日晚上都可以
要約一 二 四 會更晚 然後可以選擇 語音or文字</span>

                                <span class="chatlog__edited-timestamp" title="16-Jan-21 07:38 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">16-Jan-21 07:21 PM</span>

            <div class="chatlog__message " data-message-id="799961453452853258" id="message-799961453452853258">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">OK</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">16-Jan-21 08:43 PM</span>

            <div class="chatlog__message " data-message-id="799982092913999892" id="message-799982092913999892">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><a href="https://docs.google.com/spreadsheets/d/1a4lZy5irby7NFLmPEtE8cRirGgRtUubRavvEJNyKMAE/edit#gid=1347640803">https://docs.google.com/spreadsheets/d/1a4lZy5irby7NFLmPEtE8cRirGgRtUubRavvEJNyKMAE/edit#gid=1347640803</a></span>

                        </div>
                    </div>


                    <div class="chatlog__embed">
                            <div class="chatlog__embed-color-pill chatlog__embed-color-pill--default"></div>

                        <div class="chatlog__embed-content-container">
                            <div class="chatlog__embed-content">
                                <div class="chatlog__embed-text">

                                        <div class="chatlog__embed-title">
                                                <a class="chatlog__embed-title-link" href="https://docs.google.com/spreadsheets/d/1a4lZy5irby7NFLmPEtE8cRirGgRtUubRavvEJNyKMAE/edit">
                                                    <div class="markdown preserve-whitespace">緒方 納耶</div>
                                                </a>
                                        </div>

                                        <div class="chatlog__embed-description">
                                            <div class="markdown preserve-whitespace">人物卡

此卡不再更新
提示：綠色底色為自動計算，白色為手動輸入。
基本資訊,<img class="emoji " alt="★" title="★" src="https://twemoji.maxcdn.com/2/72x72/2605.png">表示本職技能。<img class="emoji " alt="☆" title="☆" src="https://twemoji.maxcdn.com/2/72x72/2606.png">表示職業可選技能。,人物屬性
姓名,緒方  納耶,職業,偵探,580,開角,調整,最終值
玩家,摳摳那,出生地,日本,力量,70,70,35 / 14
性別,男,居住地,東京,敏捷,75,75,37 / 15
年齡,27,學歷,碩士,意志,70,70,35 / 14
特徵,1,11,運動,特徵2,4,3,射擊名人,體質,70,70,35 / 14
職業配點,外貌,70,70,35 / 14
職業序號,1089,教育,80,80,40 / 16
職業,私家偵探,體型,70,70,35 / 14
...</div>
                                        </div>

                                </div>

                                    <div class="chatlog__embed-thumbnail-container">
                                        <a class="chatlog__embed-thumbnail-link" href="https://lh5.googleusercontent.com/lIRbRW72EulFTjXcaZmbFvbsLjH9QKz_0BJRXZesARGfiT04e2hlxhe61Ps1UAwBuIioXowH0g=w1200-h630-p">
                                            <img class="chatlog__embed-thumbnail" src="https://lh5.googleusercontent.com/lIRbRW72EulFTjXcaZmbFvbsLjH9QKz_0BJRXZesARGfiT04e2hlxhe61Ps1UAwBuIioXowH0g=w1200-h630-p" alt="Thumbnail">
                                        </a>
                                    </div>
                            </div>


                        </div>
                    </div>

            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">16-Jan-21 09:14 PM</span>

            <div class="chatlog__message " data-message-id="799990032990601216" id="message-799990032990601216">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">問一下這兩個
<strong>驅魔子彈</strong> 如果是一次性會讓你帶 <s>你要撿回來我是不反對</s>
<strong>星星的保護 </strong>可以的話這需要修改後才能讓你帶上 不然我就當這buff限特定場景</span>

                                <span class="chatlog__edited-timestamp" title="16-Jan-21 09:17 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">16-Jan-21 09:28 PM</span>

            <div class="chatlog__message " data-message-id="799993394507022356" id="message-799993394507022356">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">不是一次性的</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="799993449335357481" id="message-799993449335357481">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">可以不帶</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">16-Jan-21 09:30 PM</span>

            <div class="chatlog__message " data-message-id="799993956275978260" id="message-799993956275978260">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那就OK了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">23-Jan-21 06:01 PM</span>

            <div class="chatlog__message " data-message-id="802478089095479327" id="message-802478089095479327">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span> 
那麼這邊可以給出你有空的時間</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">23-Jan-21 06:07 PM</span>

            <div class="chatlog__message " data-message-id="802479673962921984" id="message-802479673962921984">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">2/1、2/3晚上沒空
1/24~27整天沒空
1/28、1/29、2/6早上沒空</span>

                                <span class="chatlog__edited-timestamp" title="23-Jan-21 06:08 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">24-Jan-21 12:59 PM</span>

            <div class="chatlog__message " data-message-id="802764516530192426" id="message-802764516530192426">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span> 
確認一下這時間可否
--------------------------
⇚ 劇本：入骨三分 ⇛ 
開始時間➢ 1/28 (四) 晚上6:00</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">24-Jan-21 01:09 PM</span>

            <div class="chatlog__message " data-message-id="802767073620787220" id="message-802767073620787220">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">應該是OK</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="802767140037066762" id="message-802767140037066762">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">晚點給你個答覆</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">25-Jan-21 08:26 PM</span>

            <div class="chatlog__message " data-message-id="803239321783500800" id="message-803239321783500800">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">忘記給啦抱歉</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="803239329853210644" id="message-803239329853210644">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">我可以哦</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">25-Jan-21 08:26 PM</span>

            <div class="chatlog__message " data-message-id="803239448463671327" id="message-803239448463671327">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><img class="emoji emoji--large" alt="👌" title="👌" src="https://twemoji.maxcdn.com/2/72x72/1f44c.png"></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 03:41 PM</span>

            <div class="chatlog__message " data-message-id="804254793467953163" id="message-804254793467953163">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span> 
我們改文字團行嗎，mic不穩。</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 05:37 PM</span>

            <div class="chatlog__message " data-message-id="804283881548152882" id="message-804283881548152882">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">可以哦</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804283958530539540" id="message-804283958530539540">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有能夠等我個十~二十分鐘嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 05:37 PM</span>

            <div class="chatlog__message " data-message-id="804283994681638942" id="message-804283994681638942">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">好的<img class="emoji " alt="👌" title="👌" src="https://twemoji.maxcdn.com/2/72x72/1f44c.png"></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 05:37 PM</span>

            <div class="chatlog__message " data-message-id="804284015036858368" id="message-804284015036858368">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">感謝</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 05:49 PM</span>

            <div class="chatlog__message " data-message-id="804286966266724373" id="message-804286966266724373">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">≣≣≣≣≣≣ ⇛劇本 入骨三分 ⇚ ≣≣≣≣≣≣

時間 ⇛ 1月22日 早上
地點 ⇛ 你的車上

&quot;在開車的返家的途中，你接到一通電話&quot;
「我想請你調查一個案件...」

「某某街區發生了凶殺案，我希望你能解決那邊的案件」

「報酬的話，我會匯到你那的。」

「順帶一提，我已經跟那一位調查官談好了，到了那邊你自然有調查的權力。」
--------------------------------------------------</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 05:53 PM">(edited)</span>
                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/804286966103408670/4ec6d176324cd651.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/804286966103408670/4ec6d176324cd651.png" alt="Image attachment" title="Image: 4ec6d176324cd651.png (1.14 MB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
            <div class="chatlog__message " data-message-id="804286980719771658" id="message-804286980719771658">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">--------------------------------------------------
BGM支援 <a href="https://www.youtube.com/watch?v=CeDzWbwyAKE">https://www.youtube.com/watch?v=CeDzWbwyAKE</a>
--------------------------------------------------</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 06:05 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 06:12 PM</span>

            <div class="chatlog__message " data-message-id="804292712752480277" id="message-804292712752480277">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//有點想睡覺</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 06:19 PM</span>

            <div class="chatlog__message " data-message-id="804294586473644033" id="message-804294586473644033">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//抱歉我來了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 06:24 PM</span>

            <div class="chatlog__message " data-message-id="804295728238952479" id="message-804295728238952479">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//喔齁 RP GO</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 06:24 PM</span>

            <div class="chatlog__message " data-message-id="804295929691373578" id="message-804295929691373578">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//能夠設定我帶著老爸寄給我的槍嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804296017704910858" id="message-804296017704910858">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//因為地點是美國嘛，不然就是帶著一把槍</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 06:26 PM</span>

            <div class="chatlog__message " data-message-id="804296228266573914" id="message-804296228266573914">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//好吧 本來剛剛想要你過幸運</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 06:26 PM</span>

            <div class="chatlog__message " data-message-id="804296313482772532" id="message-804296313482772532">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//要過也是可以啦</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 06:26 PM</span>

            <div class="chatlog__message " data-message-id="804296378775896065" id="message-804296378775896065">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//沒關係讓你帶著</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 06:27 PM</span>

            <div class="chatlog__message " data-message-id="804296689779081257" id="message-804296689779081257">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「凶殺案嘛...不知道為什麼聽到發生了這種案件反而開始有了一些實感呢，果然最近遭遇了太多不尋常的事了」
小聲的呢喃後便將車子掉頭轉向了案發地點前進</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 06:30 PM</span>

            <div class="chatlog__message " data-message-id="804297296912842772" id="message-804297296912842772">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你依據電話所給的地址來到中等偏下的街區，
而有一棟雙層排屋外圍，有多名員警看守，
那裡似乎就是目的地...</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 06:31 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 06:33 PM</span>

            <div class="chatlog__message " data-message-id="804298132976041984" id="message-804298132976041984">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">將車子停在了街口處十字路旁便下了車走向雙層屋處，並向著最近的警察搭話
「不好意思呢，我是受到了委託來調查這起案件的偵探，能夠大概講講發生了什麼嗎」</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 06:36 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 06:37 PM</span>

            <div class="chatlog__message " data-message-id="804299055869460490" id="message-804299055869460490">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「初步辨認，受害者是一位女性中年教師。」

「稍早前，從大學回家的兒子發現了母親的屍體，她向附近鄰居求救，也順勢報警」

「而我們還在嘗試聯絡那名家屬的父親。」
&quot;員警簡單說道&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804299201864400907" id="message-804299201864400907">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「詳細情況，你可以問問正在現場偵查的調查官。」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 06:38 PM</span>

            <div class="chatlog__message " data-message-id="804299451019296788" id="message-804299451019296788">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「明白」
簡短的回應後便走入了屋內</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804299806242897940" id="message-804299806242897940">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">在到處走動忙著調查的警察中尋找看起來職位較大的警官
「我是受到委託前來幫助調查的偵探，能夠告訴我目前查到的資訊嗎」</span>

                                <span class="chatlog__edited-timestamp" title="29-Jan-21 03:17 AM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804299936111132684" id="message-804299936111132684">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「死者是誰，屍體處有什麼發現等等」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 06:44 PM</span>

            <div class="chatlog__message " data-message-id="804300798040604682" id="message-804300798040604682">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">一進屋內你感受到鮮血在空氣中的腥羶味，
屍體目前用布蓋著。

一位看起來經驗較老道的人回應道
「他名叫&quot;伊莉莎&#183;達弗林&quot;是擔任教師，死於主走廊樓梯處。她的屍體仍留在原地。」

「伊莉莎似乎是從背部遭到斬擊。她的身上沒有防禦性傷口。」

「話說，你就是來協助偵辦這起案件的偵探吧...」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 06:46 PM</span>

            <div class="chatlog__message " data-message-id="804301321443868712" id="message-804301321443868712">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「是的沒錯，還有我從門口的警員那邊聽了報案的好像是她的兒子對吧」

「現在他人呢？精神狀況還穩定嗎？」

「還有這應該就是受害者的住宅對吧，能夠說明一下整層樓的構造嗎」</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 06:47 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 06:53 PM</span>

            <div class="chatlog__message " data-message-id="804303222575595540" id="message-804303222575595540">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">老調查員指向在門口坐著的青年
「就是他了，不過他值得讚許，遇到這件事臨危不亂，很冷靜的告知狀況。」

「至於這房子的建築構造...」

玄關→左轉客廳｜前進飯廳＋開放式廚房｜前進右轉一扇門
玄關→上樓梯(死者)→第一間母親臥室｜第二間父親臥室兼辦公司兼書房｜第三間兒子臥室</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 07:03 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804303371032330260" id="message-804303371032330260">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//本來想備圖，但常用的地圖製作網站關了...</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 06:54 PM">(edited)</span>
                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="10" title="10" src="https://cdn.discordapp.com/emojis/767441222846382130.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 06:55 PM</span>

            <div class="chatlog__message " data-message-id="804303733214150739" id="message-804303733214150739">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//那現在是一樓還是二樓</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 06:56 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 06:56 PM</span>

            <div class="chatlog__message " data-message-id="804303809777500171" id="message-804303809777500171">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//一樓樓梯處</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 06:56 PM</span>

            <div class="chatlog__message " data-message-id="804303876365877269" id="message-804303876365877269">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//明白</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804304154083196978" id="message-804304154083196978">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">一邊聽著身旁這位老警探的話一邊觀察一下屍體的周遭環境</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 06:58 PM</span>

            <div class="chatlog__message " data-message-id="804304417188610058" id="message-804304417188610058">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">很明顯的...
＂在她身邊有一個攤開且已經拉開拉鍊的黑色屍體袋＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 06:59 PM</span>

            <div class="chatlog__message " data-message-id="804304616945614858" id="message-804304616945614858">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「剛到這裡就很好奇，旁邊這個黑色屍體袋是什麼？來裝死者屍體的？」</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 06:59 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:01 PM</span>

            <div class="chatlog__message " data-message-id="804305053434380308" id="message-804305053434380308">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「我們也相當好奇這屍體袋哪來的。」

「據我所知，我們才剛剛呼叫化驗官準備前來把屍體運走的」</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 07:01 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:02 PM</span>

            <div class="chatlog__message " data-message-id="804305382407012364" id="message-804305382407012364">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「這麼說來這個屍體袋是原本就在這的嗎...」
&quot;說著便戴上了白手套蹲到屍體旁並用眼神徵求警官同意&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:02 PM</span>

            <div class="chatlog__message " data-message-id="804305500728328203" id="message-804305500728328203">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;調查官點頭表示同意&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:03 PM</span>

            <div class="chatlog__message " data-message-id="804305721587925033" id="message-804305721587925033">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;拿起屍袋先看看它的外在表層再看看內側&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804305945030819860" id="message-804305945030819860">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「話說有查出死者住宅內有缺少了什麼嗎」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804306061842579466" id="message-804306061842579466">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「或是死者的關係人員中有沒有誰有動機這麼做」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:09 PM</span>

            <div class="chatlog__message " data-message-id="804307173093408779" id="message-804307173093408779">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂可以確定，的確是醫院或化驗所常用的屍袋＂

「對了，剛剛那名少年說他剛回來時，好像嫌犯還在家中，準備逃逸」

「我們順著那扇破窗戶，沿著一條血跡走向到人孔蓋」

「這應該是早有預謀的...」
「日後我猜會鎖定那名青年的父親，因為到目前為止都還聯繫不上。」</span>

                                <span class="chatlog__edited-timestamp" title="30-Jan-21 02:53 AM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:11 PM</span>

            <div class="chatlog__message " data-message-id="804307693287243786" id="message-804307693287243786">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「破窗戶？帶我去看看」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:14 PM</span>

            <div class="chatlog__message " data-message-id="804308431170175016" id="message-804308431170175016">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂調查官帶你走向破窗戶，看起來在樓上＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:15 PM</span>

            <div class="chatlog__message " data-message-id="804308647731527692" id="message-804308647731527692">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「你說嫌犯是從這邊逃跑的對吧」

「從二樓跳下去」</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 07:15 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:17 PM</span>

            <div class="chatlog__message " data-message-id="804309163328798721" id="message-804309163328798721">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「是的，但有一點讓我疑惑，血跡是從青年父親臥房拖出的」

「目前比較合理的推斷是，嫌犯也有受到傷害」</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 07:17 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:19 PM</span>

            <div class="chatlog__message " data-message-id="804309704603074570" id="message-804309704603074570">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「這樣啊...剩下的我自己調查就好，辛苦你了」

&quot;說完話後便向著父親臥室前進&quot;

「啊對了 ，有在屋內發現強行闖入的痕跡嗎」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:21 PM</span>

            <div class="chatlog__message " data-message-id="804310165654470656" id="message-804310165654470656">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「你要找的是地下室吧，那裡的確有闖入痕跡」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:22 PM</span>

            <div class="chatlog__message " data-message-id="804310395091157012" id="message-804310395091157012">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「明白了，我也就不妨礙你繼續調查」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804310454058090517" id="message-804310454058090517">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;前往父親臥室&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:23 PM</span>

            <div class="chatlog__message " data-message-id="804310673835425842" id="message-804310673835425842">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">進入父親臥室後，看到...
&quot;在兼做臥室和辦公室的狹小房間裡&quot;
&quot;一張翻倒的椅子上和它周圍分佈有大量血跡。檯燈，垃圾廣告和賬單散落在地板上&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:24 PM</span>

            <div class="chatlog__message " data-message-id="804310875304624209" id="message-804310875304624209">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//現在問有點晚了但我剛剛翻看屍袋有發現東西或曾有東西在裡面的痕跡嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:24 PM</span>

            <div class="chatlog__message " data-message-id="804311013485707284" id="message-804311013485707284">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//沒有 反而看起來像還沒裝過東西　＂全新＂</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 07:25 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:26 PM</span>

            <div class="chatlog__message " data-message-id="804311394937471042" id="message-804311394937471042">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「血跡嗎？這就怪了，我還以為只有被害者屍體處才有血跡」
在心裡默默地想著後便去看看廣告和帳單</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:26 PM</span>

            <div class="chatlog__message " data-message-id="804311495714013204" id="message-804311495714013204">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//偵查 在這投就行了</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 07:27 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:27 PM</span>

            <div class="chatlog__message " data-message-id="804311663700082728" id="message-804311663700082728">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//瞭解</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:28 PM</span>

            <div class="chatlog__message chatlog__message--pinned" data-message-id="804311942637420554" id="message-804311942637420554">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">散在辦公室地板上的垃圾廣告中，有一封信讓你很感興趣
<div class="pre pre--multiline language-來自河谷殯儀館的信">信上說：從下個月起，達弗林夫婦的葬禮計划款項應當郵寄給新的業主——寧靜有限公司。達弗林夫婦得到保證，他們的計劃中的條款將由新的業主兌現。</div></span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804311970958409748" id="message-804311970958409748">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">Pinned a message.</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:29 PM</span>

            <div class="chatlog__message " data-message-id="804312270511144990" id="message-804312270511144990">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//那帳單有沒有說明他們最近花了不少錢在某些東西上</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:30 PM</span>

            <div class="chatlog__message " data-message-id="804312525009190912" id="message-804312525009190912">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//帳單上的數目依他們家的環境判斷
//算是合理範圍</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:32 PM</span>

            <div class="chatlog__message " data-message-id="804312887106469890" id="message-804312887106469890">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//從血跡的分布可以看出是來自某個坐在椅子上的人嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:33 PM</span>

            <div class="chatlog__message " data-message-id="804313241861619712" id="message-804313241861619712">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//血跡分布看起來像單方面收到攻擊，而開始掙扎。</span>

                                <span class="chatlog__edited-timestamp" title="30-Jan-21 02:54 AM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:34 PM</span>

            <div class="chatlog__message " data-message-id="804313424145285122" id="message-804313424145285122">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;帶著信封出門去找兒子&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:34 PM</span>

            <div class="chatlog__message " data-message-id="804313553582424064" id="message-804313553582424064">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂你順著樓梯下樓，來到那名青年旁＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:37 PM</span>

            <div class="chatlog__message " data-message-id="804314103723065385" id="message-804314103723065385">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「在你還傷心時提問很抱歉，你知道這封信嗎？」
&quot;亮出信在他的眼前&quot;
「他們有沒有簽什麼合約之類的？」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:39 PM</span>

            <div class="chatlog__message " data-message-id="804314761465823252" id="message-804314761465823252">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「這封信？阿..我的父母患有關節炎或其他什麼病。」
「兩人最近都經常請病假，甚至對我老爸的工作造成了影響。」

「奇怪的是...他們在一年半前寫下了一份遺囑併購買了墓地，但這早於他們患病的時間。」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:42 PM</span>

            <div class="chatlog__message " data-message-id="804315399285637130" id="message-804315399285637130">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「能給我看看遺囑嗎？」

「還有聽說你到家時與嫌犯發生了追逐，你有看到嫌犯的模樣或是穿著嗎？」

「喔對了，我叫納耶，是被委託前來調查的偵探」

&quot;拿出一根巧克力給他&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:46 PM</span>

            <div class="chatlog__message " data-message-id="804316349181722685" id="message-804316349181722685">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「謝謝你...偵探先生」

「起初回到家聽到了辦公室窗戶破碎的聲音。」
「進房後看到老媽躺在那，我也感覺到房中似乎還有別人，我立馬奔出屋子向鄰居呼救」
「當下實在太緊張了，我沒看到嫌犯具體樣貌，不過他看起來瘦瘦但有些肌肉。」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:48 PM</span>

            <div class="chatlog__message " data-message-id="804316848509550632" id="message-804316848509550632">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「嗯...我明白了，那我也不方便繼續打擾啦，好好保重呢小鬼」
&quot;說完話後起身離開前往廚房&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:49 PM</span>

            <div class="chatlog__message " data-message-id="804317186617114674" id="message-804317186617114674">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂是一個開放式廚房，不過雜物凌亂。
但它更像是平常使用者習慣造成＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:49 PM</span>

            <div class="chatlog__message " data-message-id="804317317068619808" id="message-804317317068619808">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;看看有沒有缺失的刀具&quot;</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 07:49 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:50 PM</span>

            <div class="chatlog__message " data-message-id="804317574644236308" id="message-804317574644236308">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂你翻了翻櫥櫃，除了凌亂，樣品還挺多樣完整的＂</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 07:51 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:52 PM</span>

            <div class="chatlog__message " data-message-id="804317967893397514" id="message-804317967893397514">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;回去辦公房到處翻翻尋找看看有沒有遺囑或是與殯儀館的簽約合同&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:53 PM</span>

            <div class="chatlog__message " data-message-id="804318225290100747" id="message-804318225290100747">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂你又回到辦公室搜查了一下，但看樣子沒什麼地方值得注意＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:53 PM</span>

            <div class="chatlog__message " data-message-id="804318318742863892" id="message-804318318742863892">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;前往母親臥室&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804318378134470666" id="message-804318378134470666">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;尋找一下有沒有什麼藥物&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:55 PM</span>

            <div class="chatlog__message " data-message-id="804318702932590632" id="message-804318702932590632">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂來到了母親臥室，床頭櫃有一些文件放在那＂
//偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:55 PM</span>

            <div class="chatlog__message " data-message-id="804318814178770945" id="message-804318814178770945">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 75 偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">28-Jan-21 07:55 PM</span>

            <div class="chatlog__message " data-message-id="804318815160238123" id="message-804318815160238123">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 75：
51 → 通常成功：偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:56 PM</span>

            <div class="chatlog__message " data-message-id="804318977299710021" id="message-804318977299710021">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;此外你還發現床底下有個保險櫃，顯然他藏得太淺了。&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:56 PM</span>

            <div class="chatlog__message " data-message-id="804319082802839602" id="message-804319082802839602">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;把保險櫃給拉了出來&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:58 PM</span>

            <div class="chatlog__message " data-message-id="804319547158298665" id="message-804319547158298665">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂將保險櫃拉出來後，旁邊刻有SIAA ZQ LKBA＂</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804319580016738315" id="message-804319580016738315">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂很明顯是鎖上的＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 07:59 PM</span>

            <div class="chatlog__message " data-message-id="804319751110918186" id="message-804319751110918186">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//鎖頭可以輸入旁邊刻著的英文嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 07:59 PM</span>

            <div class="chatlog__message " data-message-id="804319810891939860" id="message-804319810891939860">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//電子鍵盤鎖</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804320072310587463" id="message-804320072310587463">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//找不到圖，就一些科幻電影常出現的鎖唄</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:01 PM</span>

            <div class="chatlog__message " data-message-id="804320129194000394" id="message-804320129194000394">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;先離開這個房間到外面走廊破碎的窗戶看看&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804320190510268437" id="message-804320190510268437">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//上面的破洞大概多大</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:01 PM</span>

            <div class="chatlog__message " data-message-id="804320310501441546" id="message-804320310501441546">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//像是有人衝破玻璃那樣</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:02 PM</span>

            <div class="chatlog__message " data-message-id="804320467443515422" id="message-804320467443515422">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;把頭探出窗外看底下&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:03 PM</span>

            <div class="chatlog__message " data-message-id="804320771622830151" id="message-804320771622830151">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂有一條血跡向遠處的道路旁為止，恐怕那裡是嫌犯逃跑路線的人孔蓋＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:04 PM</span>

            <div class="chatlog__message " data-message-id="804320987453063168" id="message-804320987453063168">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;前往地下室，途中先去找老警官說明找到的保險箱&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:05 PM</span>

            <div class="chatlog__message " data-message-id="804321354484285510" id="message-804321354484285510">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「你在青年母親房間找到這個的？」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:06 PM</span>

            <div class="chatlog__message " data-message-id="804321569093844992" id="message-804321569093844992">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「對，藏的不怎麼隱密」</span>

                                <span class="chatlog__edited-timestamp" title="29-Jan-21 03:21 AM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:07 PM</span>

            <div class="chatlog__message " data-message-id="804321759632818196" id="message-804321759632818196">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂調查官伸手＂
「拿來給我看看，我想我應該解開」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:08 PM</span>

            <div class="chatlog__message " data-message-id="804322052642701363" id="message-804322052642701363">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「你還是跟我來吧」
&quot;說完便轉身上樓去保險箱旁&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:10 PM</span>

            <div class="chatlog__message " data-message-id="804322406025396244" id="message-804322406025396244">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「在這邊阿」
＂說完調查官便趴下身準備解鎖＂</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804322467362635796" id="message-804322467362635796">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「你先去調查其他地方吧，這需要一點時間」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:10 PM</span>

            <div class="chatlog__message " data-message-id="804322569448587265" id="message-804322569448587265">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「期待聽到你的好消息啊」
&quot;前往地下室&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:12 PM</span>

            <div class="chatlog__message " data-message-id="804323118138916864" id="message-804323118138916864">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;地下室僅有微弱的燈光亮著，部分社區民眾會把洗衣機跟乾衣機放在地下室&quot;
＂看來這個家也是這樣佈置的＂
//偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:13 PM</span>

            <div class="chatlog__message " data-message-id="804323259398225930" id="message-804323259398225930">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 75 偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">28-Jan-21 08:13 PM</span>

            <div class="chatlog__message " data-message-id="804323260371828746" id="message-804323260371828746">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 75：
76 → 失敗：偵查</span>

                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="10" title="10" src="https://cdn.discordapp.com/emojis/767441222846382130.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:13 PM</span>

            <div class="chatlog__message " data-message-id="804323327438487602" id="message-804323327438487602">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//可燒或孤注</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:13 PM</span>

            <div class="chatlog__message " data-message-id="804323385114755113" id="message-804323385114755113">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//孤注</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804323406375026719" id="message-804323406375026719">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 75 偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">28-Jan-21 08:14 PM</span>

            <div class="chatlog__message " data-message-id="804323407561752606" id="message-804323407561752606">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 75：
75 → 通常成功：偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:14 PM</span>

            <div class="chatlog__message " data-message-id="804323558481854484" id="message-804323558481854484">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//這什麼恐怖的骰子</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:15 PM</span>

            <div class="chatlog__message " data-message-id="804323785532506113" id="message-804323785532506113">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//怕

＂剛才由於還沒有適應亮度，所以視線有點渙散＂
＂在你適應後，你察覺到連接屋外的乾衣機排氣軟管被撕了下來＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:16 PM</span>

            <div class="chatlog__message " data-message-id="804323936619069440" id="message-804323936619069440">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//排氣管能夠容納普通的成年人嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:16 PM</span>

            <div class="chatlog__message " data-message-id="804324088025055242" id="message-804324088025055242">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//不行</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804324093561274388" id="message-804324093561274388">

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/804324093343563797/TB2.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/804324093343563797/TB2.png" alt="Image attachment" title="Image: TB2.png (690.9 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:17 PM</span>

            <div class="chatlog__message " data-message-id="804324211664355368" id="message-804324211664355368">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//地下室有其他像是外部侵入的痕跡嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:17 PM</span>

            <div class="chatlog__message " data-message-id="804324282981285898" id="message-804324282981285898">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//靈感</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:17 PM</span>

            <div class="chatlog__message " data-message-id="804324321476476938" id="message-804324321476476938">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 75 int</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">28-Jan-21 08:17 PM</span>

            <div class="chatlog__message " data-message-id="804324322042052621" id="message-804324322042052621">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 75：
28 → 困難成功：int</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:18 PM</span>

            <div class="chatlog__message " data-message-id="804324584752545833" id="message-804324584752545833">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂你覺得與其是外部入侵，更像是從這個地下室闖進這間屋子＂</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 08:18 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:19 PM</span>

            <div class="chatlog__message " data-message-id="804324687425306645" id="message-804324687425306645">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//還是說那個連接屋外的排氣管有辦法從外面爬進來</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804324796531212368" id="message-804324796531212368">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我也覺得犯人是先到地下室在上去的</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804324882317836328" id="message-804324882317836328">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//不然也不太可能一直待在地下室吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:19 PM</span>

            <div class="chatlog__message " data-message-id="804324885978939432" id="message-804324885978939432">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//的確有點空間能下來地下室 從排氣口</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 08:20 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:20 PM</span>

            <div class="chatlog__message " data-message-id="804325018221412352" id="message-804325018221412352">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;先去外面看看洗衣機的排氣口&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:21 PM</span>

            <div class="chatlog__message " data-message-id="804325281690812426" id="message-804325281690812426">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂來到屋外看到，乾衣機排氣口蓋被翹起並曾被匆忙裝回＂</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 08:21 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:23 PM</span>

            <div class="chatlog__message " data-message-id="804325819509506075" id="message-804325819509506075">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;去看一下嫌犯跳下的窗戶底下好了&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:24 PM</span>

            <div class="chatlog__message " data-message-id="804325941329264731" id="message-804325941329264731">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:24 PM</span>

            <div class="chatlog__message " data-message-id="804325981426548766" id="message-804325981426548766">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 75 偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">28-Jan-21 08:24 PM</span>

            <div class="chatlog__message " data-message-id="804325982348640276" id="message-804325982348640276">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 75：
89 → 失敗：偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:24 PM</span>

            <div class="chatlog__message " data-message-id="804326015160942602" id="message-804326015160942602">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//孤注RRR</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:24 PM</span>

            <div class="chatlog__message " data-message-id="804326029065060354" id="message-804326029065060354">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//GO</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:24 PM</span>

            <div class="chatlog__message " data-message-id="804326034648203274" id="message-804326034648203274">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 75 偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">28-Jan-21 08:24 PM</span>

            <div class="chatlog__message " data-message-id="804326035520356403" id="message-804326035520356403">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 75：
9 → 極限成功：偵查</span>

                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="10" title="10" src="https://cdn.discordapp.com/emojis/767441222846382130.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:25 PM</span>

            <div class="chatlog__message " data-message-id="804326215896530945" id="message-804326215896530945">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//明明有75結果失敗率挺高的</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:25 PM</span>

            <div class="chatlog__message " data-message-id="804326340673142824" id="message-804326340673142824">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;能夠發現一大塊與留在現場的屍體袋同材質的黑色塑料，就掛在二樓破掉的窗框邊的一塊玻璃上&quot;</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 08:26 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:26 PM</span>

            <div class="chatlog__message " data-message-id="804326551851892796" id="message-804326551851892796">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//二樓那扇窗嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:26 PM</span>

            <div class="chatlog__message " data-message-id="804326578980519946" id="message-804326578980519946">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//對</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:26 PM</span>

            <div class="chatlog__message " data-message-id="804326640699572235" id="message-804326640699572235">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;先沿著血跡來到人孔蓋&quot;</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 08:27 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:27 PM</span>

            <div class="chatlog__message " data-message-id="804326911500877824" id="message-804326911500877824">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂可以看到，下水道的扶梯上有更多的血斑，但血跡最終在流動的污水里消失得無影無踪＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:28 PM</span>

            <div class="chatlog__message " data-message-id="804327123397247018" id="message-804327123397247018">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「看來要搜索這裡得花上相當大量的人力與時間呢...真是麻煩啊」
&quot;抱怨幾句後回去看看保險箱破解的如何&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:29 PM</span>

            <div class="chatlog__message " data-message-id="804327248060350514" id="message-804327248060350514">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂你回到了保險箱所在的房間＂</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804327302296895540" id="message-804327302296895540">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 70 調查官密碼學</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">28-Jan-21 08:29 PM</span>

            <div class="chatlog__message " data-message-id="804327303400128573" id="message-804327303400128573">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="艾鷲斯AIjius#9612">@艾鷲斯AIjius</span>
1D100 ≦ 70：
70 → 通常成功：調查官密碼學</span>

                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="10" title="10" src="https://cdn.discordapp.com/emojis/767441222846382130.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:29 PM</span>

            <div class="chatlog__message " data-message-id="804327392867909662" id="message-804327392867909662">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//真是驚險</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:31 PM</span>

            <div class="chatlog__message " data-message-id="804327812382457856" id="message-804327812382457856">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//嚇死

「看來這真的有點難度阿，你找對人了，我可是修過密碼學的喔」

「裡面有一把柯爾特 M1911，還有一些收據」</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 08:33 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:32 PM</span>

            <div class="chatlog__message " data-message-id="804328088057151528" id="message-804328088057151528">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「什麼嘛，你比看起來的還厲害呢」
也許是在一旁觀看也讓納耶不由自主的捏了把冷汗</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804328185957056552" id="message-804328185957056552">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「那這些收據就讓我來好好的看看吧」
&quot;拿出收據&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:34 PM</span>

            <div class="chatlog__message " data-message-id="804328509333176330" id="message-804328509333176330">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂是一些信用卡收據，醫療收據和保險聲明顯示＂
＂你得知了伊莉莎和霍華德的名字＂
＂看樣子兩人都曾去骨外科醫生米歇爾&#183;特拉斯克醫生處看診，並且時間均已超過一年了＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:35 PM</span>

            <div class="chatlog__message " data-message-id="804328847326969879" id="message-804328847326969879">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「醫療收據...這對夫妻有生了什麼病嗎？」

「而且剛剛還從他們的孩子那邊聽聞遺囑什麼的也立好了」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:38 PM</span>

            <div class="chatlog__message " data-message-id="804329643313332304" id="message-804329643313332304">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「不知道，目前還在對他們的背景進行調查」
「可能要幾天後才會有資訊」

「對了，化驗官剛剛已經來了」
「他現在應該正在佈置現場，準備將屍體運回去化驗了，待會你開車跟著他吧」

「這樣比較快速的採驗結果，你應該會第一手聽到」
「事後會進行歸檔」</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 08:39 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:39 PM</span>

            <div class="chatlog__message " data-message-id="804329898264625193" id="message-804329898264625193">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「好的，那離開前能留個聯絡方式嗎？」

「還有我叫納耶，很高興認識你」
&quot;遞出一根巧克力棒&quot;</span>

                                <span class="chatlog__edited-timestamp" title="29-Jan-21 03:23 AM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804329971740573716" id="message-804329971740573716">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「我的巧克力棒只給需要還有我想要給的人喔」</span>

                                <span class="chatlog__edited-timestamp" title="29-Jan-21 03:23 AM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804330153319989279" id="message-804330153319989279">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;順便確認一下手槍的子彈是不是滿的或是刻著什麼奇怪的東西&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:43 PM</span>

            <div class="chatlog__message " data-message-id="804330690556592179" id="message-804330690556592179">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">調查官隨和的拿起

「謝了，你叫我羅倫就行了」

＂那把槍是很常見的民間槍枝＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:44 PM</span>

            <div class="chatlog__message " data-message-id="804330966528950312" id="message-804330966528950312">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「最後問一下，保險箱旁的英文是密碼嗎？那有什麼含意嗎？」</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 08:44 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:45 PM</span>

            <div class="chatlog__message " data-message-id="804331354392494081" id="message-804331354392494081">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「flee at once 立刻逃走」

「估計這家人精神有些問題吧，真邪門」
羅倫抖了一下</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 08:45 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:46 PM</span>

            <div class="chatlog__message " data-message-id="804331639580393522" id="message-804331639580393522">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「誰知道呢？在查明真相前這些也說不準」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:48 PM</span>

            <div class="chatlog__message " data-message-id="804331950194163763" id="message-804331950194163763">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「或許吧..阿　我還有些事要先回局裡」

「待會你開車跟著那化驗官，對就是他」
羅倫指著一個正在劃線的男人</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:48 PM</span>

            <div class="chatlog__message " data-message-id="804332033388052511" id="message-804332033388052511">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「啊好的，那就此別過啦」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804332105605054474" id="message-804332105605054474">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;等羅倫離開後我要拿走手槍&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:49 PM</span>

            <div class="chatlog__message " data-message-id="804332272102146048" id="message-804332272102146048">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 50 羅倫靈感

「再見」
＂羅倫舉手示意＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">28-Jan-21 08:49 PM</span>

            <div class="chatlog__message " data-message-id="804332273175363584" id="message-804332273175363584">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="艾鷲斯AIjius#9612">@艾鷲斯AIjius</span>
1D100 ≦ 50：
74 → 失敗：羅倫靈感</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:49 PM</span>

            <div class="chatlog__message " data-message-id="804332437987393577" id="message-804332437987393577">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;你成功地拿走槍&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:51 PM</span>

            <div class="chatlog__message " data-message-id="804332727172071455" id="message-804332727172071455">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「離開前我還有點事情要做，能夠等我一下嗎」
&quot;擺出了相當有禮貌的態度對著化驗官說&quot;
&quot;講完去找他們的兒子&quot;</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 08:51 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:53 PM</span>

            <div class="chatlog__message " data-message-id="804333293175963658" id="message-804333293175963658">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「請吧，不過快一點」

「待會就要收工了」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:54 PM</span>

            <div class="chatlog__message " data-message-id="804333495307468830" id="message-804333495307468830">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//給我等等，差點忘記在窗邊的屍袋</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804333536471023618" id="message-804333536471023618">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;去窗戶旁拿起屍袋&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:55 PM</span>

            <div class="chatlog__message " data-message-id="804333775450144779" id="message-804333775450144779">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><div class="quote">&quot;能夠發現一大塊與留在現場的屍體袋同材質的黑色塑料，就掛在二樓破掉的窗框邊的一塊玻璃上&quot;
</div>＂你把跟屍袋很相似的一塊黑布拿起＂</span>

                                <span class="chatlog__edited-timestamp" title="30-Jan-21 03:01 AM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804333911228284998" id="message-804333911228284998">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//屍袋的一片布</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:56 PM</span>

            <div class="chatlog__message " data-message-id="804333978936279100" id="message-804333978936279100">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//記錯了可惡</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804334126190034945" id="message-804334126190034945">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;回去看看原本的屍袋有沒有破損&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:56 PM</span>

            <div class="chatlog__message " data-message-id="804334203806154822" id="message-804334203806154822">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">＂完好無損＂</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 08:57 PM</span>

            <div class="chatlog__message " data-message-id="804334383632744461" id="message-804334383632744461">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//大發現啊</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804334407090831371" id="message-804334407090831371">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;回去找兒子&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804334496622051328" id="message-804334496622051328">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「嘿，我能坐在你旁邊嗎」
&quot;不等他回話便坐了下來&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 08:58 PM</span>

            <div class="chatlog__message " data-message-id="804334591581749269" id="message-804334591581749269">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;青年有些疑惑&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 09:00 PM</span>

            <div class="chatlog__message " data-message-id="804335151701688340" id="message-804335151701688340">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「剛剛急著調查都忘記了你的感受真是抱歉呢」

「我想你現在的心情應該糟透了，回到家母親被殺害，父親又被當作兇手」

「但這是我的想法，你的父親跟母親一樣遇害了，而且他們可能早就知道了」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804335247889137735" id="message-804335247889137735">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;說完後將找到的手槍遞了上去&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 09:02 PM</span>

            <div class="chatlog__message " data-message-id="804335692414976051" id="message-804335692414976051">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//<img class="emoji " alt="18" title="18" src="https://cdn.discordapp.com/emojis/781162209756577802.png"><img class="emoji " alt="38" title="38" src="https://cdn.discordapp.com/emojis/803308886508830780.png"><img class="emoji " alt="19" title="19" src="https://cdn.discordapp.com/emojis/803308897662271538.png"></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 09:03 PM</span>

            <div class="chatlog__message " data-message-id="804335789856915486" id="message-804335789856915486">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「這是在保險箱中找到的，跟遺產一樣他們肯定希望你的生活能夠好好的過下去」

「還有我建議你最好去朋友或是其他可以信任的人家住個幾天」

「保險箱旁有著一小句密碼，破譯出來後是立刻逃走」

「犯人盯上的也許是你們全家」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804335882160701470" id="message-804335882160701470">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//可以先存個檔</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 09:03 PM</span>

            <div class="chatlog__message " data-message-id="804335916881674320" id="message-804335916881674320">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我要等你開車走存檔</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 09:04 PM</span>

            <div class="chatlog__message " data-message-id="804335985172676659" id="message-804335985172676659">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//okok，最後我問個名字就離開</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 09:05 PM</span>

            <div class="chatlog__message " data-message-id="804336476435382302" id="message-804336476435382302">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「謝謝你　偵探...納耶先生！！」

「我想我能找我朋友借宿個幾天...」

「還有，我的名子叫切爾哈特」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 09:06 PM</span>

            <div class="chatlog__message " data-message-id="804336645322178601" id="message-804336645322178601">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「很高興認識你呢切爾小弟」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804336681087008799" id="message-804336681087008799">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;開車出發！&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 09:08 PM</span>

            <div class="chatlog__message " data-message-id="804337013523611658" id="message-804337013523611658">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;上車時，你看見屍體運到後櫃，你也準備跟隨這輛車&quot;
＂到化驗所需要點時間＂</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804337159594573875" id="message-804337159594573875">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">≣≣≣≣≣≣ ⇛劇本 第一次幕間⇚ ≣≣≣≣≣≣</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804337275839709245" id="message-804337275839709245">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">幫我打下目前腦中的推理</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804337327685500928" id="message-804337327685500928">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">抓到要點，開啟幕間成長</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 09:09 PM</span>

            <div class="chatlog__message " data-message-id="804337350687064094" id="message-804337350687064094">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//好耶</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 09:09 PM</span>

            <div class="chatlog__message " data-message-id="804337473068335124" id="message-804337473068335124">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">夠精采的話獎勵1D10成長點</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804337497458212886" id="message-804337497458212886">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//好了　來去吃東西</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 09:15 PM</span>

            <div class="chatlog__message " data-message-id="804338953834463274" id="message-804338953834463274">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//推理：
某個邪教組織把這一家人當作祭品或是其他的原因需要他們的身體，他們從地下室外面拆除出風孔入侵這一家，不知道為什麼

伊麗莎沒有被帶走，也許是兒子剛好回來或是他不符合資格，夫妻倆可能早就知道自己將會死亡所以提前立了遺囑買了保險

但知道自己的兒子也被當作目標後便留下只有自己人才看得懂的密碼（兒子應該看的懂），霍華德辦公室的血跡應該是他的

掛在窗戶旁的破布就是裝著他的屍袋，犯人急著逃跑不小心刮破了屍袋，那些血跡應該是霍華德屍體留下的

犯人有可能是我們的老朋友食屍鬼教團或是其他神話生物，我不太清楚拿屍體墊背能減緩多少傷害，但犯人應該不是一般人

還有夫妻常去看的骨科應該也有關聯，但現在還不清楚就不做推論</span>

                                <span class="chatlog__edited-timestamp" title="28-Jan-21 09:18 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="804339692316393492" id="message-804339692316393492">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">.dp 75 偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">28-Jan-21 09:18 PM</span>

            <div class="chatlog__message " data-message-id="804339693239009322" id="message-804339693239009322">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
成長或增強檢定: 偵查
1D100 &gt; 75
87 → 成功!
你的技能增加3點!</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 09:18 PM</span>

            <div class="chatlog__message " data-message-id="804339715049914418" id="message-804339715049914418">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//喔喔喔</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 09:26 PM</span>

            <div class="chatlog__message " data-message-id="804341714747129857" id="message-804341714747129857">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//1D10<img class="emoji " alt="👍" title="👍" src="https://twemoji.maxcdn.com/2/72x72/1f44d.png"></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 09:27 PM</span>

            <div class="chatlog__message " data-message-id="804341932863258644" id="message-804341932863258644">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//任意技能嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">28-Jan-21 09:28 PM</span>

            <div class="chatlog__message " data-message-id="804342043300069427" id="message-804342043300069427">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//恩 ＋在成長值</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">28-Jan-21 09:28 PM</span>

            <div class="chatlog__message " data-message-id="804342167538499593" id="message-804342167538499593">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">1d10</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">28-Jan-21 09:28 PM</span>

            <div class="chatlog__message " data-message-id="804342168545132564" id="message-804342168545132564">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1d10：
5[5] = 5</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">30-Jan-21 07:58 PM</span>

            <div class="chatlog__message " data-message-id="805044386441461770" id="message-805044386441461770">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//完全忘了約下次團務</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">30-Jan-21 08:19 PM</span>

            <div class="chatlog__message " data-message-id="805049516130041906" id="message-805049516130041906">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//對诶 給一下時間吧</span>

                                <span class="chatlog__edited-timestamp" title="30-Jan-21 08:20 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">30-Jan-21 08:30 PM</span>

            <div class="chatlog__message " data-message-id="805052433117085747" id="message-805052433117085747">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//2/1晚上
2/6到下午前
2/7早上
這些是目前沒空的時間</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">30-Jan-21 08:32 PM</span>

            <div class="chatlog__message " data-message-id="805052895707398174" id="message-805052895707398174">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//那2/4 晚上7:00</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">30-Jan-21 08:37 PM</span>

            <div class="chatlog__message " data-message-id="805053998473543751" id="message-805053998473543751">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//可以喔</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">30-Jan-21 08:39 PM</span>

            <div class="chatlog__message chatlog__message--pinned" data-message-id="805054663082246145" id="message-805054663082246145">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">≣≣≣≣≣≣ ⇛劇本 幕間結束⇚ ≣≣≣≣≣≣
⇚ 劇本：入骨三分 ⇛ 
開始時間➢ 2/6 (六) 晚上8:00</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 05:57 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 01:26 PM</span>

            <div class="chatlog__message " data-message-id="807482391589421076" id="message-807482391589421076">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//ok  我2/7、2/8以外都行</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 01:40 PM</span>

            <div class="chatlog__message " data-message-id="807485857337835531" id="message-807485857337835531">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//擇日不如撞日，那就今晚吧</span>

                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="&#128076;" title="&#128076;" src="https://twemoji.maxcdn.com/2/72x72/1f44c.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 05:55 PM</span>

            <div class="chatlog__message " data-message-id="807550134404775957" id="message-807550134404775957">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//幾點呢</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 05:57 PM</span>

            <div class="chatlog__message " data-message-id="807550412898435072" id="message-807550412898435072">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//8點吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 07:56 PM</span>

            <div class="chatlog__message " data-message-id="807580490746953728" id="message-807580490746953728">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//抱歉我會遲到個一下</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 07:57 PM</span>

            <div class="chatlog__message " data-message-id="807580741218598912" id="message-807580741218598912">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//k</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807581794794209308" id="message-807581794794209308">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">≣≣≣≣≣≣ ⇛第二幕 未解懸案 ⇚ ≣≣≣≣≣≣</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807582370018492416" id="message-807582370018492416">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;納耶正在跟隨前往化驗所&quot;　
&quot;或許第一手資料上會有什麼發現？&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807582781634117633" id="message-807582781634117633">

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/807582781840162856/O1CN01UXvtDf25SxJGq5fYf_2273997526-2-daren.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/807582781840162856/O1CN01UXvtDf25SxJGq5fYf_2273997526-2-daren.png" alt="Image attachment" title="Image: O1CN01UXvtDf25SxJGq5fYf_2273997526-2-daren.png (389.66 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
            <div class="chatlog__message " data-message-id="807583339140743168" id="message-807583339140743168">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//看在車上要做什麼，搞不好胡思亂想，我就給你骰靈感<img class="emoji " alt="09" title="09" src="https://cdn.discordapp.com/emojis/767441227707973653.png"></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:10 PM</span>

            <div class="chatlog__message " data-message-id="807583963652554782" id="message-807583963652554782">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我上次都忘記要其他人的聯絡方式</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:11 PM</span>

            <div class="chatlog__message " data-message-id="807584140446400543" id="message-807584140446400543">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//當羅倫有給你吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:12 PM</span>

            <div class="chatlog__message " data-message-id="807584479614599179" id="message-807584479614599179">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「啊....難得碰到了有趣的案件但受害者也挺慘的呢」

「雖然邊開車邊用手機很危險但還是先來查查河谷殯儀館吧」</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 08:12 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:14 PM</span>

            <div class="chatlog__message chatlog__message--pinned" data-message-id="807585096035074058" id="message-807585096035074058">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;你在網上搜查了&quot;河谷殯儀館&quot;這個關鍵字&quot;
你查到以下內容
<div class="pre pre--multiline nohighlight">河谷殯儀館坐落於鎮上一片日漸衰敗的地區，是一座相當典型的小型城市殯儀館。它維護得很好，但裝修過時了
不過近期似乎要出售給一家企業集團&quot;寧靜有限公司&quot; </div></span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 08:15 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:16 PM</span>

            <div class="chatlog__message " data-message-id="807585437429530654" id="message-807585437429530654">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;查查米歇爾&#183;特拉斯克醫生跟寧靜有限公司&quot;</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 08:16 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:19 PM</span>

            <div class="chatlog__message chatlog__message--pinned" data-message-id="807586337721024572" id="message-807586337721024572">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;你在網上搜查了&quot;米歇爾&#183;特拉斯克醫生&quot;跟&quot;寧靜有限公司&quot;這些關鍵字&quot;
你查到以下內容
<div class="pre pre--multiline nohighlight">1)得知是一名骨外科醫生
2)寧靜有限公司似乎是一個更大的負責葬禮的企業，目前有計畫收購河谷殯儀館那一帶用地</div></span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 08:20 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:22 PM</span>

            <div class="chatlog__message " data-message-id="807586963565707304" id="message-807586963565707304">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「什麼嘛，都還挺普通的呢」
緒方一邊注意著前方的路況一邊看著手機查到的資訊在心中想著

「那個小孩...好像也還沒告訴他怎麼聯繫我」

&quot;撥通羅倫的電話&quot;</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 08:23 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:25 PM</span>

            <div class="chatlog__message " data-message-id="807587677649764374" id="message-807587677649764374">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;電話撥通...&quot;
羅倫 「喂，是納耶阿！有什麼事情嗎？」

　　 「我目前在警局裡，你到化驗所了嗎？」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:27 PM</span>

            <div class="chatlog__message " data-message-id="807588352445513771" id="message-807588352445513771">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「喔我還跟在化驗官的後頭」

「關於受害者的小孩，切爾哈特的聯絡方式能告訴我嗎？」

「避免案情之後有什麼疑惑的點要問他，最好還是知道一下比較好」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:31 PM</span>

            <div class="chatlog__message " data-message-id="807589233539416085" id="message-807589233539416085">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">羅倫 「我來找看看...阿！有了！就是這個」
&quot;羅倫告訴你切爾哈特的手機號碼&quot;

　　 「記得注意看車，我這邊還有點事，晚點應該才有時間 掰」
&quot;電話掛斷&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:34 PM</span>

            <div class="chatlog__message " data-message-id="807590063638708264" id="message-807590063638708264">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「掰...」
&quot;遲緩的對著掛斷的另一頭說著&quot;

「還好我的記憶力還不錯呢」
&quot;將手機扔到了一旁拿出了紙和筆寫下號碼&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:35 PM</span>

            <div class="chatlog__message " data-message-id="807590281805037608" id="message-807590281805037608">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//還有什麼要做的</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:35 PM</span>

            <div class="chatlog__message " data-message-id="807590414664073217" id="message-807590414664073217">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//應該沒了，屍袋碎片我是不是留在現場</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:36 PM</span>

            <div class="chatlog__message " data-message-id="807590531705733140" id="message-807590531705733140">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//化驗官已經都取走採樣了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:36 PM</span>

            <div class="chatlog__message " data-message-id="807590645283553281" id="message-807590645283553281">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//OK，那沒事了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:39 PM</span>

            <div class="chatlog__message " data-message-id="807591341961117716" id="message-807591341961117716">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;漫長的路途，你來到了化驗所&quot;　
&quot;你也發現其實化驗所就在警局附近&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:41 PM</span>

            <div class="chatlog__message " data-message-id="807591856703537172" id="message-807591856703537172">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;口哨聲~&quot; 「挺方便的嘛」
&quot;下車看了看化驗所跟警局的位置後跟著進去&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:44 PM</span>

            <div class="chatlog__message " data-message-id="807592442747420692" id="message-807592442747420692">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;你來到了其中一間化驗室&quot;
&quot;裡面的設備算是完好的&quot;

化驗官 「你先坐在那等一下，我趕緊做快速採檢」

　　　「對了，待會拿到的資料，幫我拿去警局歸檔」</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 08:44 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:45 PM</span>

            <div class="chatlog__message " data-message-id="807592705228144640" id="message-807592705228144640">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;雙手比出手槍的姿勢&quot;
「沒問題」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:49 PM</span>

            <div class="chatlog__message " data-message-id="807593876163395585" id="message-807593876163395585">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">CC 70 化驗結果</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">06-Feb-21 08:49 PM</span>

            <div class="chatlog__message " data-message-id="807593877413822464" id="message-807593877413822464">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="艾鷲斯AIjius#9612">@艾鷲斯AIjius</span>
1D100 ≦ 70：
83 → 失敗：化驗結果</span>

                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="10" title="10" src="https://cdn.discordapp.com/emojis/767441222846382130.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:50 PM</span>

            <div class="chatlog__message " data-message-id="807593976604524584" id="message-807593976604524584">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//也未免太不專業了吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:51 PM</span>

            <div class="chatlog__message chatlog__message--pinned" data-message-id="807594279131938856" id="message-807594279131938856">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//影響不大我猜<img class="emoji " alt="09" title="09" src="https://cdn.discordapp.com/emojis/767441227707973653.png"> 

&quot;等了一段時間&quot;
化驗官 「應該就這些了，其他詳細檢驗還需要更多時間」給了你一小疊資料書
大致內容
<div class="pre pre--multiline nohighlight">1)伊莉莎死於失血過多，致命傷是由一把骯髒而鋒利的刀具造成的。
2)經化驗確定，採集自辦公室的血液樣本來自伊莉莎以外的人，且與後院的血斑互相匹配
3)X射线检测显示伊莉莎腿骨与颅骨上均有类似于纹状骨瘤的条纹，但是这些纹路更明显，也更加规则。</div></span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 08:58 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:52 PM</span>

            <div class="chatlog__message " data-message-id="807594518684631080" id="message-807594518684631080">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我還以為是食屍鬼勒，結果好像是人類做的</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807594858738614292" id="message-807594858738614292">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「這代表伊莉莎白有著紋狀骨瘤？」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:54 PM</span>

            <div class="chatlog__message " data-message-id="807595119053111327" id="message-807595119053111327">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">化驗官 「是的，他很早就患有這個疾病了」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:56 PM</span>

            <div class="chatlog__message " data-message-id="807595498898718781" id="message-807595498898718781">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「明白... 那我先回去整理一下思緒了」

&quot;遞上一張小卡&quot;
「還有這是我的名片，有什麼其他的發現可以聯絡一下我」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807595641463111710" id="message-807595641463111710">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//現在幾點了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:57 PM</span>

            <div class="chatlog__message " data-message-id="807595795670630411" id="message-807595795670630411">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//晚上7:30，剛離開現場是傍晚

&quot;他接上了你的名片&quot;
化驗官 「好唄，那我要繼續工作了」</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 08:58 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 08:58 PM</span>

            <div class="chatlog__message " data-message-id="807596084339408908" id="message-807596084339408908">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;看了看手機&quot;
「還有一點時間，那就去拜訪一下那位骨科醫生吧」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807596170103750676" id="message-807596170103750676">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;開車前往骨科診所&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 08:59 PM</span>

            <div class="chatlog__message " data-message-id="807596386722906153" id="message-807596386722906153">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;你循著地址來到了一家骨科診所，他離警局也不遠&quot;</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 08:59 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807596650729177099" id="message-807596650729177099">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我在想這應該要先預約吧...</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:01 PM</span>

            <div class="chatlog__message " data-message-id="807596712516386837" id="message-807596712516386837">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//該死</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807596752860348436" id="message-807596752860348436">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;打給羅倫&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:02 PM</span>

            <div class="chatlog__message " data-message-id="807597013414838293" id="message-807597013414838293">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//好改名羅倫

&quot;電話接通...&quot;
羅倫「怎麼了？化驗所那邊怎麼樣？」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:02 PM</span>

            <div class="chatlog__message " data-message-id="807597119527190538" id="message-807597119527190538">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807597704548319232" id="message-807597704548319232">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「經過初步的鑑定發現死者有著類似紋狀骨瘤的跡象」

「現在我正準備問問她之前去的骨科」

「我在想啊羅倫，能不能給我個證明在幫警方調查的東西」

「畢竟我一個偵探也沒警徽，到時也很難說服平民百姓」</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 09:08 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:05 PM</span>

            <div class="chatlog__message " data-message-id="807597871008055297" id="message-807597871008055297">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我在想授權令有沒有電子檔<img class="emoji " alt="🤔" title="🤔" src="https://twemoji.maxcdn.com/2/72x72/1f914.png"></span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 09:06 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:06 PM</span>

            <div class="chatlog__message " data-message-id="807598079020498974" id="message-807598079020498974">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//<s>拍張照</s></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:09 PM</span>

            <div class="chatlog__message " data-message-id="807598771185385483" id="message-807598771185385483">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">羅倫 「呃恩....」羅倫思考了一下...

　　「我幫你開一張授權令，這樣可以強制對方提供保密資訊」隨後傳給你份資料檔
　　
　　「出示這個就行了」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:10 PM</span>

            <div class="chatlog__message " data-message-id="807599026454396949" id="message-807599026454396949">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;看了看手機確認傳過來的資料檔&quot;

「謝啦羅倫」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807599160231591968" id="message-807599160231591968">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;推開大門進入診所&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:11 PM</span>

            <div class="chatlog__message " data-message-id="807599447051599882" id="message-807599447051599882">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">室內寬敞明亮，櫃台有一些醫護人員
一旁還有一些要看診的病人</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807599524738367529" id="message-807599524738367529">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">電視牆正播著晚間新聞：介紹著你正在調查的兇殺案</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 09:12 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:15 PM</span>

            <div class="chatlog__message " data-message-id="807600317255909419" id="message-807600317255909419">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;瞥了一眼電視後走到了櫃檯&quot;

(新聞台的速度也不遑多讓呢，要是調查的進展跟他們嗅到消息的速度一樣就好了)
(不知道把現在的情報賣出去能賺多少)

「不好意思我想找米歇爾．特拉斯克醫生」

&quot;出示手機裡的資料檔&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:21 PM</span>

            <div class="chatlog__message " data-message-id="807601896637726780" id="message-807601896637726780">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">櫃檯的醫護人員沒想到突然會有警員來這調查
有點慌忙的拿起電話準備叫&quot;米歇爾．特拉斯克醫生&quot;來接見

不過多久，從一個門診室內走來了一位中年男醫師
看上去是從醫多年的人並且說話很有條理

米歇爾 「警官，您先到裡面會客室坐吧，看完這批病人，我們再來談談」

　　　 「我會通知病人我們會提早休息」隨後米歇爾帶領你走到會客室，問候幾聲後回去幫病人看診</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:22 PM</span>

            <div class="chatlog__message " data-message-id="807602201190465567" id="message-807602201190465567">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「抱歉打擾，但是記者都這麼快了我也得加把勁對吧」

&quot;用拇指朝身後的電視指了指&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:24 PM</span>

            <div class="chatlog__message " data-message-id="807602663016497192" id="message-807602663016497192">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//目前你一個人在會客室等待，有什麼騷操作嘛<img class="emoji " alt="11" title="11" src="https://cdn.discordapp.com/emojis/767442378101096488.png"></span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 09:24 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:25 PM</span>

            <div class="chatlog__message " data-message-id="807602772807647252" id="message-807602772807647252">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//想要看我搞事的意思嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:25 PM</span>

            <div class="chatlog__message " data-message-id="807602964378026025" id="message-807602964378026025">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我覺得騷操作跟搞事差很多耶</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:26 PM</span>

            <div class="chatlog__message " data-message-id="807603052273074196" id="message-807603052273074196">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//正在思考在會客室能有什麼騷操作</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807603071400149012" id="message-807603071400149012">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//看來是沒了</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807603137635549194" id="message-807603137635549194">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//會客室有什麼東西嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:27 PM</span>

            <div class="chatlog__message " data-message-id="807603459972137022" id="message-807603459972137022">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//一個長桌，桌上有一壺水，兩邊是沙發椅。四周有一些裝飾品，花瓶、茶具那些。</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:30 PM</span>

            <div class="chatlog__message " data-message-id="807604071002669076" id="message-807604071002669076">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;坐在沙發上仔細的思考不久前看到的案發現場，飛濺的血跡，神秘的犯人&quot;

(嘛，在這邊窮緊張也沒什麼用喝口水好了)</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:30 PM</span>

            <div class="chatlog__message " data-message-id="807604175437430824" id="message-807604175437430824">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//阿<img class="emoji " alt="10" title="10" src="https://cdn.discordapp.com/emojis/767441222846382130.png"> 靈感請唄</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 09:31 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:31 PM</span>

            <div class="chatlog__message " data-message-id="807604447449448460" id="message-807604447449448460">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 75 idea</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">06-Feb-21 09:31 PM</span>

            <div class="chatlog__message " data-message-id="807604448493961216" id="message-807604448493961216">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 75：
28 → 困難成功：idea</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:34 PM</span>

            <div class="chatlog__message chatlog__message--pinned" data-message-id="807605161722773504" id="message-807605161722773504">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你想到不久前的有幾個案件跟這起有相似之處
不過你只記得一些名詞
<div class="pre pre--multiline nohighlight">1)洛琳&#183;哈斯克爾，76歲，是一名退休薄記員
2)泰勒&#183;丹尼爾斯，35歲，是一名汽車修理工
3)邁克爾&#183;布什，57歲，是一名保險推銷員</div>
他們都死於一場凶殺案
你覺得或許詳細資料在警局裡有備份</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 09:35 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:35 PM</span>

            <div class="chatlog__message " data-message-id="807605339968897035" id="message-807605339968897035">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;打給羅倫&quot;</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 09:35 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:35 PM</span>

            <div class="chatlog__message " data-message-id="807605405907025940" id="message-807605405907025940">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//羅倫工具倫</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:35 PM</span>

            <div class="chatlog__message " data-message-id="807605500509421588" id="message-807605500509421588">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//方便餒羅倫</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:36 PM</span>

            <div class="chatlog__message " data-message-id="807605675408621608" id="message-807605675408621608">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;電話接通...&quot;
羅倫 「是納耶阿，怎麼了又有什麼困難嗎？」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:37 PM</span>

            <div class="chatlog__message " data-message-id="807605851355349012" id="message-807605851355349012">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「哈哈又是我啦，剛剛忽然想到最近好像也有幾起類似的案件」

「你能不能幫我查一下」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:38 PM</span>

            <div class="chatlog__message " data-message-id="807606214036553758" id="message-807606214036553758">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「類似的案件，不太懂...你也知道這邊治安本就不好，兇殺案很多」

「有沒有什麼大致方向」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:39 PM</span>

            <div class="chatlog__message " data-message-id="807606504462090281" id="message-807606504462090281">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;說出想起的人名&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:43 PM</span>

            <div class="chatlog__message chatlog__message--pinned" data-message-id="807607517063806986" id="message-807607517063806986">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「讓我想想，好像不久前看過這些名子」羅倫正在登陸資料系統翻找資料...

「有了，內容如下」
<div class="pre pre--multiline nohighlight">1)洛琳&#183;哈斯克爾，76歲，退休薄記員：她在達弗林謀殺案的九天前從位於鎮上較差街區的家中失踪。在她家的廚房裡發現了大量血跡。
2)泰勒&#183;丹尼爾斯，35歲，汽車修理工，離異：失踪於達弗林謀殺案的六天前，在他店裡一輛屬於顧客的汽車下發現了一大灘血。兩個年輕人在將泰勒的一些工具銷贓後遭到逮捕。他們聲稱看到“兩個傢伙”帶著一個大袋子從店中衝出來，於是決定分一杯羹。他們無法指認出另外的那些賊們。
3)邁克爾&#183;布什，57歲，保險推銷員，喪偶：失踪於達弗林謀殺案的三天前。他的車發現於一棟已被收回的房子外，乾涸的血覆蓋了汽車的內襯。

另外：三名受害人都在河谷殯儀館購買了墓地。近幾個月，邁克爾和泰勒都曾去各自的醫生處就診，並說自己有類似關節炎的疼痛。而洛琳是特拉斯克醫生的另一個病人。</div></span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 09:44 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807607560524922890" id="message-807607560524922890">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 70 羅倫圖書館</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">06-Feb-21 09:44 PM</span>

            <div class="chatlog__message " data-message-id="807607561749659728" id="message-807607561749659728">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="艾鷲斯AIjius#9612">@艾鷲斯AIjius</span>
1D100 ≦ 70：
60 → 通常成功：羅倫圖書館</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:44 PM</span>

            <div class="chatlog__message " data-message-id="807607610647511061" id="message-807607610647511061">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//羅倫好罩</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:45 PM</span>

            <div class="chatlog__message " data-message-id="807607971554131998" id="message-807607971554131998">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//內容添加了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:45 PM</span>

            <div class="chatlog__message " data-message-id="807607982049067018" id="message-807607982049067018">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//怎麼都是三的倍數</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807608137875062834" id="message-807608137875062834">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//醫生查好資料了嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:47 PM</span>

            <div class="chatlog__message " data-message-id="807608296667742209" id="message-807608296667742209">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//醫生在忙著看診最後一批病人</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:47 PM</span>

            <div class="chatlog__message " data-message-id="807608485646434327" id="message-807608485646434327">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//OK</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807608701447045171" id="message-807608701447045171">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「他們三個人種跟住家位置近嗎」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:49 PM</span>

            <div class="chatlog__message " data-message-id="807608881987059722" id="message-807608881987059722">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「沒說特別的近，但至少是同一個街區」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:49 PM</span>

            <div class="chatlog__message " data-message-id="807608956008398919" id="message-807608956008398919">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//OK</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807609165681655858" id="message-807609165681655858">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我再來就先等醫生</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:52 PM</span>

            <div class="chatlog__message " data-message-id="807609693697605663" id="message-807609693697605663">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那你在跟羅倫討論的期間，也差不多過了一小時
目前時間是晚上9:30
隨後米歇爾醫生也進來會客室

米歇爾　「抱歉啦～警官先生，我應該沒有耽誤你太多時間吧？」

　　　　「有什麼想問的可以提出來看看」醫生很沉穩的問道</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:54 PM</span>

            <div class="chatlog__message " data-message-id="807610148112695357" id="message-807610148112695357">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「就在今晚發生了一起謀殺案，死者曾來過你這邊看診」

「名叫伊莉莎」

「我想要瞭解她跟洛琳．哈斯克爾的情況」</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 09:55 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:54 PM</span>

            <div class="chatlog__message " data-message-id="807610259156893696" id="message-807610259156893696">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//名子沒&quot;白&quot;</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 09:54 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 09:55 PM</span>

            <div class="chatlog__message " data-message-id="807610383358623754" id="message-807610383358623754">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//接的太順</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 09:59 PM</span>

            <div class="chatlog__message " data-message-id="807611409801805834" id="message-807611409801805834">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「他們都是我的病人，也常常來我這看診」

「我想想....應該有持續幾個月了吧」

「他們的病情非常相似，都是很罕見的骨瘤症，可根据他們的病理學表現，似乎是更罕見的變種」

「近五年，我見過十幾個人都有這樣的症狀，」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:00 PM</span>

            <div class="chatlog__message " data-message-id="807611565204832256" id="message-807611565204832256">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「那最近除了他們兩位還有誰有類似的症狀嗎」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:02 PM</span>

            <div class="chatlog__message " data-message-id="807612069942657045" id="message-807612069942657045">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「最近的話，除了一個月前就診的洛琳，應該就是一名叫唐．沃茲的人了」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:03 PM</span>

            <div class="chatlog__message " data-message-id="807612374470754354" id="message-807612374470754354">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「唐．沃茲？能夠說說他的身分或是住址之類的嗎」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:04 PM</span>

            <div class="chatlog__message " data-message-id="807612697259540520" id="message-807612697259540520">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「我覺得報出病人的資料有點不妥，不過我得配合調查對吧...」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:05 PM</span>

            <div class="chatlog__message " data-message-id="807612889212780574" id="message-807612889212780574">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「我也覺得不妥，但事關人命呢」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:07 PM</span>

            <div class="chatlog__message " data-message-id="807613473047576647" id="message-807613473047576647">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「也是阿...失陪一下」隨後醫生走去外面，拿了一張單子&quot;上面是唐所填寫的資料，有電話、住址跟一些基本信息&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:08 PM</span>

            <div class="chatlog__message " data-message-id="807613803322933248" id="message-807613803322933248">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;接過了單子把上面的資料記錄下來&quot;

「相信我，醫生，你這個舉動救下了那個人的生命」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807613872642850867" id="message-807613872642850867">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//現在幾點了?</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 10:09 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:09 PM</span>

            <div class="chatlog__message " data-message-id="807613940208500776" id="message-807613940208500776">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//10:00 當你PC問很趕</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 10:10 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:09 PM</span>

            <div class="chatlog__message " data-message-id="807614050648195072" id="message-807614050648195072">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//不知道為什麼跑團我都習慣問幾點</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807614105178472448" id="message-807614105178472448">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//都給人一種很趕的感覺</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807614403640819752" id="message-807614403640819752">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;起身離開診所打給羅倫&quot;

「．．．喂，我好像找到了下個受害者，你把我接下來說的資料記錄一下」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:12 PM</span>

            <div class="chatlog__message " data-message-id="807614671317631006" id="message-807614671317631006">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;電話接通&quot;
羅倫 「是嗎！？詳細情況請說給我聽」羅倫似乎很重視</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 10:12 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:13 PM</span>

            <div class="chatlog__message " data-message-id="807614865636196393" id="message-807614865636196393">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;把唐的資料告訴羅倫&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:14 PM</span>

            <div class="chatlog__message " data-message-id="807615202513911880" id="message-807615202513911880">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「我待會趕過去察看的，你也趕緊到他那邊，我可不想多處理一起案件」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:15 PM</span>

            <div class="chatlog__message " data-message-id="807615410677481472" id="message-807615410677481472">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;乖乖遵守交通號誌的迅速開車過去&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:17 PM</span>

            <div class="chatlog__message " data-message-id="807615963074658354" id="message-807615963074658354">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你循著地址，周邊的場景越來越破爛老舊
似乎這裡是中下層街區，或許這裡治安更差

隨後你來到了一個破舊矮房</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 10:17 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:18 PM</span>

            <div class="chatlog__message " data-message-id="807616189395501116" id="message-807616189395501116">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;下車後先注意一下周遭有沒有奇怪的人影&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:19 PM</span>

            <div class="chatlog__message " data-message-id="807616461295583262" id="message-807616461295583262">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">周圍非常的死寂，只能偶爾看到一些醉漢</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:20 PM</span>

            <div class="chatlog__message " data-message-id="807616737402421248" id="message-807616737402421248">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「看來他們的間隔不會那麼短」&quot;小聲的低咕著後走向門口&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807616819783139369" id="message-807616819783139369">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;敲個門&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:21 PM</span>

            <div class="chatlog__message " data-message-id="807617001161883678" id="message-807617001161883678">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;你聽到裡面有沉重的腳步聲&quot;
&quot;緩緩地靠近&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807617057067761665" id="message-807617057067761665">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;越來越大聲&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807617094370721794" id="message-807617094370721794">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;越來越大聲x2&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807617146909753395" id="message-807617146909753395">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;越來越大聲x3！&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807617274176995328" id="message-807617274176995328">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;最後在門前停了下來&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807617382658474044" id="message-807617382658474044">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;木門發出嘎茲聲響&quot;
&quot;緩緩打開&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807617424286941214" id="message-807617424286941214">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;緩緩打開x2&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807617456721363045" id="message-807617456721363045">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;緩緩打開x3！&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807617503378276393" id="message-807617503378276393">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">.</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807617505895252008" id="message-807617505895252008">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">.</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807617650288230430" id="message-807617650288230430">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;你看到一位身材肥碩，滿臉不打理的邋遢男人&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:24 PM</span>

            <div class="chatlog__message " data-message-id="807617818119372830" id="message-807617818119372830">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「晚上好啊」

&quot;露出微笑的同時拿出資料檔給他看&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:25 PM</span>

            <div class="chatlog__message " data-message-id="807618095060877333" id="message-807618095060877333">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">唐「怯..是警察阿，進來隨便坐吧」唐拍掉了沙發上的雜物，自己也坐下來。

　「有什麼事嗎？」</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 10:26 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:27 PM</span>

            <div class="chatlog__message " data-message-id="807618544665755659" id="message-807618544665755659">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「既然你也沒打算跟我寒暄那我就直接開門見山了」

「我們懷疑你的性命有可能被盯上了」

「還有你最近有買河谷殯儀館的墓地嗎」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:30 PM</span>

            <div class="chatlog__message " data-message-id="807619146069442581" id="message-807619146069442581">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「查的還真細...，我的確是買了一塊墓地，不過是為了我媽」

「他最近才剛剛去世，現在葬在那裡了」</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 10:30 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:31 PM</span>

            <div class="chatlog__message " data-message-id="807619493433573397" id="message-807619493433573397">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「你最近有去看骨科對吧，你的母親也有同樣的問題嗎？」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:33 PM</span>

            <div class="chatlog__message " data-message-id="807619887916384307" id="message-807619887916384307">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「沒，他是自然去世的，雖然我生活習慣遭了點，但我還是有好好照顧他」</span>

                                <span class="chatlog__edited-timestamp" title="06-Feb-21 10:33 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:35 PM</span>

            <div class="chatlog__message " data-message-id="807620487542472765" id="message-807620487542472765">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「瞭解，還有雖然你的症狀很像紋狀骨瘤，但醫生應該也有說明這兩者並不同對吧」

「警方懷疑最近有人盯上了跟你一樣有著這種症狀的人」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:36 PM</span>

            <div class="chatlog__message " data-message-id="807620840501673994" id="message-807620840501673994">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「被人盯上？，難道有人想拿走我的骨頭？這太荒唐了！」唐把這一切當作笑話</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:39 PM</span>

            <div class="chatlog__message " data-message-id="807621613713489941" id="message-807621613713489941">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「你前面的幾名受害者也沒想到會有人想拿走他們的骨頭」

緒方冷冷的說道並拿出了懷錶心不在焉的把玩著</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807621973555281931" id="message-807621973555281931">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「總之我該說的都說了，就看你願不願意相信囉」

「啊對了，離開前我想問你，請問你認識伊麗莎夫婦或洛琳．哈斯克爾嗎？」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:44 PM</span>

            <div class="chatlog__message " data-message-id="807622693759090730" id="message-807622693759090730">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「我並不認識他們，我並不需要朋友，你走吧，盡說些鬼話」唐表現出不耐煩</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807622939003846666" id="message-807622939003846666">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你走出門口看到羅倫在外頭
羅倫　「交涉似乎不太順利阿」羅倫笑笑說道</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:48 PM</span>

            <div class="chatlog__message " data-message-id="807623794075762698" id="message-807623794075762698">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;聽到了羅倫的話後緒方臉塌了下來&quot;

「呃...反正我的工作是調查出真相，避免更多的受害者才是你們的工作」

「還有如果我想的沒錯犯人應該會在三天後動手，到時候就拜託了啊」

&quot;講完隨即上車離開&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:50 PM</span>

            <div class="chatlog__message " data-message-id="807624164982652939" id="message-807624164982652939">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你駕車遠去並看向後照鏡
羅倫拿起無線電似乎要呼叫警力協助埋伏</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:52 PM</span>

            <div class="chatlog__message " data-message-id="807624646730973195" id="message-807624646730973195">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「哼...」&quot;嘴角微微上揚&quot;

&quot;看到了此景緒方也明白擔心什麼的是多餘的&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807624683725652039" id="message-807624683725652039">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//現在幾點了</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807624726625124393" id="message-807624726625124393">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//還來得及就去殯儀館</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:52 PM</span>

            <div class="chatlog__message " data-message-id="807624789333770311" id="message-807624789333770311">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//將近12:00</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807624852412170240" id="message-807624852412170240">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//那段路程有點遠</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:53 PM</span>

            <div class="chatlog__message " data-message-id="807624954891862076" id="message-807624954891862076">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//那還是回去睡覺好了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:53 PM</span>

            <div class="chatlog__message " data-message-id="807625085636050955" id="message-807625085636050955">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//好，當你在附近的旅館睡覺</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807625379871064104" id="message-807625379871064104">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">≣≣≣≣≣≣ ⇛劇本 第二次幕間⇚ ≣≣≣≣≣≣
一樣打下目前腦中的推理
抓到要點，開啟幕間成長</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807625520279191605" id="message-807625520279191605">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//大概跑2/3了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:55 PM</span>

            <div class="chatlog__message " data-message-id="807625526914056232" id="message-807625526914056232">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我也沒用到什麼技能</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807625581507641344" id="message-807625581507641344">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//喔喔，那看來下次就能結束了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:55 PM</span>

            <div class="chatlog__message " data-message-id="807625640224227328" id="message-807625640224227328">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//拿個1d10呀</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807625757097459773" id="message-807625757097459773">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//話說你全程不用心理學</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 10:56 PM</span>

            <div class="chatlog__message " data-message-id="807625781496905758" id="message-807625781496905758">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//現在才覺得剛剛應該多問一些的</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807625892943626310" id="message-807625892943626310">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//每次點了心理學結果都沒去用，靠現實猜測</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807626028860178534" id="message-807626028860178534">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我思考一下晚點再打上來</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">06-Feb-21 10:57 PM</span>

            <div class="chatlog__message " data-message-id="807626047784484874" id="message-807626047784484874">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//也是可行啦</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="807626058634362881" id="message-807626058634362881">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//OK</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">06-Feb-21 11:21 PM</span>

            <div class="chatlog__message " data-message-id="807631981198180393" id="message-807631981198180393">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//邪教徒在收集著特定的人骨，每三天便會去拿一具（也許是儀式需要三天完成？
　目前想不透跟殯儀館有什麼關係，他們是怎麼那麼巧的都去跟那間殯儀館簽約的
　還有寧靜公司收購殯儀館也想不出有什麼關聯，先猜殯儀館可能會是直接或間接跟那個教團有關係</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">07-Feb-21 12:04 AM</span>

            <div class="chatlog__message " data-message-id="807642984203157534" id="message-807642984203157534">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//<img class="emoji " alt="🤔" title="🤔" src="https://twemoji.maxcdn.com/2/72x72/1f914.png"> 1d5</span>

                                <span class="chatlog__edited-timestamp" title="07-Feb-21 12:04 AM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">07-Feb-21 12:05 AM</span>

            <div class="chatlog__message " data-message-id="807643075719594034" id="message-807643075719594034">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">1D5</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">07-Feb-21 12:05 AM</span>

            <div class="chatlog__message " data-message-id="807643076775641139" id="message-807643076775641139">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D5：
3[3] = 3</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">13-Feb-21 09:30 PM</span>

            <div class="chatlog__message " data-message-id="810140763890778143" id="message-810140763890778143">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//再來約時間嗎？</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">14-Feb-21 03:33 PM</span>

            <div class="chatlog__message " data-message-id="810413343511937024" id="message-810413343511937024">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">沒圈圈都可以約，有圈圈要看一下</span>

                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/810413343336169472/d1759e4492f0dec9.JPG">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/810413343336169472/d1759e4492f0dec9.JPG" alt="Image attachment" title="Image: d1759e4492f0dec9.JPG (25.21 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">16-Feb-21 09:20 AM</span>

            <div class="chatlog__message " data-message-id="811044278931423264" id="message-811044278931423264">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//今晚可以嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">16-Feb-21 04:37 PM</span>

            <div class="chatlog__message " data-message-id="811154263123689523" id="message-811154263123689523">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//阿忘了說周二默認休息，約其他的吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">16-Feb-21 05:09 PM</span>

            <div class="chatlog__message " data-message-id="811162228610433037" id="message-811162228610433037">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//那就週五吧</span>

                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="&#128076;" title="&#128076;" src="https://twemoji.maxcdn.com/2/72x72/1f44c.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 03:23 PM</span>

            <div class="chatlog__message " data-message-id="812222738143117382" id="message-812222738143117382">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//今晚幾點?</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 03:37 PM</span>

            <div class="chatlog__message " data-message-id="812226273769947147" id="message-812226273769947147">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//20:00怎麼樣?</span>

                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="&#128076;&#127999;" title="&#128076;&#127999;" src="https://twemoji.maxcdn.com/2/72x72/1f44c-1f3ff.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 07:44 PM</span>

            <div class="chatlog__message " data-message-id="812288604990472232" id="message-812288604990472232">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">≣≣≣≣≣≣ ⇛劇本 幕間結束⇚ ≣≣≣≣≣≣
----------------------------------------------------------------</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 07:49 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812289632120864788" id="message-812289632120864788">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">≣≣≣≣≣≣ ⇛第三幕 恐懼的小尖針 ⇚ ≣≣≣≣≣≣</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812290888143208458" id="message-812290888143208458">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//雖然說有點晚了，但地圖出來了<img class="emoji " alt="11" title="11" src="https://cdn.discordapp.com/emojis/767442378101096488.png"></span>

                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/812290887815397386/e383a51f11f70d7f.JPG">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/812290887815397386/e383a51f11f70d7f.JPG" alt="Image attachment" title="Image: e383a51f11f70d7f.JPG (80.22 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
            <div class="chatlog__message " data-message-id="812290945521156136" id="message-812290945521156136">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">--------------------------</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 07:56 PM</span>

            <div class="chatlog__message " data-message-id="812291526428196864" id="message-812291526428196864">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//好诶</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812291916245762079" id="message-812291916245762079">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//還有根據這幕的名字我是不是該避免被針戳到</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 07:59 PM</span>

            <div class="chatlog__message " data-message-id="812292259684679721" id="message-812292259684679721">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//有時候只是單純順口而已<img class="emoji " alt="😗" title="😗" src="https://twemoji.maxcdn.com/2/72x72/1f617.png"></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 07:59 PM</span>

            <div class="chatlog__message " data-message-id="812292332434358282" id="message-812292332434358282">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//笑死</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812292633291522068" id="message-812292633291522068">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//就從隔天早上開始對吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 08:01 PM</span>

            <div class="chatlog__message " data-message-id="812292812086313000" id="message-812292812086313000">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//4</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812292980744126525" id="message-812292980744126525">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//正在幫你找一間好看的旅館</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 08:02 PM</span>

            <div class="chatlog__message " data-message-id="812293068203491328" id="message-812293068203491328">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//<s>最好是有早餐送上門的那種</s></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 08:03 PM</span>

            <div class="chatlog__message " data-message-id="812293266618843147" id="message-812293266618843147">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><s>這是你的房間</s></span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 08:03 PM">(edited)</span>
                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/812293265985372190/g_teborg_gothenburg-480174.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/812293265985372190/g_teborg_gothenburg-480174.png" alt="Image attachment" title="Image: g_teborg_gothenburg-480174.png (6.32 MB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 08:03 PM</span>

            <div class="chatlog__message " data-message-id="812293388317097994" id="message-812293388317097994">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//好吧，湊合著用</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 12:00 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 08:04 PM</span>

            <div class="chatlog__message " data-message-id="812293470689165322" id="message-812293470689165322">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//沒辦法酒店太貴了</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812294080393773086" id="message-812294080393773086">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你在單板的床上醒來，顯然你昨晚睡得不太好。
或許是床太硬了，你的背有點痠痛...

往窗外看已經是白天，總歸來說是個美麗的早晨?
至少你的肚子正在抗議，你可沒記得你昨天有吃些什麼...</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 08:07 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 08:10 PM</span>

            <div class="chatlog__message " data-message-id="812294949218549770" id="message-812294949218549770">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「哈～啊啊」在慵懶的深了個懶腰後聽著肚子傳來的不可名狀之聲

「好餓...」以前碰上感興趣的案件總是這樣廢寢忘食的調查著
但畢竟沒有力氣也不好展開調查，在簡單的洗漱後緒方拿上自己的裝備驅車前往了最近的家庭餐廳</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 11:59 AM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812295440996630538" id="message-812295440996630538">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(要吃些什麼好呢...薯條？牛排？像我這樣偉大的偵探竟然連早餐要吃什麼都想不出來)
(算了，就決定是菜單左邊數下來第五個能吃的好了，最好再來一點甜食補充腦力)
即便在開車的途中緒方依然沒有忘記思考</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 08:12 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 08:14 PM</span>

            <div class="chatlog__message " data-message-id="812296172471320586" id="message-812296172471320586">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你開車來到離旅館不遠的一家餐廳，看來生意並不太好
裡面的氣氛倒是不錯，不過裝潢有些老派

找了個位子坐下來，看了看這裡的菜單，看來並沒有太多的選擇
左邊數下來第五個是一盤鬆餅，價格以這個地區來說，算便宜的。
----------------------------------------------------------------</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 08:15 PM">(edited)</span>
                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/812296171871272960/art_bar_tables_cafe_gramophone_table_chairs-623885.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/812296171871272960/art_bar_tables_cafe_gramophone_table_chairs-623885.png" alt="Image attachment" title="Image: art_bar_tables_cafe_gramophone_table_chairs-623885.png (2.37 MB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 08:16 PM</span>

            <div class="chatlog__message " data-message-id="812296438012051476" id="message-812296438012051476">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;一邊看著菜單一邊像吧檯揮了揮手&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 08:17 PM</span>

            <div class="chatlog__message " data-message-id="812296818405933060" id="message-812296818405933060">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;很快就有一位中年的男性走過來，等著你點餐，看上去是老闆兼服務生&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 08:18 PM</span>

            <div class="chatlog__message " data-message-id="812296936140570654" id="message-812296936140570654">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「我想要一盤鬆餅，糖漿最好多一點，喔！在多來一點薯條跟牛排」
意識到自己昨天什麼都沒吃，緒方決定好好的滿足自己深不見底的胃口
「可以的話還有一杯奶茶」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 08:21 PM</span>

            <div class="chatlog__message " data-message-id="812297910640181278" id="message-812297910640181278">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">老闆邊聽邊記在自己的簿子裡，並拿去給後臺廚師進行製作
&quot;一段時間後&quot;

首先是一盤蓬軟鬆餅上桌，上面的楓糖淋得非常誇張
說是用泡的也不為過。
一起送上來的還有一杯溫熱可口的奶茶
----------------------------------------------------------------</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 08:23 PM">(edited)</span>
                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/812297910041182248/pancakes_food_honey_delicious-1018993.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/812297910041182248/pancakes_food_honey_delicious-1018993.png" alt="Image attachment" title="Image: pancakes_food_honey_delicious-1018993.png (2.79 MB)">
                                    </a>
                            </div>
                        </div>
                    </div>


                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="34" title="34" src="https://cdn.discordapp.com/emojis/803308886508830780.png">
                                <span class="chatlog__reaction-count">3</span>
                            </div>
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="35" title="35" src="https://cdn.discordapp.com/emojis/803308897662271538.png">
                                <span class="chatlog__reaction-count">3</span>
                            </div>
                    </div>
            </div>
            <div class="chatlog__message " data-message-id="812297943377903617" id="message-812297943377903617">

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/812297942945628170/cappuccino_coffee_cup_table-616854.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/812297942945628170/cappuccino_coffee_cup_table-616854.png" alt="Image attachment" title="Image: cappuccino_coffee_cup_table-616854.png (2.8 MB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
            <div class="chatlog__message " data-message-id="812297992577089537" id="message-812297992577089537">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//美食節目開始</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812298016823181332" id="message-812298016823181332">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">----------------------------------------------------------------</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 08:24 PM</span>

            <div class="chatlog__message " data-message-id="812298668332810260" id="message-812298668332810260">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(這正是我要的)面對堆得像座小山的鬆餅，緒方不但沒有絲毫的退卻反而主動迎擊並喵了一眼老闆
眼神中透露著這個挑戰我接下了，隨後便拿起了叉子狼吞虎嚥起來</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 08:26 PM</span>

            <div class="chatlog__message " data-message-id="812299152855269376" id="message-812299152855269376">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">就在你嚥下最頂端，也就是淋最多楓糖的那塊鬆餅，你腦中有一個名詞閃過...

<strong>糖     尿     病</strong></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 08:27 PM</span>

            <div class="chatlog__message " data-message-id="812299215497723915" id="message-812299215497723915">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//啊靠北</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812300136842657812" id="message-812300136842657812">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">畫面逐漸的模糊，緒方想起了小時候爸爸在夏威夷教他開槍時說過
「緒方啊...身為男人總是會碰上不可逃避的戰鬥，現在不懂沒關係，但是答應我，絕對不要逃避」
配合著廉價肥皂劇的開場特效，畫面跨越十五年再度回到了現代

(哼！老爸，看來就是這時候了呢)
想起了長者的智慧，緒方果斷拿起叉子朝著眼前的鬆餅靠近...</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812300176596402247" id="message-812300176596402247">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有二十公分...</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812300202584178728" id="message-812300202584178728">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">十五公分...</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812300215045980160" id="message-812300215045980160">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">十...</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812300227146678292" id="message-812300227146678292">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">九...</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812300245857861642" id="message-812300245857861642">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">七...</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812300260227547166" id="message-812300260227547166">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">四...</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812300283207090227" id="message-812300283207090227">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">二...</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812300294846676992" id="message-812300294846676992">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">一...</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812300944707813376" id="message-812300944707813376">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">在叉子與淋滿楓糖最上層的鬆餅接觸時，緒方迅速的翻過了鬆餅將上面的楓糖漿沾在了盤子與其餘的鬆餅上藉此減低糖分的負擔
(怎麼樣啊老闆，這就是我的答案)緒方充滿自信的眼神毫不避諱的看向了老闆</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 08:35 PM</span>

            <div class="chatlog__message " data-message-id="812301398627975248" id="message-812301398627975248">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">儘管如此，糖分也會不斷的在口腔累積，導致越吃越甜膩
這終歸只是個緩兵之計...(老闆依然老神在在...)</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 08:39 PM</span>

            <div class="chatlog__message " data-message-id="812302294452011060" id="message-812302294452011060">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(可惡啊...果然薑還是老的辣，即便想出了這招但糖分所積累的負擔依舊無法小覷)
(難道...我要就此止步了嗎)

(不！我緒方納耶無論何時面對何種挑戰都不會退縮)
「老闆！！！」
緒方站起了身子並用力拍向了桌</span>

                                <span class="chatlog__edited-timestamp" title="27-Feb-21 01:58 AM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812302446926757908" id="message-812302446926757908">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「我昨天可是忙了一整天，什麼都沒吃啊」
「就這麼點的鬆餅怎麼夠呢？」</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 12:03 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812302641467883570" id="message-812302641467883570">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「我要追加一盤鬆餅，<strong>不用任何楓糖</strong>」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812302846708023366" id="message-812302846708023366">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(既然無法解決這盤鬆餅那我就貫徹一開始的策略)</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 08:42 PM</span>

            <div class="chatlog__message " data-message-id="812303092686651402" id="message-812303092686651402">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">老闆「這位客人很抱歉，但我們店裡鬆餅是一定會搭配楓糖漿的。」

　　「如果您感到膩的話，何不喝點我們的溫奶茶呢？」悠然自得的身姿</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 08:45 PM</span>

            <div class="chatlog__message " data-message-id="812303802912079922" id="message-812303802912079922">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(什...什麼?! 竟然搬出了店家的規定，對於我這種第一次來的客人根本是初見殺啊)
在這27年的生涯中第一次碰上了如此棘手的對手
(糟了現在還能怎麼辦，快用我180<s>自稱</s>的IQ想一想啊)</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 08:50 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812304158451302420" id="message-812304158451302420">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(啊啊...糖分不夠了得多攝取一點幫助思考解決現在的困境)
在高速運轉的頭腦下緒方開始邊喝奶茶邊吃起了鬆餅
思考著如何才能解決有著主場優勢的老闆</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 08:49 PM</span>

            <div class="chatlog__message " data-message-id="812304883394936843" id="message-812304883394936843">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">當你喝下奶茶，一股強大的衝擊擴散至整個口腔
這...這是！！！
【<strong>奶精、果糖、砂糖</strong>】這是肥甜三重奏！！！！
喝下去罪惡感瞬間爆炸，嗚嗚...太甜了....

而老闆一如即往的看著你...彷彿一切都在他的算計當中</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 08:49 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 08:50 PM</span>

            <div class="chatlog__message " data-message-id="812305221539463198" id="message-812305221539463198">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(上當了！就知道他沒有這麼的好心)</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812306085478268948" id="message-812306085478268948">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(哼...不錯嘛老闆，場地、食材都由你提供，藉由著這幾項優勢，把我所思所想都摸透了）
(我得承認你的思考確實領先了我好幾步，但即便在這樣的情形下我依然沒有放棄希望，因為此刻仍有你無法掌控的事物)</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 09:11 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812306352546381834" id="message-812306352546381834">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(那就是我為了避免調查進度拖延而設置的鬧鐘)
(現在這顆名為提醒工作的藉口炸彈就要引爆啦！勝利的是我而不是你！老闆！！)</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 08:56 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 08:59 PM</span>

            <div class="chatlog__message " data-message-id="812307324748300308" id="message-812307324748300308">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">此時你看到不遠處有個告示牌
上面寫著：
【<strong>若未將食物用膳完全，則因應小區政策另收費用</strong>】
還不只如此，美國可還得付上小費阿阿阿！！！</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 09:03 PM</span>

            <div class="chatlog__message " data-message-id="812308380907208715" id="message-812308380907208715">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(什麼？！這樣不就會導致我得附上額外的費用嗎？)
(時間正在倒數著，這顆炸彈反而被轉移到了我身上)
(還有十秒...不要啊！快ㄊㄧ)

&quot;叮鈴鈴鈴，叮鈴鈴鈴，對，就是你，難道你忘了要繼續調查嗎&quot;
&quot;哼，還好我早已預料到了這一幕而錄下了這個鬧鐘&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812308790489645067" id="message-812308790489645067">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">無情的鬧鐘響起，與老闆的對決就這樣意外結束了
一遍...
兩遍...
即使鬧鐘裡的內容已經重複了數次緒方依舊坐在自己的位置上</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812309989536038933" id="message-812309989536038933">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;啪啦&quot;
緒方起了身子並連同額外的費用留在了桌上，但是如果就這樣離開的話那他可無法擔當這個劇本裡的主角
不顧身體發出的警訊，緒方拿起那將近全滿的奶茶喝了起來，整個過程只有四秒，但對緒方而言卻宛如一輩子

&quot;匡噹&quot;
「哈...哈....這次算我輸了，不過下次你可沒有主場優勢了呢！名符其實的公平對決喔」
緒方拿出包包裡的手帕擦了擦自己的嘴角說道，隨後便轉身離去前往殯儀館</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 09:16 PM</span>

            <div class="chatlog__message " data-message-id="812311637532344322" id="message-812311637532344322">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//加工中...</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message chatlog__message--pinned" data-message-id="812312486329712670" id="message-812312486329712670">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你有點不甘的離開這家餐廳，你在想破完案後決定再戰
帶著這樣的心情一路駕車來到河谷殯儀館

依據你對這個區域的地理認知，河谷殯儀館坐落於鎮上一片日漸衰敗的地區
是一座相當典型的小型城市殯儀館。
它維護得很好，但裝修過時了。
----------------------------------------------------------------</span>

                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/812312486111870976/1.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/812312486111870976/1.png" alt="Image attachment" title="Image: 1.png (609.58 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
            <div class="chatlog__message " data-message-id="812312667754463242" id="message-812312667754463242">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//大概就是一般人對殯儀館格局印象</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 09:21 PM</span>

            <div class="chatlog__message " data-message-id="812312813636550676" id="message-812312813636550676">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;將車停到了停車場後來到正門敲幾下&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 09:22 PM</span>

            <div class="chatlog__message " data-message-id="812313225639100436" id="message-812313225639100436">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">門的那邊傳來聲音...
「可以直接進來！」這樣說著</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 09:23 PM</span>

            <div class="chatlog__message " data-message-id="812313365673934848" id="message-812313365673934848">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">聽到裡面這麼說後便開了門進去</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812313435807154236" id="message-812313435807154236">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//仔細想想我去個殯儀館幹嘛敲門呢</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 09:23 PM</span>

            <div class="chatlog__message " data-message-id="812313501875961857" id="message-812313501875961857">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我本來也想吐槽的</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812314172645310474" id="message-812314172645310474">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你看到一位已經到了退休年齡的女子
穿著幹練的夾克衫和短裙，那是20年前流行的著裝。
她有一種溫暖的，祖母般的氣質

溫迪「我是這裡的家庭服務顧問，叫我溫迪就行了，請問有需要什麼服務嗎？」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 09:28 PM</span>

            <div class="chatlog__message " data-message-id="812314549381627905" id="message-812314549381627905">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「你好我叫<strong>羅倫</strong>，至於來殯儀館嘛...還能做些什麼呢」緒方尷尬的笑著應答</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812314743645536286" id="message-812314743645536286">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我不會相信這裡面的任何人，即便是個和藹的老太太</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812315137687158786" id="message-812315137687158786">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「能夠帶我見見老闆嗎」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 09:35 PM</span>

            <div class="chatlog__message " data-message-id="812316391562674207" id="message-812316391562674207">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//水喔默默賣羅倫
溫迪「好的羅倫先生，請往這走」溫迪帶著你走去老闆辦公室
&quot;敲了敲辦公室門&quot;

　　「業主有人要來見你。好了，羅倫先生請吧」

你走進去看到年齡大約在四十歲左右的婦人
身材頎長，穿著無可挑剔。她表情莊重，且散發著同情心。
根據辦公桌上名牌顯示，他叫做<strong>拉德福德</strong></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 09:37 PM</span>

            <div class="chatlog__message " data-message-id="812316919972888616" id="message-812316919972888616">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「喔你好，我叫ㄒ羅倫」伸出了手</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 09:40 PM</span>

            <div class="chatlog__message " data-message-id="812317677049741332" id="message-812317677049741332">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">拉德福德也向你握手，隨後示意你坐下來談

拉德福德「那麼有什麼我能幫忙的嗎？ㄒ羅倫先生」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 09:41 PM</span>

            <div class="chatlog__message " data-message-id="812317963779702784" id="message-812317963779702784">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「啊啊抱歉有點大舌頭，我叫做羅倫，是這樣的，最近我的母親病的有點重，我想也是時候準備一下了」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812318241280098356" id="message-812318241280098356">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「然後聽朋友介紹了這間殯儀館，但是稍微查了一下發現你們近期的狀況好像不是太理想」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 09:45 PM</span>

            <div class="chatlog__message " data-message-id="812319003929608224" id="message-812319003929608224">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">聽到你的問題後，拉德福德慢慢的說到
拉德福德「是阿...羅倫先生，其實我們這邊已經不再提供葬禮服務了」

　　　　「因為最近由於嚴峻的經濟形勢，我不得不把公司出售給一家企業集團，寧靜有限公司」

　　　　「河谷殯儀館將在月底永久關閉」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 09:48 PM</span>

            <div class="chatlog__message " data-message-id="812319590720864257" id="message-812319590720864257">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「是嗎...雖然是顧客但提起這件事還真是抱歉」

「那麼這附近還有什麼殯儀館嗎？」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 09:50 PM</span>

            <div class="chatlog__message " data-message-id="812320234596728833" id="message-812320234596728833">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">拉德福德「目前已知這附近只有我們這家殯儀館」

　　　　「而且這是我祖父在20世紀20年代創立的事業，很久就扎根基業於此」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 09:52 PM</span>

            <div class="chatlog__message " data-message-id="812320636965486642" id="message-812320636965486642">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「祖父代代相傳的事業嗎，在這一代結束真可惜呢！」

「啊！並沒有任何詆毀的意思，只是單純表示惋惜」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812320708075847680" id="message-812320708075847680">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//這邊有寫他們的營業時間是幾點到幾點嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 09:53 PM</span>

            <div class="chatlog__message " data-message-id="812320846000816188" id="message-812320846000816188">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//一般都晚上10點關門</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 09:53 PM</span>

            <div class="chatlog__message " data-message-id="812320984920358922" id="message-812320984920358922">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//這個辦公室裡面有什麼值得注意的嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 09:54 PM</span>

            <div class="chatlog__message " data-message-id="812321161920118784" id="message-812321161920118784">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//普通辦公室，以現在能看到的樣子</span>

                                <span class="chatlog__edited-timestamp" title="27-Feb-21 12:02 AM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 09:56 PM</span>

            <div class="chatlog__message " data-message-id="812321832723415071" id="message-812321832723415071">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「哀～那傢伙真是的，肯定是聽聞這間殯儀館歷史悠久才這樣推薦的吧，還說什麼自己也試過極力推薦」小聲低咕著</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812322374287884328" id="message-812322374287884328">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「我能夠請問一下你認識一位名叫唐．沃茲的人嗎」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812322533289623602" id="message-812322533289623602">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「就是他跟我推薦的，沒想到他竟然沒有跟我提及你們月底就要收拾的事」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812322611258196011" id="message-812322611258196011">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我想要申請心理學看他聽到唐有沒有動搖</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812322687678283836" id="message-812322687678283836">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//<s>還有翻出他的名字花了我好久的時間</s></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:01 PM</span>

            <div class="chatlog__message " data-message-id="812322943656656927" id="message-812322943656656927">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">拉德福德「唐&#183;沃茨的話，他的確是我的客戶」
//OK 心理學給一下數值</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 10:02 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 10:01 PM</span>

            <div class="chatlog__message " data-message-id="812322971338932264" id="message-812322971338932264">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//65</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:01 PM</span>

            <div class="chatlog__message " data-message-id="812323016557723658" id="message-812323016557723658">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">dr cc 65 心理學</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">19-Feb-21 10:01 PM</span>

            <div class="chatlog__message " data-message-id="812323017647849533" id="message-812323017647849533">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="艾鷲斯AIjius#9612">@艾鷲斯AIjius</span> 暗骰給自己</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:02 PM</span>

            <div class="chatlog__message " data-message-id="812323150716993546" id="message-812323150716993546">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你提到唐這個人時，他並沒有特別的反應</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 10:03 PM</span>

            <div class="chatlog__message " data-message-id="812323490647506944" id="message-812323490647506944">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「是那個過來幫媽媽辦理後事的胖子嗎？」
「他最近老是抱怨自己骨頭痛，光是聽他的抱怨就飽了呢」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812323591307001866" id="message-812323591307001866">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//可以連續用心理學嗎?</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:04 PM</span>

            <div class="chatlog__message " data-message-id="812323718314590238" id="message-812323718314590238">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//阿 可以　等我RP</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 10:04 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 10:04 PM</span>

            <div class="chatlog__message " data-message-id="812323854533656596" id="message-812323854533656596">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//聽到骨頭痛有沒有特別的反應</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:07 PM</span>

            <div class="chatlog__message " data-message-id="812324533650063422" id="message-812324533650063422">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">拉德福德「沒錯，不過很抱歉，我這方面不是非常清楚。我們沒過多詢問什麼」

　　　　「那時候只有問跟他母親的相關事物」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812324552482750466" id="message-812324552482750466">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">dr cc 65 心理學</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">19-Feb-21 10:07 PM</span>

            <div class="chatlog__message " data-message-id="812324555811979304" id="message-812324555811979304">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="艾鷲斯AIjius#9612">@艾鷲斯AIjius</span> 暗骰給自己</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:10 PM</span>

            <div class="chatlog__message " data-message-id="812325244009316362" id="message-812325244009316362">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">-----心理學-----
你提到骨頭痛這段話時，他並沒有過多情緒起伏
換句話說他沒有感到一絲意外的感覺</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 10:11 PM</span>

            <div class="chatlog__message " data-message-id="812325499787280395" id="message-812325499787280395">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「啊啊抱歉，有點扯遠了呢，他老是抱怨害我以為他遇到的每個人也都會抱怨一下」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812325617206296596" id="message-812325617206296596">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「那我想應該沒事了，我就先離開囉，抱歉打擾」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:13 PM</span>

            <div class="chatlog__message " data-message-id="812325960270479371" id="message-812325960270479371">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">拉德福德面帶笑容向你道別，就這樣走出殯儀館
&quot;裡面好悶阿，有點不透氣&quot;你這麼想著</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 10:13 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 10:14 PM</span>

            <div class="chatlog__message " data-message-id="812326212784619560" id="message-812326212784619560">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;接下來我要開車離開然後再偷偷折返回來，找個隱密的地方開啟古老偵探模式&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812326256875274271" id="message-812326256875274271">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;我要監視這邊&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812326365209821185" id="message-812326365209821185">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;然後匯報一下羅倫，告訴他這間殯儀館很可疑&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:16 PM</span>

            <div class="chatlog__message " data-message-id="812326807356309534" id="message-812326807356309534">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那你繞了一圈，開到離殯儀館不遠的巷子，觀察著...順道打電話給羅倫
&quot;電話撥通了&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 10:18 PM</span>

            <div class="chatlog__message " data-message-id="812327253501018152" id="message-812327253501018152">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「喂，是我啦，我剛剛去過那間殯儀館了，總感覺那個老闆在隱瞞些什麼所以我沒有透露出真實的身分」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812327412301692978" id="message-812327412301692978">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「可以幫我查查看老闆拉德福德嗎？我要在這邊監視著」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:20 PM</span>

            <div class="chatlog__message " data-message-id="812327752065613865" id="message-812327752065613865">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">羅倫「诶是嘛，挺聰明的嘛，當然可以」

　　「話說你用了什麼有趣的名子？」有些好奇的詢問</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 10:21 PM</span>

            <div class="chatlog__message " data-message-id="812327924795047956" id="message-812327924795047956">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「ㄜ...歐文，就是你懂得嘛，常見的菜市場名」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:22 PM</span>

            <div class="chatlog__message " data-message-id="812328209759862825" id="message-812328209759862825">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">羅倫「是嘛...」失去了興致

　　「那我有查到什麼再打給你」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 10:22 PM</span>

            <div class="chatlog__message " data-message-id="812328326378422312" id="message-812328326378422312">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「啊啊好的」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812328551054835723" id="message-812328551054835723">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//目前應該沒有什麼要做的了</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812328589458407444" id="message-812328589458407444">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//啊等等</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812328676300816434" id="message-812328676300816434">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「對了，關於伊麗莎的遺體是怎麼處置啊」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:27 PM</span>

            <div class="chatlog__message " data-message-id="812329411625091073" id="message-812329411625091073">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">羅倫「目前還沒等到化驗所那邊的報告，說實在有點久呢」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 10:28 PM</span>

            <div class="chatlog__message " data-message-id="812329873531076659" id="message-812329873531076659">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「根據目前的線索來看犯人想要的是有著奇異骨紋的人的身體，所以關於她的遺體還是多加小心吧，當然，死人活人都要顧好」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812329940334411829" id="message-812329940334411829">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我現在真的沒有任何要做的事啦</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:33 PM</span>

            <div class="chatlog__message " data-message-id="812330955629002793" id="message-812330955629002793">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//那就當你打算埋伏觀察到晚上囉</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 10:33 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">19-Feb-21 10:33 PM</span>

            <div class="chatlog__message " data-message-id="812331019269177384" id="message-812331019269177384">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//ok</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">19-Feb-21 10:37 PM</span>

            <div class="chatlog__message " data-message-id="812332045145341972" id="message-812332045145341972">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//存檔k</span>

                                <span class="chatlog__edited-timestamp" title="19-Feb-21 11:59 PM">(edited)</span>
                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="&#128077;&#127999;" title="&#128077;&#127999;" src="https://twemoji.maxcdn.com/2/72x72/1f44d-1f3ff.png">
                                <span class="chatlog__reaction-count">2</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">20-Feb-21 07:00 PM</span>

            <div class="chatlog__message " data-message-id="812639829824110623" id="message-812639829824110623">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//來約下一次嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812639858253365278" id="message-812639858253365278">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//還有我的靈感爆發了</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812640135756906516" id="message-812640135756906516">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//一直在疑惑那些骨頭有問題的人為什麼都很剛好的訂購那家殯儀館的服務</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812640225704017940" id="message-812640225704017940">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//也許不是那些有問題的人去訂購而是訂購的人有問題</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812640405426274336" id="message-812640405426274336">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//這家殯儀館肯定就是邪教本營，他們有某種儀式能夠把這邊顧客的骨頭弄出一點痕跡</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">20-Feb-21 07:42 PM</span>

            <div class="chatlog__message " data-message-id="812650385201561630" id="message-812650385201561630">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//1d5請，然後不是幕間所以不用成長</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">20-Feb-21 07:43 PM</span>

            <div class="chatlog__message " data-message-id="812650581184348160" id="message-812650581184348160">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//好耶</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="812650589133471775" id="message-812650589133471775">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">1d5</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">20-Feb-21 07:43 PM</span>

            <div class="chatlog__message " data-message-id="812650590479712266" id="message-812650590479712266">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1d5：
1[1] = 1</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">20-Feb-21 07:43 PM</span>

            <div class="chatlog__message " data-message-id="812650622893555712" id="message-812650622893555712">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//該死</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">23-Feb-21 10:19 AM</span>

            <div class="chatlog__message " data-message-id="813595907681288212" id="message-813595907681288212">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//約下次嗎？下次團務是不是就能解決了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">23-Feb-21 03:47 PM</span>

            <div class="chatlog__message " data-message-id="813678400803831808" id="message-813678400803831808">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//嗯，晚上我去確認一下時間</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">24-Feb-21 08:13 PM</span>

            <div class="chatlog__message " data-message-id="814107674349535272" id="message-814107674349535272">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//結果今天才查看，根據我那絕望的行程 26、27 晚上應該可行，選一天吧</span>

                                <span class="chatlog__edited-timestamp" title="24-Feb-21 08:14 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">25-Feb-21 01:36 AM</span>

            <div class="chatlog__message " data-message-id="814188917167226900" id="message-814188917167226900">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//26</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">25-Feb-21 06:37 AM</span>

            <div class="chatlog__message " data-message-id="814264722865913886" id="message-814264722865913886">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><img class="emoji emoji--large" alt="👌" title="👌" src="https://twemoji.maxcdn.com/2/72x72/1f44c.png"></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 06:23 PM</span>

            <div class="chatlog__message " data-message-id="814804770249506826" id="message-814804770249506826">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//20:00後隨時可以開始</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 06:51 PM">(edited)</span>
                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="&#128076;&#127999;" title="&#128076;&#127999;" src="https://twemoji.maxcdn.com/2/72x72/1f44c-1f3ff.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:00 PM</span>

            <div class="chatlog__message " data-message-id="814829314087321642" id="message-814829314087321642">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//來了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:01 PM</span>

            <div class="chatlog__message " data-message-id="814829431125573693" id="message-814829431125573693">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//好嗲</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814830747218870272" id="message-814830747218870272">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">夜已深...現在時間來到晚上10點
殯儀館剛才就熄燈打烊了，你也略顯疲憊
但值得注意的是，你沒有見到一名員工有離開過
----------------------------------------------------------------</span>

                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/814830746820804628/pexels-alex-conchillos-3888585.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/814830746820804628/pexels-alex-conchillos-3888585.png" alt="Image attachment" title="Image: pexels-alex-conchillos-3888585.png (341.03 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:07 PM</span>

            <div class="chatlog__message " data-message-id="814830891850268702" id="message-814830891850268702">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//一群邪教徒，<s>等我找到證據見一個殺一個</s></span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814831365466882068" id="message-814831365466882068">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;進去前先傳訊息告知羅倫，我每隔半小時會發訊息給你，如果通知中斷就拜託你了&quot;</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814831526985334784" id="message-814831526985334784">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">下車看了看街道，確認沒人後便趁著夜色摸黑過去</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814831661467697162" id="message-814831661467697162">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;前往消防通道並確認能不能從那邊進去&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:11 PM</span>

            <div class="chatlog__message " data-message-id="814832118646964235" id="message-814832118646964235">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//重開DC
&quot;你轉了轉消防通道的門，是鎖上的&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:12 PM</span>

            <div class="chatlog__message " data-message-id="814832312612945950" id="message-814832312612945950">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//最怕的地方來了，完全沒有鎖匠</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814832474773258251" id="message-814832474773258251">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">先繞一圈把能當做是入口的地方都摸摸看</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814832604834168832" id="message-814832604834168832">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//等等不行，做人要有信仰，我申請鎖匠</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:14 PM</span>

            <div class="chatlog__message " data-message-id="814832678422577182" id="message-814832678422577182">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//有工具嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:14 PM</span>

            <div class="chatlog__message " data-message-id="814832733846241311" id="message-814832733846241311">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//錄音筆行嗎?</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 08:14 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:15 PM</span>

            <div class="chatlog__message " data-message-id="814832980378910720" id="message-814832980378910720">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//有點牽強，那就困難鎖匠 +1懲罰骰(黑夜)</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:15 PM</span>

            <div class="chatlog__message " data-message-id="814833135744974908" id="message-814833135744974908">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//反正我也只有1，我的嘴巴咬著手電筒照</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814833216091324426" id="message-814833216091324426">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 1 鎖匠</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 08:16 PM</span>

            <div class="chatlog__message " data-message-id="814833216979730503" id="message-814833216979730503">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 1：
44 → 失敗：鎖匠</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:16 PM</span>

            <div class="chatlog__message " data-message-id="814833340485599273" id="message-814833340485599273">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">dr cc 50</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 08:16 PM</span>

            <div class="chatlog__message " data-message-id="814833345707376690" id="message-814833345707376690">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="艾鷲斯AIjius#9612">@艾鷲斯AIjius</span> 暗骰給自己</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:17 PM</span>

            <div class="chatlog__message " data-message-id="814833423943860254" id="message-814833423943860254">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//那是某人的聆聽嗎，怕诶</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:18 PM</span>

            <div class="chatlog__message " data-message-id="814833689678446642" id="message-814833689678446642">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">喀噹一聲！門應聲打開
但你也很清楚剛剛的聲響是多麼的引人注意</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:18 PM</span>

            <div class="chatlog__message " data-message-id="814833767734575166" id="message-814833767734575166">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">？！</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:18 PM</span>

            <div class="chatlog__message " data-message-id="814833780220362772" id="message-814833780220362772">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//然後我去用一下地圖</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:19 PM</span>

            <div class="chatlog__message " data-message-id="814833997040451626" id="message-814833997040451626">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;從包包裡戴上手套跟假鬍子眼鏡&quot;</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 08:19 PM">(edited)</span>
                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/814833996864553000/09191b64-acef-447b-90c6-52b2d07c2f18.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/814833996864553000/09191b64-acef-447b-90c6-52b2d07c2f18.png" alt="Image attachment" title="Image: 09191b64-acef-447b-90c6-52b2d07c2f18.png (161.73 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
            <div class="chatlog__message " data-message-id="814834112263094292" id="message-814834112263094292">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//感覺我要完了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:21 PM</span>

            <div class="chatlog__message " data-message-id="814834547971063830" id="message-814834547971063830">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//<img class="emoji " alt="11" title="11" src="https://cdn.discordapp.com/emojis/767442378101096488.png"> 
你或許是第一次在深夜殯儀館中，周圍的氣氛讓你渾身不對勁
至少你目前沒感覺到館內有任何人...</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:22 PM</span>

            <div class="chatlog__message " data-message-id="814834865820008539" id="message-814834865820008539">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">緒方一手拿著手電筒環視周遭的環境一手將電擊槍與手槍藏在兜裡好隨時掏出來</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814834963265880098" id="message-814834963265880098">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//你有釘選</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:23 PM</span>

            <div class="chatlog__message " data-message-id="814835044307828769" id="message-814835044307828769">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我公開一些區域。好吧晚點再給</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 08:23 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814835531367972915" id="message-814835531367972915">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//歡迎搜查
你小心翼翼的觀察四周，雖然沒有任何人的氣息
但你總覺得渾身發悶，冷汗直流</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 08:25 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:26 PM</span>

            <div class="chatlog__message " data-message-id="814835755204870164" id="message-814835755204870164">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我要相信我的角卡，大不了邊打邊跑</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814835885207715870" id="message-814835885207715870">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//所以這個房間沒有什麼東西嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:27 PM</span>

            <div class="chatlog__message " data-message-id="814835973371330580" id="message-814835973371330580">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//沒</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:30 PM</span>

            <div class="chatlog__message " data-message-id="814836805773950976" id="message-814836805773950976">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">雖然這間殯儀館給人的氛圍很糟但緒方仍然硬著頭皮將調查放為首要目標，與其盲目的瞎晃不如直搗黃龍
出了房間後憑藉著上午來的記憶，緒方小心翼翼的不發出聲響前往拉德福德的辦公室，並在路程中警戒著其他人的存在</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:34 PM</span>

            <div class="chatlog__message " data-message-id="814837712892198942" id="message-814837712892198942">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你一路小心謹慎傳過無人的走廊
除了你的腳步聲，世界彷彿歸如寂靜
慢慢地，你來到了辦公室，景象依然跟上午時的一樣，但增添意思詭異感。</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:34 PM</span>

            <div class="chatlog__message " data-message-id="814837901615431701" id="message-814837901615431701">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//擺設如何?</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:36 PM</span>

            <div class="chatlog__message " data-message-id="814838380885049364" id="message-814838380885049364">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">裡面有一張大但陳舊的辦公桌，一旁有需多擺設裝飾
還有掛在牆上的照片</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:38 PM</span>

            <div class="chatlog__message " data-message-id="814838800852844544" id="message-814838800852844544">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「上午來的時候還沒怎麼仔細注意這邊呢」
也許是獨自一人的原因緒方開始小聲的自言自語調侃了自己起來</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814838849406107658" id="message-814838849406107658">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;觀察照片&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:39 PM</span>

            <div class="chatlog__message " data-message-id="814839054704050227" id="message-814839054704050227">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//靈感</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:39 PM</span>

            <div class="chatlog__message " data-message-id="814839118692352000" id="message-814839118692352000">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 75 int</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 08:39 PM</span>

            <div class="chatlog__message " data-message-id="814839119607234570" id="message-814839119607234570">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 75：
77 → 失敗：int</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:39 PM</span>

            <div class="chatlog__message " data-message-id="814839148707184680" id="message-814839148707184680">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//開什麼玩笑啊</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814839221336539196" id="message-814839221336539196">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//這個能夠孤嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:40 PM</span>

            <div class="chatlog__message " data-message-id="814839300549115924" id="message-814839300549115924">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//能RP表示出來就讓你孤</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:41 PM</span>

            <div class="chatlog__message " data-message-id="814839664414162945" id="message-814839664414162945">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">雖然待在這邊有著一段時間讓緒方的眼睛逐漸適應起了黑暗
但要在黑暗中看清楚東西果然還是不可能的，他拿起了手電筒照了照那張照片</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:42 PM</span>

            <div class="chatlog__message " data-message-id="814839718608109569" id="message-814839718608109569">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><img class="emoji emoji--large" alt="11" title="11" src="https://cdn.discordapp.com/emojis/767442378101096488.png"></span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 08:42 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:42 PM</span>

            <div class="chatlog__message " data-message-id="814839816927051787" id="message-814839816927051787">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">並且！</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814839890234834955" id="message-814839890234834955">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">從包包裡拿出放大鏡看了看照片上有什麼值得注意的部分</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:43 PM</span>

            <div class="chatlog__message " data-message-id="814840058125090866" id="message-814840058125090866">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//no...<img class="emoji " alt="11" title="11" src="https://cdn.discordapp.com/emojis/767442378101096488.png"></span>

                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="&#128076;&#127999;" title="&#128076;&#127999;" src="https://twemoji.maxcdn.com/2/72x72/1f44c-1f3ff.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:43 PM</span>

            <div class="chatlog__message " data-message-id="814840061693788180" id="message-814840061693788180">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//給過嗎?不給就調查其他東西囉</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814840420219355167" id="message-814840420219355167">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(也對啦，像這種明眼人都看的見的照片怎麼可能會有線索嘛)
緒方想著想著便提著手電筒晃到辦公桌旁找找有什麼特殊的文件或是物品</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:45 PM</span>

            <div class="chatlog__message " data-message-id="814840601962086440" id="message-814840601962086440">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:46 PM</span>

            <div class="chatlog__message " data-message-id="814840821018787860" id="message-814840821018787860">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 81 不是我在唬爛，但是我的偵查可是</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 08:46 PM</span>

            <div class="chatlog__message " data-message-id="814840822108651573" id="message-814840822108651573">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 81：
41 → 通常成功：不是我在唬爛，但是我的偵查可是</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:48 PM</span>

            <div class="chatlog__message " data-message-id="814841249752023090" id="message-814841249752023090">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//要不要試試看燒1點，變成困難偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:48 PM</span>

            <div class="chatlog__message " data-message-id="814841354483269632" id="message-814841354483269632">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//燒1點運  luk：65-1 → 64</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 08:51 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:52 PM</span>

            <div class="chatlog__message " data-message-id="814842378199236659" id="message-814842378199236659">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你發現拉德福德的文件櫃中有一個單獨的文件夾，其中列出了最近案件的受害者以及他們的聯繫方式。
但無法判斷這個列表是否是在你之前列出
----------燃燒幸運-----------
你還發現現最大的那個抽屜裝有假抽屜底。藏在裡面的是的一本保存良好的典書籍。
上面寫著<strong>《食屍鬼教團》</strong></span>

                                <span class="chatlog__edited-timestamp" title="27-Feb-21 12:07 AM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:53 PM</span>

            <div class="chatlog__message " data-message-id="814842523934523444" id="message-814842523934523444">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//拉德福德的app高嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:54 PM</span>

            <div class="chatlog__message " data-message-id="814842710850535435" id="message-814842710850535435">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//還蠻好看的</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:54 PM</span>

            <div class="chatlog__message " data-message-id="814842940273983528" id="message-814842940273983528">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(食屍鬼教團?)
緒方在拍下了單獨的文件夾並傳給羅倫後開始翻閱起了《食屍鬼教團》這本書</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 08:57 PM</span>

            <div class="chatlog__message " data-message-id="814843690040295434" id="message-814843690040295434">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">裡面大多是非常扭曲的教義，還有讓人可憎的言語。
你突然想到，為什麼會在這種地方找到這樣的書籍
這不禁讓你感到不寒而慄，尤其是在深夜殯儀館之中
//先San check 0/1</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 08:58 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 08:58 PM</span>

            <div class="chatlog__message " data-message-id="814843800035655691" id="message-814843800035655691">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 81 san</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 08:58 PM</span>

            <div class="chatlog__message " data-message-id="814843800986845184" id="message-814843800986845184">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 81：
45 → 通常成功：san</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:10 PM</span>

            <div class="chatlog__message " data-message-id="814846790922403860" id="message-814846790922403860">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那你的意志多少能穩住心理影響，你逐漸的翻到尾頁，看到了這麼一段內容。
<div class="pre pre--multiline nohighlight">深入骨隨的知識
摧毀你那不堪意志且侵蝕你那脆弱的精神
擺置一時...
學者請取一張書庫所​​寫有知識庫名字，且曾被知識庫持有的紙張，置於餓鬼的頭骨中燃燒。接著，學者要將所得灰燼與人骨粉末混合調配，然後飲下。這將給你摧毀你的意志！，
當“知識庫”死亡後，學者能取回它。

“知識庫”的骨骼開始在知識即將消逝的那一刻存儲知識。在未來的數月中，“知識庫”將會被墮擊。 殘落之軀的知識庫，總會讓人失望，而他會永久性得到詛咒。
學者可以通過向不死深淵之主祈禱）將一個知識庫從其職責中解放。這種做法對“知識庫”幾乎總是致命的，因為“知識庫”會接受在每個死於這一剎那的人的一切秘密，並受到可怕的殘害。當學者死去時，“知識庫”也會得到解放，儘管已造成的傷害和蝕刻都會保留。
舊印能夠阻止蝕刻，但是不能治愈已有的病情。</div>

由於你之前有聽聞醫生跟化驗官發現有些人的骨頭被刻上了奇怪的紋路
你不禁有些詫異
//San Check  1/1D6
//好卡，我再重開一次</span>

                                <span class="chatlog__edited-timestamp" title="27-Feb-21 12:08 AM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:12 PM</span>

            <div class="chatlog__message " data-message-id="814847378950848572" id="message-814847378950848572">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//忽然注意到san值應該是77</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814847397074173983" id="message-814847397074173983">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 77 san</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 09:12 PM</span>

            <div class="chatlog__message " data-message-id="814847397888655371" id="message-814847397888655371">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 77：
62 → 通常成功：san</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:14 PM</span>

            <div class="chatlog__message " data-message-id="814847849962930243" id="message-814847849962930243">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//那我先說這是個法術，結團再給原文</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 09:15 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:15 PM</span>

            <div class="chatlog__message " data-message-id="814848220281700384" id="message-814848220281700384">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(餓鬼...是指這本書的書名食屍鬼嗎?)
翻閱記憶，在過去確實曾在日本碰上某種可以算的上是食屍鬼的生物

他們突起畸形的利爪能夠輕易的撕碎獵物，當初有著一名極具天賦的少年自己才能毫髮無損的離開那裡
這次可沒有其他人會幫助自己，緒方毫不猶豫的掏出了手槍，要是真的是自己所想的生物的話那恐怕是免不了一場惡戰</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 10:40 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814848689604132864" id="message-814848689604132864">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;把最後一頁的照片拍下來並告訴羅倫不管你信不信他們便是運用這種手段將顧客進行改造&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:18 PM</span>

            <div class="chatlog__message " data-message-id="814848949314650162" id="message-814848949314650162">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你這麼做的同時...
遠處產生了不小的聲響，雖然不是辦公室後方的房間發出
但音源確實是那個方向</span>

                                <span class="chatlog__edited-timestamp" title="27-Feb-21 12:10 AM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:19 PM</span>

            <div class="chatlog__message " data-message-id="814849072926162975" id="message-814849072926162975">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//儲藏室那個方向嗎嗎</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 09:19 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:19 PM</span>

            <div class="chatlog__message " data-message-id="814849159752319057" id="message-814849159752319057">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//安全停屍房</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:19 PM</span>

            <div class="chatlog__message " data-message-id="814849239195713606" id="message-814849239195713606">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//有完整地圖嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814849308792193024" id="message-814849308792193024">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//或是後面一小部分的地圖</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:20 PM</span>

            <div class="chatlog__message " data-message-id="814849314366947348" id="message-814849314366947348">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">----------------------------------------------------------------</span>

                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/814849314093531156/adsad.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/814849314093531156/adsad.png" alt="Image attachment" title="Image: adsad.png (696.46 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
            <div class="chatlog__message " data-message-id="814849342259200070" id="message-814849342259200070">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//忘了貼</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:22 PM</span>

            <div class="chatlog__message " data-message-id="814849941603876904" id="message-814849941603876904">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">寧靜的黑夜中連鉛筆掉落的聲音都顯得格外清晰，在意識到這家殯儀館的恐怖真相後
緒方非但沒有退縮反而更加的果敢，他將手電筒給關掉並一手握著手槍一手小心翼翼的打開一個小縫觀察裡面的聲音來源</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814850631814348860" id="message-814850631814348860">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//這個咒文感覺人類很難施放啊，而且好像還需要目標持有過並有他們的名字在上面的紙張</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:25 PM</span>

            <div class="chatlog__message " data-message-id="814850642622545970" id="message-814850642622545970">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你循聲來到了殯儀館非常內部的地方，這裡應該是大停屍房。
最終聲音導向一間小雜物間，開門看到一個垂直通道，有一個梯子架著。
明顯就是這裡了...
----------------------------------------------------------------</span>

                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/814850642354241536/adsad.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/814850642354241536/adsad.png" alt="Image attachment" title="Image: adsad.png (771.66 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
            <div class="chatlog__message " data-message-id="814850830485553182" id="message-814850830485553182">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我知道那個黑框很詭異，但沒辦法<img class="emoji " alt="11" title="11" src="https://cdn.discordapp.com/emojis/767442378101096488.png"></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:26 PM</span>

            <div class="chatlog__message " data-message-id="814850838203859004" id="message-814850838203859004">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//毫不掩飾的诶</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814851088028532746" id="message-814851088028532746">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;傳訊息給羅倫：我發現了個祕密入口，就在停屍房後的小雜物間裡，現在準備進去，希望你們能夠發派人手採取一點行動&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:28 PM</span>

            <div class="chatlog__message " data-message-id="814851471589507132" id="message-814851471589507132">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">羅倫「秘密入口是吧...好的我現在立馬帶隊過去」電話那頭可以聽到大隊的移動聲</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:29 PM</span>

            <div class="chatlog__message " data-message-id="814851732265500673" id="message-814851732265500673">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">確認手槍的子彈是滿的後從包包拿出甩棍插在腰間上並將頭靠著手槍
「呼...拜託了」顫抖的手臂透露了緒方內心所想，在小聲的呢喃後緒方毅然決然地爬上梯子</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:33 PM</span>

            <div class="chatlog__message " data-message-id="814852585130819604" id="message-814852585130819604">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">爬梯子的途中，你感到下方有輕微的氣流吹上
伴隨著似有似無的聲響。
當你的雙腳落地，前方則是狹長陰暗的洞穴通道，一股帶著惡臭的微風襲來</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 09:33 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:36 PM</span>

            <div class="chatlog__message " data-message-id="814853418647814204" id="message-814853418647814204">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">越往裡走關於在日本所遭遇的生物的記憶便越清晰，一樣的腐臭味刺激著自己的鼻腔
也許是有過經驗了，這次並沒有產生像上次那樣的嘔吐感，緒方決定繼續前行</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:43 PM</span>

            <div class="chatlog__message " data-message-id="814855138212315187" id="message-814855138212315187">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">最後你來到了一個寬敞的空間，但眼前的景象讓你心裡一驚
地面中央有一個血跡斑斑的排水口。從某個裸身軀體引出一道血跡通向排水口，而一名被肢解後的屍體就躺在房間中央。四名殯儀館工作人員靠牆席地而坐，
每人手捧屍體四肢中的一條，正小心地剝下長條的皮膚。之前碰到的殯儀館顧問也在這裡，正在給霍華德&#183;達弗林被斬下的頭顱剝皮。

拉德福德以她的本來面貌，也即食屍鬼的樣子出現在你的面前。她的衣服整齊地疊放在一旁的架子上。她帶著兩隻食屍鬼。
根據剛剛的&quot;食屍鬼教典&quot;這些食屍鬼是拉德福德氏族的其他收藏者。
拉德福德和收藏者們小心翼翼地啃去受害者骨骼上的肌腱，並把潘斯語紋路舔舐乾淨。
架子上也放著精心剔除血肉後用人皮包裹的人骨，每捆骨頭中附有蝕刻的不到一半。

由於你有之前有遇過食屍鬼的經驗
目擊這個場面San Check 1/1d6</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814855431960657930" id="message-814855431960657930">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">----------------------------------------------------------------</span>

                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/814855431728922644/adsad.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/814855431728922644/adsad.png" alt="Image attachment" title="Image: adsad.png (806.04 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
            <div class="chatlog__message " data-message-id="814855467691409458" id="message-814855467691409458">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">----------------------------------------------------------------</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:44 PM</span>

            <div class="chatlog__message " data-message-id="814855512734564433" id="message-814855512734564433">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//怎麼可能打得贏啦，該慫了</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814855608921751555" id="message-814855608921751555">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 76 食屍鬼不要RRR</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 09:45 PM</span>

            <div class="chatlog__message " data-message-id="814855609950142465" id="message-814855609950142465">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 76：
10 → 極限成功：食屍鬼不要RRR</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:45 PM</span>

            <div class="chatlog__message " data-message-id="814855643629617162" id="message-814855643629617162">

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/814855643374420029/pexels-neosiam-673862.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/814855643374420029/pexels-neosiam-673862.png" alt="Image attachment" title="Image: pexels-neosiam-673862.png (502.01 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="11" title="11" src="https://cdn.discordapp.com/emojis/767442378101096488.png">
                                <span class="chatlog__reaction-count">2</span>
                            </div>
                    </div>
            </div>
            <div class="chatlog__message " data-message-id="814855737238618173" id="message-814855737238618173">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//還沒被發現安啦</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:46 PM</span>

            <div class="chatlog__message " data-message-id="814855884018548736" id="message-814855884018548736">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//潛行狀態外加瞄準射擊，以沙漠之鷹的傷害應該能直接解決掉拉德福德</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 09:46 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:46 PM</span>

            <div class="chatlog__message " data-message-id="814856014217871381" id="message-814856014217871381">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//那先過潛行對抗阿福偵查</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 09:47 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814856324147445810" id="message-814856324147445810">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//原本猶豫要不要用對抗方式</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:48 PM</span>

            <div class="chatlog__message " data-message-id="814856425746071604" id="message-814856425746071604">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">即便不斷的欺騙著自己不可能那麼巧，只是自己多慮了，然而不願接受的最糟糕的想法依然與眼前的現實呼應
緒方拿起了手槍，止住顫抖，他明白要是讓他們跑走了肯定會有更多人受害</span>

                                <span class="chatlog__edited-timestamp" title="27-Feb-21 12:36 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814856528724492328" id="message-814856528724492328">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 70 感覺一定要過的潛行</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 09:48 PM</span>

            <div class="chatlog__message " data-message-id="814856534122823750" id="message-814856534122823750">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 70：
18 → 困難成功：感覺一定要過的潛行</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:49 PM</span>

            <div class="chatlog__message " data-message-id="814856553323560960" id="message-814856553323560960">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//好诶</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:49 PM</span>

            <div class="chatlog__message " data-message-id="814856691627327538" id="message-814856691627327538">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 50 阿福偵查對抗</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 09:49 PM</span>

            <div class="chatlog__message " data-message-id="814856692327645196" id="message-814856692327645196">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="艾鷲斯AIjius#9612">@艾鷲斯AIjius</span>
1D100 ≦ 50：
60 → 失敗：阿福偵查對抗</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:49 PM</span>

            <div class="chatlog__message " data-message-id="814856761663029299" id="message-814856761663029299">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//臭龍蝦，乖乖迎來你的死期吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:50 PM</span>

            <div class="chatlog__message " data-message-id="814856840248426506" id="message-814856840248426506">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你成功的降低姿態，防止被他們發現</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 09:50 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:50 PM</span>

            <div class="chatlog__message " data-message-id="814856953649430548" id="message-814856953649430548">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//雖然這樣有點超遊的成分在，但我能看到裡面有什麼逃跑路線嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814857258520281088" id="message-814857258520281088">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//地圖那邊可以看出這邊挺大的，停車場還被遮著代表應該有路通到那邊吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:52 PM</span>

            <div class="chatlog__message " data-message-id="814857363478806588" id="message-814857363478806588">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//可能唄
但你現在只知道你能從剛剛的路口下來這裡</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:55 PM</span>

            <div class="chatlog__message " data-message-id="814858212238950441" id="message-814858212238950441">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">(敵人有8個，其中怪物有3隻，拉德福德應該就是那一隻)
即便在這種情況下緒方依舊保持著冷靜分析著目前的局勢

(不排除有逃跑路線的可能性，按照目前所知的情報來看拉德福德恐怕就是這邊的首領或幹部，絕不能放跑他)
拿起沙漠之鷹瞄準，並朝著拉德福德三連發</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 10:01 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 09:56 PM</span>

            <div class="chatlog__message " data-message-id="814858484977893407" id="message-814858484977893407">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//8隻，還有一個顧問</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814858731547394089" id="message-814858731547394089">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//第一發+1獎勵骰 後兩發不變
//四名殯儀館工作人員靠牆席地而坐，之前碰到的殯儀館顧問也在這裡，拉德福德以她的本來面貌，也即食屍鬼的樣子出現在你的面前。她帶著兩隻食屍鬼。
//恩8隻</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 09:58 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:58 PM</span>

            <div class="chatlog__message " data-message-id="814858893477806101" id="message-814858893477806101">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc1 62 沙漠之鷹第一發啦</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 09:58 PM</span>

            <div class="chatlog__message " data-message-id="814858894781317140" id="message-814858894781317140">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 62：
61、81 → 61 → 通常成功：沙漠之鷹第一發啦</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:58 PM</span>

            <div class="chatlog__message " data-message-id="814858938246758440" id="message-814858938246758440">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 62 第二發</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 09:58 PM</span>

            <div class="chatlog__message " data-message-id="814858939183136778" id="message-814858939183136778">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 62：
83 → 失敗：第二發</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:58 PM</span>

            <div class="chatlog__message " data-message-id="814858957863649321" id="message-814858957863649321">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 63 第三發</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 09:58 PM</span>

            <div class="chatlog__message " data-message-id="814858958857568273" id="message-814858958857568273">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 63：
8 → 極限成功：第三發</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 09:58 PM</span>

            <div class="chatlog__message " data-message-id="814858990897987584" id="message-814858990897987584">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">\I/</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:01 PM</span>

            <div class="chatlog__message " data-message-id="814859762226692096" id="message-814859762226692096">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你從暗處直接向阿福開槍，一瞬間他的頭顱爆開場面血肉四濺
最終他一動也不動的躺臥在那裏，其他5名凡人之驅包括顧問，看到這樣的場面瞬間朝外邊狂奔
現場只剩下兩隻食屍鬼
----------------------------------------------------------------</span>

                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/814859761929158726/c9274e65-0fd8-408f-88de-8b56ee54a20f_base_resized.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/814859761929158726/c9274e65-0fd8-408f-88de-8b56ee54a20f_base_resized.png" alt="Image attachment" title="Image: c9274e65-0fd8-408f-88de-8b56ee54a20f_base_resized.png (355.8 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:02 PM</span>

            <div class="chatlog__message " data-message-id="814859821362053175" id="message-814859821362053175">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">2D10+2D6+16</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:02 PM</span>

            <div class="chatlog__message " data-message-id="814859822411022356" id="message-814859822411022356">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
2D10+2D6+16：
4[1+3]+9[4+5]+16 = 29</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:02 PM</span>

            <div class="chatlog__message " data-message-id="814859838903287819" id="message-814859838903287819">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//稍等</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:02 PM</span>

            <div class="chatlog__message " data-message-id="814859852010487898" id="message-814859852010487898">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我還是要骰傷害</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814859866472579073" id="message-814859866472579073">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//滿足了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:02 PM</span>

            <div class="chatlog__message " data-message-id="814859890141036585" id="message-814859890141036585">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//k</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:02 PM</span>

            <div class="chatlog__message " data-message-id="814859951297658910" id="message-814859951297658910">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//那個2D10也太慘</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:02 PM</span>

            <div class="chatlog__message " data-message-id="814860033183187006" id="message-814860033183187006">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//開放恐嚇趕走剩下的食屍鬼</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:03 PM</span>

            <div class="chatlog__message " data-message-id="814860096437747753" id="message-814860096437747753">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我個人挺想立刻逃跑的啦</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814860128305545277" id="message-814860128305545277">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//還有那些人類是往哪邊跑啊</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:03 PM</span>

            <div class="chatlog__message " data-message-id="814860217812254720" id="message-814860217812254720">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//你剛剛的路線</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:05 PM</span>

            <div class="chatlog__message " data-message-id="814860606574297148" id="message-814860606574297148">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//混雜在他們裡面跟著跑嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814860712672624672" id="message-814860712672624672">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//直接朝另外一隻開槍好了</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814860824232591381" id="message-814860824232591381">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//等等，我先試試恐嚇</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814860860606119946" id="message-814860860606119946">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//做人要有信仰</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814861457531338764" id="message-814861457531338764">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">面對逃跑的人類們緒方理都不理，直盯著呆在原地的另外兩隻怪物
他明白殺了這幾個人也不會對局面造成什麼影響，況且他的槍向來只對存有戰意的人或&quot;怪物&quot;</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 11:22 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814862067668222022" id="message-814862067668222022">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「你們應該聽的懂我說的話對吧，我在來之前已經連絡過警察了，大批的警力早已在外面，你們要是有智力的話就快點投降」
趁著他們還沒明白狀況的當下，緒方決定呼弄他們並把與羅倫的訊息打開朝他們丟了過去</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 10:12 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:11 PM</span>

            <div class="chatlog__message " data-message-id="814862214082592858" id="message-814862214082592858">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//恐嚇+1獎勵骰(有證物)</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:11 PM</span>

            <div class="chatlog__message " data-message-id="814862282886086677" id="message-814862282886086677">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">CC1 15 拜託投降</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:11 PM</span>

            <div class="chatlog__message " data-message-id="814862283817091103" id="message-814862283817091103">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 15：
5、35 → 5 → 困難成功：拜託投降</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:13 PM</span>

            <div class="chatlog__message " data-message-id="814862786604564530" id="message-814862786604564530">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那兩頭可憎的怪物似乎理解了什麼，灰溜溜的跑走，但他們是去往更後面的區域
最終他們鑽向了一個小洞，一般人得用爬才能前進的大小</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 10:14 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814863055418687588" id="message-814863055418687588">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//要追嗎還是等支援</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:14 PM</span>

            <div class="chatlog__message " data-message-id="814863065115263027" id="message-814863065115263027">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//這樣不行</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814863325833723974" id="message-814863325833723974">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">看著怪物一溜煙的逃跑緒方再也忍受不住恐懼跪了下來，但他隨即撿起手槍射向其中一隻怪物</span>

                                <span class="chatlog__edited-timestamp" title="27-Feb-21 12:39 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814863409551638548" id="message-814863409551638548">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我能在他們逃跑途中射擊嗎?傻子才進去</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:16 PM</span>

            <div class="chatlog__message " data-message-id="814863443907051550" id="message-814863443907051550">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//手槍請</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:16 PM</span>

            <div class="chatlog__message " data-message-id="814863525410504774" id="message-814863525410504774">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//三連</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814863539332186153" id="message-814863539332186153">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 62 第一發</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:16 PM</span>

            <div class="chatlog__message " data-message-id="814863540757987328" id="message-814863540757987328">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 62：
62 → 通常成功：第一發</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:17 PM</span>

            <div class="chatlog__message " data-message-id="814863594382032936" id="message-814863594382032936">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">ccn1 62 懲罰骰</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:17 PM</span>

            <div class="chatlog__message " data-message-id="814863595359567892" id="message-814863595359567892">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 62：
78、58 → 78 → 失敗：懲罰骰</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:17 PM</span>

            <div class="chatlog__message " data-message-id="814863626858004520" id="message-814863626858004520">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">ccn1 62 第三發</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:17 PM</span>

            <div class="chatlog__message " data-message-id="814863627524898878" id="message-814863627524898878">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 62：
46、16 → 46 → 通常成功：第三發</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:17 PM</span>

            <div class="chatlog__message " data-message-id="814863731712196638" id="message-814863731712196638">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 65 食屍鬼A</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:17 PM</span>

            <div class="chatlog__message " data-message-id="814863732747927593" id="message-814863732747927593">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="艾鷲斯AIjius#9612">@艾鷲斯AIjius</span>
1D100 ≦ 65：
32 → 困難成功：食屍鬼A</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:18 PM</span>

            <div class="chatlog__message " data-message-id="814863867041284146" id="message-814863867041284146">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那頭食屍鬼還是頂著傷口，奮力的爬向狹窄洞口，不見蹤影</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814864106367483955" id="message-814864106367483955">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//下次還是dr傷害好了，但又覺得亂亂的</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 10:19 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:19 PM</span>

            <div class="chatlog__message " data-message-id="814864242301468683" id="message-814864242301468683">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「嘖，果然恐懼是源於火力不足，像這種怪物只要多來幾把手槍就不用怕了呢」
緒方雖然嘴上這麼說心底卻暗自慶幸著，要是最後的射擊不小心把他們給引回來就糟糕了</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 10:19 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814864413135470643" id="message-814864413135470643">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">在一切都結束後緒方上前確認一下拉德福德是否真的死亡</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:20 PM</span>

            <div class="chatlog__message " data-message-id="814864521536733184" id="message-814864521536733184">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">看著那慘樣，顯然已死亡</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:20 PM</span>

            <div class="chatlog__message " data-message-id="814864529862557746" id="message-814864529862557746">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">他拿出了甩棍戳了戳那具沒有頭顱的屍體</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814864687803007038" id="message-814864687803007038">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「看來死透了」
隨即撿起手機並確認螢幕有無裂痕</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:21 PM</span>

            <div class="chatlog__message " data-message-id="814864722276515872" id="message-814864722276515872">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//幸運</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:21 PM</span>

            <div class="chatlog__message " data-message-id="814864750050934846" id="message-814864750050934846">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><img class="emoji emoji--large" alt="10" title="10" src="https://cdn.discordapp.com/emojis/767441222846382130.png"></span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814864794673741884" id="message-814864794673741884">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">cc 64 拜託啦</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:21 PM</span>

            <div class="chatlog__message " data-message-id="814864795605532672" id="message-814864795605532672">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D100 ≦ 64：
38 → 通常成功：拜託啦</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:22 PM</span>

            <div class="chatlog__message " data-message-id="814864932611817493" id="message-814864932611817493">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">手機剛好落在屍體上可以進行緩衝，除了濺滿血外，沒受到嚴重損傷</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:23 PM</span>

            <div class="chatlog__message " data-message-id="814865304999297045" id="message-814865304999297045">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「好險沒事，雖然是緊急關頭但螢幕碎裂果然會很痛心呢，話說這不是霍華德的屍體嗎？手機上都是他的嘔嘔嘔嘔」
在結束了一場有驚無險的戰鬥後情緒也緩了下來，面對手機上沾染的穢物緒方這才反應過來並感到一陣反胃感</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 10:33 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814865404237053973" id="message-814865404237053973">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">&quot;打電話給羅倫&quot;</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:27 PM</span>

            <div class="chatlog__message " data-message-id="814866288919707698" id="message-814866288919707698">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">當你想要打給羅倫時，此時外邊的警笛聲四起，看來是支援到了
樓上傳來了陣陣腳步聲，最終來到了這間密室。

你看到以羅倫帶頭的一小隊輕型特警來到此地，他們所配戴的臂章上面寫著&quot;<strong>警察</strong>&quot;，這讓你感到無比安心（SAN+1）
羅倫「這裡真是讓人作嘔阿。納耶老弟！你有怎麼樣嗎？」羅倫擔心的看你</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 10:29 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:29 PM</span>

            <div class="chatlog__message " data-message-id="814866692190502923" id="message-814866692190502923">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「喔喔羅倫你來的正是時候，情況....相當複雜呢，等回局裡在慢慢跟你解釋吧」
緒方看了看周遭七零八落的屍體笑著說道

「還有幾個幫兇也跑了出去，你們應該有抓到他們吧」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814867384967364619" id="message-814867384967364619">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//稍微改了上面的描述</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:33 PM</span>

            <div class="chatlog__message " data-message-id="814867768708956173" id="message-814867768708956173">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「這部分...他們有強烈的攻擊意圖，我們當場擊斃了他們」羅倫擦了擦額頭上的汗漬
羅倫輕咳幾聲，呼叫他的小隊
　　「好了各位，馬上拉起封鎖線，通報局裡相關人員，他們到達後，你們就回去換裝喝杯咖啡吧...」</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:34 PM</span>

            <div class="chatlog__message " data-message-id="814867999235637268" id="message-814867999235637268">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「喔喔謝啦，還有我是在辦公室的桌上拍的那些照片」</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814868951783702528" id="message-814868951783702528">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">「從那邊來看證據應該也足夠了，整個案件就這樣破解啦」
破案件的喜悅加上整天監視所累積的疲勞以及最後驚險的戰鬥，種種原因加起來讓緒方的身體達到臨界值，他打了個大大的哈欠後便向羅倫道別
緒方決定先去洗漱一番再前往警局說明案件經過</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:42 PM</span>

            <div class="chatlog__message " data-message-id="814870113664499713" id="message-814870113664499713">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你帶著愉悅的心情開車回到了旅館，你覺得非常充實。
並且想著明早該怎麼對這次委託進行收尾。
所以花的點時間，把自己對於這次的事件的思緒，寫進了人生紀錄。
----------------------------------------------------------------</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 10:44 PM">(edited)</span>
                        </div>
                    </div>

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/814870113152139344/g_teborg_gothenburg-480174.png">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/814870113152139344/g_teborg_gothenburg-480174.png" alt="Image attachment" title="Image: g_teborg_gothenburg-480174.png (6.32 MB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
            <div class="chatlog__message " data-message-id="814870131280052294" id="message-814870131280052294">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">-------------------------------------------------
≣≣≣≣≣≣≣ ⇛入骨三分 劇終 ⇚ ≣≣≣≣≣≣≣≣
-------------------------------------------------</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:44 PM</span>

            <div class="chatlog__message " data-message-id="814870459534671872" id="message-814870459534671872">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">好诶</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814870495241175070" id="message-814870495241175070">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">去你的拉德福德</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814870546214682654" id="message-814870546214682654">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">嚐嚐我的沙漠之鷹啦</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:46 PM</span>

            <div class="chatlog__message " data-message-id="814870986377134081" id="message-814870986377134081">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">進行成長，然後整體推理有到味，1d10請</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:46 PM</span>

            <div class="chatlog__message " data-message-id="814871075166093352" id="message-814871075166093352">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">.dp 81 偵查</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:46 PM</span>

            <div class="chatlog__message " data-message-id="814871076051615776" id="message-814871076051615776">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
成長或增強檢定: 偵查
1D100 &gt; 81
41 → 失敗!
你的技能沒有變化!</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:46 PM</span>

            <div class="chatlog__message " data-message-id="814871118807826452" id="message-814871118807826452">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">.dp 70 潛行</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:46 PM</span>

            <div class="chatlog__message " data-message-id="814871119722184705" id="message-814871119722184705">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
成長或增強檢定: 潛行
1D100 &gt; 70
68 → 失敗!
你的技能沒有變化!</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:46 PM</span>

            <div class="chatlog__message " data-message-id="814871140412817450" id="message-814871140412817450">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">差一點</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814871176508604454" id="message-814871176508604454">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">.dp 62 手槍</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:47 PM</span>

            <div class="chatlog__message " data-message-id="814871177495183390" id="message-814871177495183390">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
成長或增強檢定: 手槍
1D100 &gt; 62
29 → 失敗!
你的技能沒有變化!</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:47 PM</span>

            <div class="chatlog__message " data-message-id="814871218230132778" id="message-814871218230132778">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">心理學有成功對吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:47 PM</span>

            <div class="chatlog__message " data-message-id="814871267261022278" id="message-814871267261022278">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">有</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:47 PM</span>

            <div class="chatlog__message " data-message-id="814871310840496138" id="message-814871310840496138">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">.dp 65 心理學</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:47 PM</span>

            <div class="chatlog__message " data-message-id="814871311892873247" id="message-814871311892873247">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
成長或增強檢定: 心理學
1D100 &gt; 65
35 → 失敗!
你的技能沒有變化!</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:47 PM</span>

            <div class="chatlog__message " data-message-id="814871324945547304" id="message-814871324945547304">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">1d10</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:47 PM</span>

            <div class="chatlog__message " data-message-id="814871325859905616" id="message-814871325859905616">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1d10：
2[2] = 2</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:47 PM</span>

            <div class="chatlog__message " data-message-id="814871342058831944" id="message-814871342058831944">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">啊啊啊啊</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814871383770923009" id="message-814871383770923009">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">一樣糟糕的骰運</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814871740441690155" id="message-814871740441690155">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">.dp 64 luk</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:49 PM</span>

            <div class="chatlog__message " data-message-id="814871741540859904" id="message-814871741540859904">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
成長或增強檢定: luk
1D100 &gt; 64
73 → 成功!
你的技能增加3點!</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:49 PM</span>

            <div class="chatlog__message " data-message-id="814871790321008720" id="message-814871790321008720">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><strong>結團獎勵：</strong>
1)取回大部分帶有蝕刻的骨骼 (san 1d8)
2)唐&#183;沃茨未死亡 (san 1d6)
3)無傷通關(額外san 1d3)</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:49 PM</span>

            <div class="chatlog__message " data-message-id="814871834373390386" id="message-814871834373390386">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">1d8+1d6+1d3</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 10:49 PM</span>

            <div class="chatlog__message " data-message-id="814871835426422854" id="message-814871835426422854">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1d8+1d6+1d3：
8[8]+3[3]+3[3] = 14</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:49 PM</span>

            <div class="chatlog__message " data-message-id="814871853457604618" id="message-814871853457604618">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">喔喔喔</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:50 PM</span>

            <div class="chatlog__message " data-message-id="814871901889363978" id="message-814871901889363978">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">好補</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:50 PM</span>

            <div class="chatlog__message " data-message-id="814871934940479588" id="message-814871934940479588">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">雖然我不缺san</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814871964392620063" id="message-814871964392620063">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">比較希望是技能成長啦</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814871975662321725" id="message-814871975662321725">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">不過也不錯</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:50 PM</span>

            <div class="chatlog__message " data-message-id="814872013138165820" id="message-814872013138165820">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有後日談</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814872205250527232" id="message-814872205250527232">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">大概就處理案件的後續，然後回歸平常的樣子</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:51 PM</span>

            <div class="chatlog__message " data-message-id="814872261227708459" id="message-814872261227708459">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">後日談當然是要回去挑戰老闆</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814872371667927121" id="message-814872371667927121">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">啊那個咒文呢</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:52 PM</span>

            <div class="chatlog__message " data-message-id="814872468467875860" id="message-814872468467875860">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><div class="pre pre--multiline nohighlight">新法術：知識庫祭獻術
消耗：5點 POW；1D6點理智值
施法用時：1小時
施法者取一張目標​​寫有目標名字，且曾被目標持有的紙張，置於食屍鬼的頭骨中燃燒。接著，施法者要將所得灰燼與人骨粉末混合調配，然後飲下。該法術花費5點POW，當“知識庫”死亡後，施法者能取回它。 （譯註：本法術將目標標記為“知識庫”）
“知識庫”的骨骼開始在知識即將消逝的那一刻存儲知識（例如當某本書的最後一冊副本毀於火中時，或是一起事件的最後一名目擊者死亡時）。在未來的數月中，“知識庫”會以隨機的間隔受到1D3點傷害（由守秘人自行決定，但不應超過每個模組一次）。 “知識庫”需進行體質檢定，檢定失敗時，他會永久性損失1點HP（現代醫學無法治愈）。
施法者可以通過向莫爾迪吉安祈禱（使用莫爾迪吉安聯絡術）將一個儲藏庫從其職責中解放（並將5點POW返還給施法者）。這種做法對“知識庫”幾乎總是致命的，因為“知識庫”會接受在每個死於這一剎那的人的一切秘密，並受到6D6點傷害。當施法者死去時，“知識庫”也會得到解放，儘管已造成的傷害和蝕刻都會保留。
舊印能夠阻止蝕刻，但是不能治愈已有的病情。
發現一個人的骨頭被刻上了收藏的標記會導致1/1D6點理智值損失。</div></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:52 PM</span>

            <div class="chatlog__message " data-message-id="814872546981183559" id="message-814872546981183559">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有一開始伊麗莎的保險箱上幹嘛刻著立刻逃跑</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:53 PM</span>

            <div class="chatlog__message " data-message-id="814872767504580658" id="message-814872767504580658">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">伊麗莎很早就發覺病症的詭異</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814872934060916768" id="message-814872934060916768">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">所以就留下保險箱的這些東西讓切爾能自保囉</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814872972145066015" id="message-814872972145066015">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">不過劇本這部分提及很少</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:54 PM</span>

            <div class="chatlog__message " data-message-id="814873054513463337" id="message-814873054513463337">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那切爾會被盯上嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814873160562245682" id="message-814873160562245682">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">照劇本來看他應該不會怎麼樣</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:55 PM</span>

            <div class="chatlog__message " data-message-id="814873208109006868" id="message-814873208109006868">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你如果在會見拉福德的地方提起切爾，就會有事</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814873246062477323" id="message-814873246062477323">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">當然這是我改的部分</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:55 PM</span>

            <div class="chatlog__message " data-message-id="814873261670137896" id="message-814873261670137896">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">喔喔</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:55 PM</span>

            <div class="chatlog__message " data-message-id="814873275791835136" id="message-814873275791835136">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">原本不會怎樣</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814873337825591347" id="message-814873337825591347">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">但總覺得會少點緊張感</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:55 PM</span>

            <div class="chatlog__message " data-message-id="814873364207763496" id="message-814873364207763496">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">害我還想說他也可能會遇害</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814873392552476722" id="message-814873392552476722">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">叫他住朋友家</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814873483053891705" id="message-814873483053891705">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有如果我讓拉德福德逃跑會怎麼樣嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:56 PM</span>

            <div class="chatlog__message " data-message-id="814873554440290384" id="message-814873554440290384">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那會有後續劇情，我翻一下</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:56 PM</span>

            <div class="chatlog__message " data-message-id="814873608546811964" id="message-814873608546811964">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">okok</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:57 PM</span>

            <div class="chatlog__message " data-message-id="814873870912716811" id="message-814873870912716811">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><strong>脅迫</strong>
如果調查員奪回了任何帶有蝕刻的骨骼，拉德福德將會通過一次性即付即用手機打給領頭的調查員。
她要求他們歸還骨頭，否則他們將“承受莫大的痛苦”。她留給調查員24小時時間，去取來骨頭並放到附近陵園中的她祖父的墳墓前。

如果調查員們沒能照她說的做，或是設法伏擊她，拉德福德會利用他們留下的名片，隨機對一名調查員（通過幸運檢定決定）施放知識庫祭獻術
出現在這名調查員身上的第一個跡像是骨痛，並會造成1D3點傷害。拉德福德會聯繫他們並再給他們一次機會。

如果調查員們還是沒能照做，她會釋放莫爾迪吉安聯絡術，這在讓受害的調查員從“知識庫”的身份解脫的同時會對他造成6D6點傷害，因為此刻所有將死之人所掌握的知識會猛然蝕刻到他的骨骼上。

在知曉這名調查員的死亡原因時，死去的調查員的同伴將損失0/1D6點理智值，而拉德福德會轉而對付下一名調查員……
如果調查員們照她說的做（很可能要從警方的證物櫃中把骨頭偷出來），拉德福德和剩下的收藏者將會現身取走骨頭，並迅速離開。而受術的調查員們依然是“知識庫“。</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814874107778695198" id="message-814874107778695198">

                    <div class="chatlog__attachment">
                        <div class="" onclick="">
                            <div class="">
                                    <a href="https://cdn.discordapp.com/attachments/799951359893307433/814874107497152533/aaa.JPG">
                                        <img class="chatlog__attachment-thumbnail" src="https://cdn.discordapp.com/attachments/799951359893307433/814874107497152533/aaa.JPG" alt="Image attachment" title="Image: aaa.JPG (132.35 KB)">
                                    </a>
                            </div>
                        </div>
                    </div>


            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:58 PM</span>

            <div class="chatlog__message " data-message-id="814874129873764372" id="message-814874129873764372">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">可是我沒有留下任何的名片</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814874187944558624" id="message-814874187944558624">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">差點就是搞到羅倫</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814874199712858133" id="message-814874199712858133">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">也沒用</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814874226572918836" id="message-814874226572918836">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">需要羅倫本人碰過</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 10:59 PM</span>

            <div class="chatlog__message " data-message-id="814874307783950336" id="message-814874307783950336">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">我本來應該讓拉福德一直要求要名片的</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814874338640789504" id="message-814874338640789504">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">但你名子改成羅倫就...算了</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 10:59 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 10:59 PM</span>

            <div class="chatlog__message " data-message-id="814874359801970728" id="message-814874359801970728">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">笑死</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814874373328470017" id="message-814874373328470017">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">好險</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814874427060912150" id="message-814874427060912150">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">劇本沒有寫的很清楚诶</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814874489573343263" id="message-814874489573343263">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">關於他是如何發現調查員想伏擊他</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814874633147908160" id="message-814874633147908160">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">6d6</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">26-Feb-21 11:00 PM</span>

            <div class="chatlog__message " data-message-id="814874634734403624" id="message-814874634734403624">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
6d6：
15[4+1+5+1+3+1] = 15</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:00 PM</span>

            <div class="chatlog__message " data-message-id="814874640261447800" id="message-814874640261447800">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">這整個劇本都是設定居多</span>

                                <span class="chatlog__edited-timestamp" title="27-Feb-21 12:19 AM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814874742393536592" id="message-814874742393536592">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">橋段細節；劇情走向那些要讓KP自己安排</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:01 PM</span>

            <div class="chatlog__message " data-message-id="814874774039035904" id="message-814874774039035904">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">慘餒</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814874782129586197" id="message-814874782129586197">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">辛苦啦</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:01 PM</span>

            <div class="chatlog__message " data-message-id="814874872101732412" id="message-814874872101732412">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">其實也滿好的啦，改起來比較方便</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:01 PM</span>

            <div class="chatlog__message " data-message-id="814874882391146516" id="message-814874882391146516">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">劇本可以學到莫爾迪吉安連絡術嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:02 PM</span>

            <div class="chatlog__message " data-message-id="814874934261841950" id="message-814874934261841950">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">不太行</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:02 PM</span>

            <div class="chatlog__message " data-message-id="814874962116345896" id="message-814874962116345896">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">是對啦，但事前準備多了一點</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 11:02 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814875012916969513" id="message-814875012916969513">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">所以我就算讓他在這邊逃走</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814875087924756581" id="message-814875087924756581">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">我也有機會生存下來並伏擊幹掉他對嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814875147135746058" id="message-814875147135746058">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有一團</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814875169053999145" id="message-814875169053999145">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">一團跑的如何</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:03 PM</span>

            <div class="chatlog__message " data-message-id="814875387376566272" id="message-814875387376566272">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">差點死在地下洞穴那邊，他執意要去追跑掉的食屍鬼</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:04 PM</span>

            <div class="chatlog__message " data-message-id="814875479667900466" id="message-814875479667900466">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">看到他們鑽進去我完全不想跟</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814875549616701531" id="message-814875549616701531">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">跟著進去應該會直接在出來那瞬間被攻擊吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:05 PM</span>

            <div class="chatlog__message " data-message-id="814875704259772439" id="message-814875704259772439">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你會被夾擊，但你很難做出反擊舉動</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:05 PM</span>

            <div class="chatlog__message " data-message-id="814875773286612992" id="message-814875773286612992">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">他這樣還能活下來也是很厲害诶</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814875825660231680" id="message-814875825660231680">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">他跟我一樣偷襲解決掉拉德福德嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:06 PM</span>

            <div class="chatlog__message " data-message-id="814876173532135513" id="message-814876173532135513">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">他是帶唐下去幹架，但拉福德跑掉了，後面接脅迫劇情</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:07 PM</span>

            <div class="chatlog__message " data-message-id="814876303894511616" id="message-814876303894511616">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">把唐帶過去是哪樣www</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814876347650277376" id="message-814876347650277376">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">後面如何</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814876394743398440" id="message-814876394743398440">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有他又是怎麼把唐帶走的</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:08 PM</span>

            <div class="chatlog__message " data-message-id="814876623106998274" id="message-814876623106998274">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">後面脅迫是乖乖照做，至於唐的話，他對他進行了兄弟喊話一夜</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 11:09 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814876882293751878" id="message-814876882293751878">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">然後他當時扮的很有趣，給他過個說服，我就讓他帶走了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:10 PM</span>

            <div class="chatlog__message " data-message-id="814876994096463952" id="message-814876994096463952">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">笑死</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814877054415536179" id="message-814877054415536179">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">他有留下名片嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814877091844980737" id="message-814877091844980737">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">不然怎麼乖乖的做了</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814877143003168838" id="message-814877143003168838">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有唐最後活下來了嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:11 PM</span>

            <div class="chatlog__message " data-message-id="814877196169773076" id="message-814877196169773076">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">有的，正好他是那種四處給名片的
然後唐重傷住院</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 11:11 PM">(edited)</span>
                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="10" title="10" src="https://cdn.discordapp.com/emojis/767441222846382130.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:11 PM</span>

            <div class="chatlog__message " data-message-id="814877303561256960" id="message-814877303561256960">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">唐跟著他一起爬過去被三隻食屍鬼攻擊嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814877396263501825" id="message-814877396263501825">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有3團能旁聽嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:12 PM</span>

            <div class="chatlog__message " data-message-id="814877474659237919" id="message-814877474659237919">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">我其實是用唐去勸說他，然而他執意要追</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814877523640844378" id="message-814877523640844378">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">3團問看看囉</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814877701298978847" id="message-814877701298978847">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">然後你沒跟那些3動食屍鬼打起來真可惜</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:13 PM</span>

            <div class="chatlog__message " data-message-id="814877782765076520" id="message-814877782765076520">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">很難打贏吧</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814877823193055322" id="message-814877823193055322">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">啊不就還好帶的是沙漠之鷹</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814877883302543400" id="message-814877883302543400">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">1團是怎麼打跑他們的啊</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814877906793660478" id="message-814877906793660478">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有5個人類诶</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:14 PM</span>

            <div class="chatlog__message " data-message-id="814877987803234334" id="message-814877987803234334">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">5個人類很好對付，只要殺掉他們其中一個就好</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 11:14 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:14 PM</span>

            <div class="chatlog__message " data-message-id="814878033063182387" id="message-814878033063182387">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">他們自然而然會逃跑嘛</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:14 PM</span>

            <div class="chatlog__message " data-message-id="814878034565529610" id="message-814878034565529610">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">他們會逃跑</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:14 PM</span>

            <div class="chatlog__message " data-message-id="814878107936227339" id="message-814878107936227339">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">看阿福被爆頭後他們就鳥獸散了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:14 PM</span>

            <div class="chatlog__message " data-message-id="814878186689003570" id="message-814878186689003570">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">是嗲</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:15 PM</span>

            <div class="chatlog__message " data-message-id="814878295333929005" id="message-814878295333929005">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">唐也有帶槍嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814878369539817511" id="message-814878369539817511">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">即便兩個人有槍應該還是很難打贏3隻3動食屍鬼吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:16 PM</span>

            <div class="chatlog__message " data-message-id="814878688566575164" id="message-814878688566575164">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">所以他們能撐住真的是奇蹟，我還準備好唐犧牲讓PC逃跑橋段了</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 11:17 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:17 PM</span>

            <div class="chatlog__message " data-message-id="814878765208698911" id="message-814878765208698911">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那其實他們也挺幸運的</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814878797030621194" id="message-814878797030621194">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有這個本真的難</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814878824697036800" id="message-814878824697036800">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">很容易BE</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:18 PM</span>

            <div class="chatlog__message " data-message-id="814878951083343872" id="message-814878951083343872">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">主要是沒把你們當新手看，原汁原味來跑</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:18 PM</span>

            <div class="chatlog__message " data-message-id="814878977914175538" id="message-814878977914175538">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">劇本是限定1人嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814879033389088790" id="message-814879033389088790">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">你給我的部分有提及到複數的調查員</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:18 PM</span>

            <div class="chatlog__message " data-message-id="814879050240622632" id="message-814879050240622632">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">可多人，但我認為1人也不錯</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:18 PM</span>

            <div class="chatlog__message " data-message-id="814879069928947742" id="message-814879069928947742">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">對啦</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814879112359051264" id="message-814879112359051264">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有多人到最後可能也沒那麼難</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:19 PM</span>

            <div class="chatlog__message " data-message-id="814879211575181322" id="message-814879211575181322">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">噢，他有提及每多一人，要加1食屍鬼</span>

                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="10" title="10" src="https://cdn.discordapp.com/emojis/767441222846382130.png">
                                <span class="chatlog__reaction-count">2</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:19 PM</span>

            <div class="chatlog__message " data-message-id="814879254461808700" id="message-814879254461808700">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">增加難度啊</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814879315517898833" id="message-814879315517898833">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">啊不就還好我最後恐嚇成功了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:20 PM</span>

            <div class="chatlog__message " data-message-id="814879505155096666" id="message-814879505155096666">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">我也想好失敗後戰鬥輪又輸的劇情，大致上就是讓骸骨被拿走</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814879560045690940" id="message-814879560045690940">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">拿不到結團獎勵</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:20 PM</span>

            <div class="chatlog__message " data-message-id="814879576953978921" id="message-814879576953978921">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">直接BE</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:20 PM</span>

            <div class="chatlog__message " data-message-id="814879627994464266" id="message-814879627994464266">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">有個條件是不能重傷</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:20 PM</span>

            <div class="chatlog__message " data-message-id="814879643937144862" id="message-814879643937144862">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">我等等直接跑去問3團的能不能旁聽好了</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:20 PM</span>

            <div class="chatlog__message " data-message-id="814879672743362661" id="message-814879672743362661">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">k</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:20 PM</span>

            <div class="chatlog__message " data-message-id="814879677683597342" id="message-814879677683597342">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">什麼條件</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814879718569541642" id="message-814879718569541642">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">還有後日談一定要狠狠的擊敗老闆</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814879763339542569" id="message-814879763339542569">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">後日談屬性能夠增加多少啊</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:21 PM</span>

            <div class="chatlog__message " data-message-id="814879769916473374" id="message-814879769916473374">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">就是不能被標上重傷狀態</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:21 PM</span>

            <div class="chatlog__message " data-message-id="814879825780146266" id="message-814879825780146266">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">結團獎勵嗎</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814879842427600907" id="message-814879842427600907">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">太苛刻了吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:21 PM</span>

            <div class="chatlog__message " data-message-id="814879932110602280" id="message-814879932110602280">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">我是指BE</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814880001412300801" id="message-814880001412300801">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">重傷狀態下被打倒BE
輕傷拿不到結團獎勵</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 11:22 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:22 PM</span>

            <div class="chatlog__message " data-message-id="814880183139958844" id="message-814880183139958844">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">喔喔喔</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814880214256582656" id="message-814880214256582656">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那最後的問題</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814880249816023061" id="message-814880249816023061">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">劇本一直有提到殯儀館快被收購</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814880311208837218" id="message-814880311208837218">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">我想了很久但完全沒有任何有關的線索</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:24 PM</span>

            <div class="chatlog__message " data-message-id="814880581963481139" id="message-814880581963481139">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">吸引你們盡快去殯儀館調查，還有稍微可以誤導調查員對拉福德的觀感。</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814880645024710686" id="message-814880645024710686">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">如果你提到收購案</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:24 PM</span>

            <div class="chatlog__message " data-message-id="814880694056517712" id="message-814880694056517712">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">引起同情心之類的</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:25 PM</span>

            <div class="chatlog__message " data-message-id="814880765056909333" id="message-814880765056909333">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">4d</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:25 PM</span>

            <div class="chatlog__message " data-message-id="814880859030945833" id="message-814880859030945833">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">結果我從醫院路線一直調查其他病患</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814880879646081075" id="message-814880879646081075">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">到最後才去殯儀館</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814880924956885072" id="message-814880924956885072">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">對他們的不信任感up up up</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814881036076187669" id="message-814881036076187669">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">如果放任不管唐會在三天後被幹掉對吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:26 PM</span>

            <div class="chatlog__message " data-message-id="814881106499076126" id="message-814881106499076126">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">沒錯，最後你來到地下室會看到他的屍骸</span>

                        </div>
                    </div>



                    <div class="chatlog__reactions">
                            <div class="chatlog__reaction">
                                <img class="emoji emoji--small" alt="10" title="10" src="https://cdn.discordapp.com/emojis/767441222846382130.png">
                                <span class="chatlog__reaction-count">1</span>
                            </div>
                    </div>
            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:26 PM</span>

            <div class="chatlog__message " data-message-id="814881165806665830" id="message-814881165806665830">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">但我在第二天就解決了</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814881200723853323" id="message-814881200723853323">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">三天其實有點太長了</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814881251554492436" id="message-814881251554492436">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">劇本能調查的也就那麼多</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:27 PM</span>

            <div class="chatlog__message " data-message-id="814881251848618085" id="message-814881251848618085">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那是你<img class="emoji " alt="11" title="11" src="https://cdn.discordapp.com/emojis/767442378101096488.png"></span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:27 PM</span>

            <div class="chatlog__message " data-message-id="814881270009430016" id="message-814881270009430016">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><img class="emoji emoji--large" alt="11" title="11" src="https://cdn.discordapp.com/emojis/767442378101096488.png"></span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814881292051152936" id="message-814881292051152936">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">好吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:27 PM</span>

            <div class="chatlog__message " data-message-id="814881324430786601" id="message-814881324430786601">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">有人真就搞好久</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:27 PM</span>

            <div class="chatlog__message " data-message-id="814881347662905345" id="message-814881347662905345">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">1團嗎</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:27 PM</span>

            <div class="chatlog__message " data-message-id="814881402268155914" id="message-814881402268155914">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">不是，是別的地方</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">26-Feb-21 11:27 PM</span>

            <div class="chatlog__message " data-message-id="814881420472221776" id="message-814881420472221776">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">喔喔</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814881525002797058" id="message-814881525002797058">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">那我想應該沒有其他問題了</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814881544182300703" id="message-814881544182300703">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">感謝kp</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814881574419300362" id="message-814881574419300362">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">這個本其實挺有趣的</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="814881598453317662" id="message-814881598453317662">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">推理成分不錯</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">26-Feb-21 11:29 PM</span>

            <div class="chatlog__message " data-message-id="814881813578907689" id="message-814881813578907689">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">好的，恭喜跑完這個小推理劇本
那後面就接後日談吧
----------------------------------------------------
≣≣≣≣≣≣≣ ⇛入骨三分 後日談 ⇚ ≣≣≣≣≣≣≣≣
----------------------------------------------------</span>

                                <span class="chatlog__edited-timestamp" title="26-Feb-21 11:29 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">27-Feb-21 04:30 PM</span>

            <div class="chatlog__message " data-message-id="815138881971552266" id="message-815138881971552266">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">自從在日本的詭異車站碰上了食屍鬼後緒方時不時的會夢回當時的場景，雖然自己平安無事的離開了那裡但卻有種並沒能真正離開的感覺
這次的事件讓他再度想起那件事，與上次不同的是這次單憑自己做為偵探的口才與過人的膽量完美解決這起案件，對於車站事件也不在那麼耿耿於懷了
在回到旅館上床休息時，緒方有個預感，雖然只是個硬梆梆的廉價床鋪，不過這次應該能享受一次好的睡眠了，至少應該不會夢到一些奇怪的東西
隔天聽著自己設下避免睡過頭的錄音鬧鐘，在簡單的洗漱後緒方前往警局並將整個案情交代清楚，也傳訊息告訴了切爾案件真相，這趟美國之旅雖然忙碌不過還挺有趣的，也多虧這起案件讓緒方認識了羅倫、切爾小弟與餐廳老闆...<strong>餐廳老闆！！</strong>在回國前一定要與他做個了斷，否則就會像車站那次一樣久久無法釋懷
在處理完所有的事後一位男子踏入了餐館裡，明明是在用餐時段但這裡的客源一樣冷清，緒方坐上了與第一次相同的位置並朝吧檯揮了揮手
「老闆我要來個老樣子......老闆？」遲遲等不到回應的緒方注意到平常該佇立在那的中年男子今天卻不在，職業病上身的緒方立刻以現場的蹤跡來判斷老闆的去向
最後很成功的聽到了一聲呻吟，隨著聲音的來源他找到了老闆和插在他身上的廚刀，在通報了救護車並做了一點應急處理後緒方明白，與老闆的對決將要延後了
這趟美國之旅依然沒有結束，不論接下來是食屍鬼或其他的生物都儘管放馬過來吧，他將要釐清事情的真相並在公平的狀況下擊敗老闆</span>

                                <span class="chatlog__edited-timestamp" title="27-Feb-21 06:00 PM">(edited)</span>
                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="815139074049572880" id="message-815139074049572880">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//想要成長急救跟意志</span>

                                <span class="chatlog__edited-timestamp" title="27-Feb-21 04:31 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">27-Feb-21 05:23 PM</span>

            <div class="chatlog__message " data-message-id="815152027159232572" id="message-815152027159232572">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//急救成長1d10
//意志成長1d5 <span class="spoiler spoiler--hidden" onclick="showSpoiler(event, this)"><span class="spoiler-text">老闆被捅我笑了</span></span></span>

                                <span class="chatlog__edited-timestamp" title="27-Feb-21 05:24 PM">(edited)</span>
                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">27-Feb-21 05:53 PM</span>

            <div class="chatlog__message " data-message-id="815159597181960222" id="message-815159597181960222">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">//我實在是想不到勝過老闆的方法</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="815159609463537684" id="message-815159609463537684">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">1D10</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">27-Feb-21 05:53 PM</span>

            <div class="chatlog__message " data-message-id="815159610443825153" id="message-815159610443825153">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D10：
1[1] = 1</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">27-Feb-21 05:53 PM</span>

            <div class="chatlog__message " data-message-id="815159615952125993" id="message-815159615952125993">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">1D5</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/544462904037081138/826b76664e4c68ff4d29076c48a02bed.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="HKTRPG#4989" data-user-id="544462904037081138" style="color: rgb(184,0,0)">HKTRPG</span>

            <span class="chatlog__bot-tag">BOT</span>

        <span class="chatlog__timestamp">27-Feb-21 05:53 PM</span>

            <div class="chatlog__message " data-message-id="815159616739999745" id="message-815159616739999745">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace"><span class="mention" title="CoCoNa#1775">@布連．艾考特</span>
1D5：
5[5] = 5</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">27-Feb-21 05:53 PM</span>

            <div class="chatlog__message " data-message-id="815159650089041970" id="message-815159650089041970">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">開什麼玩笑啦</span>

                        </div>
                    </div>



            </div>
            <div class="chatlog__message " data-message-id="815159684980801546" id="message-815159684980801546">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">每次1D10都不超過3诶</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/336340347917697024/114f44bc9927c93d398e7c3529789dde.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="CoCoNa#1775" data-user-id="336340347917697024" style="color: rgb(17,128,106)">布連．艾考特</span>


        <span class="chatlog__timestamp">01-Mar-21 06:42 PM</span>

            <div class="chatlog__message " data-message-id="815896794319683584" id="message-815896794319683584">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">問一下我的恐嚇應該不能成長對吧</span>

                        </div>
                    </div>



            </div>
    </div>
</div>


<div class="chatlog__message-group">
    <div class="chatlog__author-avatar-container">
        <img class="chatlog__author-avatar" src="https://cdn.discordapp.com/avatars/541675771727577118/fa8b8383cf59debe7f56dd2dd3babcff.png" alt="Avatar">
    </div>
    <div class="chatlog__messages">
        <span class="chatlog__author-name" title="艾鷲斯AIjius#9612" data-user-id="541675771727577118" style="color: rgb(52,152,219)">艾鷲斯AIjius</span>


        <span class="chatlog__timestamp">01-Mar-21 06:52 PM</span>

            <div class="chatlog__message " data-message-id="815899368619245589" id="message-815899368619245589">
                    <div class="chatlog__content">
                        <div class="markdown">
                            <span class="preserve-whitespace">對的，獎勵骰不計算成長</span>

                        </div>
                    </div>



            </div>
    </div>
</div>

</div>

<div class="postamble">
    <div class="postamble__entry">Exported 878 message(s)</div>
</div>

</body>
</html>

