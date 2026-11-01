.class public Lcom/transsion/push/utils/z;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/transsion/push/bean/PushMessage;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/push/bean/PushMessage;->notiType:I

    iget v1, p0, Lcom/transsion/push/bean/PushMessage;->layoutStyleId:I

    invoke-static {v0, v1}, Lcom/transsion/push/utils/d;->d(II)Lcom/transsion/push/bean/PushNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/transsion/push/bean/PushNotification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iput-object v1, p0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/pushui/activity/TransparentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message"

    invoke-static {p1}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_noti_click"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->hashCode()I

    move-result p1

    const/high16 v1, 0x4000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getTestEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://test-api.twibida.com/tcm/v2/instance/"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://devtest-api.twibida.com/tcm/v2/instance/"

    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "https://api.twibida.com/tcm/v2/instance/"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gslb domain is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "gslb domain is empty"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static f([Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public static g(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V
    .locals 12

    :try_start_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v1

    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/transsion/push/utils/NotificationAssistUtils;->isOpenNotification(Landroid/content/Context;)Z

    move-result v9

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v1

    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    const/4 v7, 0x3

    move v6, v9

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/transsion/push/utils/z;->a(Lcom/transsion/push/bean/PushMessage;)V

    invoke-static {v0, p0}, Lcom/transsion/push/utils/r;->e(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;)Landroid/app/Notification$Builder;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v1

    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    const/4 v7, 0x4

    move v6, v9

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    return-void

    :cond_2
    invoke-static {v0, p0, p1, v2}, Lcom/transsion/push/utils/z;->j(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v1

    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    const/4 v7, 0x5

    move v6, v9

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    return-void

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "twibida"

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_4
    iget-object v3, p0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/transsion/push/bean/PushMessage;->channelName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "cloud messaging"

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/transsion/push/bean/PushMessage;->channelName:Ljava/lang/String;

    :goto_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    const/4 v7, 0x0

    if-lt v5, v6, :cond_9

    iget-object v6, p0, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v8, "1"

    const/4 v10, 0x1

    if-nez v6, :cond_6

    :try_start_2
    iget-object v6, p0, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v3, "headup"

    const-string v4, "head up messaging"

    sget-object v6, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v11, "float notice"

    invoke-virtual {v6, v11}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    move v6, v10

    goto :goto_3

    :cond_6
    move v6, v7

    :goto_3
    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    if-eqz v6, :cond_7

    const/4 v11, 0x4

    goto :goto_4

    :cond_7
    const/4 v11, 0x3

    :goto_4
    invoke-static {v3, v4, v11}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v3

    if-eqz v6, :cond_8

    invoke-static {v3, v10}, Lcom/transsion/mpush/core/renderer/e;->a(Landroid/app/NotificationChannel;Z)V

    invoke-static {v3, v10}, Lcom/transsion/mpush/core/renderer/f;->a(Landroid/app/NotificationChannel;I)V

    const/16 v4, 0x24

    if-lt v5, v4, :cond_8

    iget-object v4, p0, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "float_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_8
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message.channelId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->channelName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_9
    invoke-static {p0, v1}, Lcom/transsion/push/service/PushServiceHelper;->c(Lcom/transsion/push/bean/PushMessage;Landroid/app/NotificationManager;)V

    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    long-to-int v2, v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v1

    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    if-eqz v9, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x6

    move v7, v0

    :goto_5
    move v6, v9

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget-object v3, p0, Lcom/transsion/push/bean/PushMessage;->notiOpenContent:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/push/TPushListener;->onNotificationShow(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :goto_6
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v1

    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    const/4 v7, 0x7

    move v6, v9

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    :cond_b
    :goto_7
    return-void
.end method

.method public static h(Lcom/transsion/push/bean/PushRequest$ReportContentData;)V
    .locals 0

    return-void
.end method

.method private static i(Landroid/app/Notification$Builder;Lcom/transsion/push/bean/PushMessage;)V
    .locals 1

    :try_start_0
    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->iconColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->iconColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget v0, p1, Lcom/transsion/push/bean/PushMessage;->notiType:I

    iget p1, p1, Lcom/transsion/push/bean/PushMessage;->layoutStyleId:I

    invoke-static {v0, p1}, Lcom/transsion/push/utils/d;->d(II)Lcom/transsion/push/bean/PushNotification;

    move-result-object p1

    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/push/bean/PushNotification;->getIconColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/push/bean/PushNotification;->getIconColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public static j(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v1, p1, Lcom/transsion/push/bean/PushMessage;->notiType:I

    iget v2, p1, Lcom/transsion/push/bean/PushMessage;->layoutStyleId:I

    invoke-static {v1, v2}, Lcom/transsion/push/utils/d;->d(II)Lcom/transsion/push/bean/PushNotification;

    move-result-object v1

    if-eqz p2, :cond_1

    iget-object v2, p1, Lcom/transsion/push/bean/PushMessage;->notiSmallIcon:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiSmallIcon:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/push/bean/PushNotification;->getSmallIcon()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/transsion/push/bean/PushNotification;->getSmallIcon()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_2
    sget v1, Lcom/transsion/push/R$drawable;->tpush_notify_icon:I

    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_0
    if-eqz p2, :cond_3

    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiOptionalIcon:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiOptionalIcon:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :cond_3
    invoke-static {p3, p1}, Lcom/transsion/push/utils/z;->i(Landroid/app/Notification$Builder;Lcom/transsion/push/bean/PushMessage;)V

    iget v1, p1, Lcom/transsion/push/bean/PushMessage;->notiType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget p0, p1, Lcom/transsion/push/bean/PushMessage;->notiExType:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    new-instance p0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object p2, p1, Lcom/transsion/push/bean/PushMessage;->notiTxtEx:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    if-ne p0, v1, :cond_5

    if-eqz p2, :cond_5

    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiImgEx:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiImgEx:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    new-instance p0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiImgEx:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_5
    :goto_1
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/push/utils/z;->b(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/push/utils/d;->e(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object v2, p1, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p1, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_8

    invoke-static {p3, v1}, Lcom/transsion/push/utils/x;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    goto :goto_2

    :cond_8
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :goto_2
    const/16 v1, 0x1f

    if-lt v2, v1, :cond_9

    invoke-static {}, Lcom/transsion/push/utils/w;->a()Landroid/app/Notification$DecoratedCustomViewStyle;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/push/utils/d;->b(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Z)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/push/utils/y;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_9
    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_3
    return-object v0
.end method
