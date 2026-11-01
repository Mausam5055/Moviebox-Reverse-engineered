.class public Lcom/transsion/push/broadcast/FCMMessageReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Lcom/transsion/push/bean/PushMessage;)Z
    .locals 4

    iget-wide v0, p1, Lcom/transsion/push/bean/PushMessage;->messageId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p1, Lcom/transsion/push/bean/PushMessage;->type:I

    if-lez v0, :cond_0

    iget-object p1, p1, Lcom/transsion/push/bean/PushMessage;->pkgId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Landroid/os/Bundle;)Lcom/transsion/push/bean/PushMessage;
    .locals 3

    new-instance v0, Lcom/transsion/push/bean/PushMessage;

    invoke-direct {v0}, Lcom/transsion/push/bean/PushMessage;-><init>()V

    const-string v1, "tcm_msg_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->e(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    const-string v1, "tcm_msg_type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->type:I

    const-string v1, "tcm_msg_pkg"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->pkgId:Ljava/lang/String;

    const-string v1, "tcm_msg_pkgname"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->packageName:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, ""

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;

    :goto_0
    const-string v1, "noti_type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->notiType:I

    const-string v1, "noti_ex_type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->notiExType:I

    const-string v1, "tcm_msg_ttl"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->msgTtl:I

    const-string v1, "noti_ignore_expire"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->ignoreExpire:I

    const-string v1, "noti_group_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->groupId:Ljava/lang/String;

    const-string v1, "noti_group_max_count"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->groupMaxCount:Ljava/lang/String;

    const-string v1, "noti_title"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    const-string v1, "noti_desc"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    const-string v1, "noti_img"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiImg:Ljava/lang/String;

    const-string v1, "noti_icon"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    const-string v1, "noti_btn"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    const-string v1, "noti_img_ex"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiImgEx:Ljava/lang/String;

    const-string v1, "noti_title_ex"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiTitleEx:Ljava/lang/String;

    const-string v1, "noti_txt_ex"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiTxtEx:Ljava/lang/String;

    const-string v1, "noti_open_type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->notiOpenType:I

    const-string v1, "noti_open_content"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiOpenContent:Ljava/lang/String;

    const-string v1, "trans_data"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->transData:Ljava/lang/String;

    const-string v1, "tcm_msg_timestamp"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    const-string v1, "noti_small_icon"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiSmallIcon:Ljava/lang/String;

    const-string v1, "display_policy"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->displayPolicy:I

    const-string v1, "app_name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->appName:Ljava/lang/String;

    const-string v1, "noti_layout_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->layoutStyleId:I

    const-string v1, "noti_channel_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    const-string v1, "noti_channel_name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->channelName:Ljava/lang/String;

    const-string v1, "noti_small_icon_color"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->iconColor:Ljava/lang/String;

    const-string v1, "noti_imp_urls"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->impUrlList:Ljava/lang/String;

    const-string v1, "noti_click_urls"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->clickUrlList:Ljava/lang/String;

    const-string v1, "noti_is_headsup"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->isHeadsUp:I

    const-string v1, "tcm_target_msg_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->e(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/push/bean/PushMessage;->retraceMsgId:J

    const-string v1, "noti_btn_ex"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiExtensionBtn:Ljava/lang/String;

    const-string v1, "noti_btn_background_color"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiBtnBgColor:Ljava/lang/String;

    const-string v1, "noti_btn_word_color"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiBtnTxtColor:Ljava/lang/String;

    const-string v1, "noti_optional_icon"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->notiOptionalIcon:Ljava/lang/String;

    const-string v1, "tcm_msg_priority"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->priority:I

    const-string v1, "tcm_msg_sdkshow"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/push/utils/e0;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/transsion/push/bean/PushMessage;->sdkShow:I

    const-string v1, "noti_float"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    const-string v1, "tcm_material_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->materialId:Ljava/lang/String;

    const-string v1, "tcm_seq"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->seq:Ljava/lang/String;

    const-string v1, "tcm_source_type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->sourceType:Ljava/lang/String;

    const-string v1, "tcm_schedule_date"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/push/bean/PushMessage;->scheduleDate:Ljava/lang/String;

    const-string v1, "tcm_tag"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/push/bean/PushMessage;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/push/PushManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackBroadcastInfoeye()V

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Lcom/transsion/push/broadcast/FCMMessageReceiver;->c(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackBroadcastGcmInfoeye()V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/push/broadcast/FCMMessageReceiver;->b(Landroid/os/Bundle;)Lcom/transsion/push/bean/PushMessage;

    move-result-object p2

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiving FCM messages packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/transsion/push/broadcast/FCMMessageReceiver;->a(Lcom/transsion/push/bean/PushMessage;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    :cond_4
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v2

    iget-wide v3, p2, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget v5, p2, Lcom/transsion/push/bean/PushMessage;->type:I

    iget-object v6, p2, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    const-string v7, "all"

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackMessage(JILjava/lang/String;Ljava/lang/String;I)V

    :try_start_0
    invoke-static {p2}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiving FCM messages to messageContent fail, e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "service_type"

    invoke-virtual {v0, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/transsion/push/utils/ServiceUtils;->startTargetIntentService(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqk/a;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/push/broadcast/FCMMessageReceiver;->d(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
