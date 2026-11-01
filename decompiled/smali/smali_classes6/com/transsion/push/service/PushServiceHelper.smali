.class public final Lcom/transsion/push/service/PushServiceHelper;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/push/service/PushServiceHelper;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/push/service/PushServiceHelper;->k(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/app/NotificationManager;)Ljava/util/List;
    .locals 7

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    const-string v6, "extra_from_tpush_noti"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static c(Lcom/transsion/push/bean/PushMessage;Landroid/app/NotificationManager;)V
    .locals 6

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/push/bean/PushMessage;->groupMaxCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_2

    iget-object p0, p0, Lcom/transsion/push/bean/PushMessage;->groupId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/push/service/PushServiceHelper;->b(Ljava/lang/String;Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {p0}, Lcom/transsion/push/service/PushServiceHelper;->l(Ljava/util/List;)V

    :goto_1
    if-gt v0, v2, :cond_2

    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    sget-object v3, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle max limit message fail, e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    return-void
.end method

.method public static d()Z
    .locals 3

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private static e()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->isReported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->syncActive()V

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, " active reporting"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle sync active exception,e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static f(Landroid/content/Intent;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "service_type"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushJobIntentService ---> onHandleWork, type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "force_update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "token"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "init"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "sync_config"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "service type error"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    invoke-static {p0}, Lcom/transsion/push/service/PushServiceHelper;->i(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->e()V

    goto :goto_1

    :pswitch_2
    invoke-static {p0}, Lcom/transsion/push/service/PushServiceHelper;->j(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    invoke-static {p0}, Lcom/transsion/push/service/PushServiceHelper;->h(Landroid/content/Intent;)V

    :goto_1
    :pswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7461ae9a -> :sswitch_4
        0x316510 -> :sswitch_3
        0x696b9f9 -> :sswitch_2
        0x2a639c9d -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static g()V
    .locals 5

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackActiveSyncProcess()V

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "onHandleSyncActive"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "onHandleSyncActive force update"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->e()V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "tpms sync"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/push/utils/u;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/push/utils/u;->c(Landroid/content/Context;)Z

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->saveTpmsReportTime(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/push/utils/u;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->syncActive()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle sync active exception,e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private static h(Landroid/content/Intent;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->g()V

    return-void
.end method

.method private static i(Landroid/content/Intent;)V
    .locals 9

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "onHandleTargetMessage--->"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object p0

    const-string v2, "intent_null"

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "onHandleTargetMessage---> intent is null"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/transsion/push/utils/PushUtils;->i(Landroid/content/Intent;)Lcom/transsion/push/bean/PushMessage;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object p0

    const-string v2, "msg_null"

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "onHandleTargetMessage---> message is null"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/push/utils/v;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    const-string p0, "self_destroy"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "push self-destroying"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/push/utils/PushUtils;->a(Lcom/transsion/push/bean/PushMessage;I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    const-string p0, "check_fail"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "onHandleTargetMessage---> checkMessage return "

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {p0}, Lcom/transsion/push/utils/PushUtils;->u(Lcom/transsion/push/bean/PushMessage;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    const-string v3, "msg_retreat"

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleTargetMessage---> retraceMessage return, retrace msgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->retraceMsgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {p0}, Lcom/transsion/push/utils/PushUtils;->z(Lcom/transsion/push/bean/PushMessage;)V

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v1

    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;

    const-string v7, "success"

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackTarget(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/PushMessage;)V

    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    invoke-static {v1, v2}, Lcom/transsion/push/utils/PushUtils;->y(J)V

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleTargetMessage---> type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget v1, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    if-eq v1, v0, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_5

    const/4 v0, 0x5

    if-eq v1, v0, :cond_6

    const/4 v0, 0x6

    if-eq v1, v0, :cond_6

    const/4 p0, 0x7

    if-eq v1, p0, :cond_c

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "Display message, message type is not supported"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {p0}, Lcom/transsion/push/service/PushServiceHelper;->m(Lcom/transsion/push/bean/PushMessage;)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/transsion/push/bean/PushMessage;->sdkShow:I

    if-nez v0, :cond_8

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "sdkShow no show"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget v3, p0, Lcom/transsion/push/bean/PushMessage;->priority:I

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/transsion/push/TPushListener;->onPushReceive(JLcom/transsion/push/bean/PushMessage;I)V

    :cond_7
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    const-string p0, "sdk_show_fail"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    return-void

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message ignoreExpire? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->ignoreExpire:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTimeAutomatic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->d()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message schedule time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/push/bean/PushMessage;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message delay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/push/bean/PushMessage;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message ttl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/push/bean/PushMessage;->getMsgTtl()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget v2, p0, Lcom/transsion/push/bean/PushMessage;->ignoreExpire:I

    if-nez v2, :cond_9

    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v3, "message expiration check"

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->d()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/transsion/push/bean/PushMessage;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/push/bean/PushMessage;->getMsgTtl()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "message expired, no show"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v2

    iget-wide v3, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget v5, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    iget-object v6, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v8, 0x3e7

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_9
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getNotificationSwitch()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    const-string p0, "noti_off"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "notification switch is off, do not show noti"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void

    :cond_a
    invoke-static {p0}, Lcom/transsion/push/utils/BitmapDownloadUtils;->a(Lcom/transsion/push/bean/PushMessage;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/transsion/push/service/PushServiceHelper$a;

    invoke-direct {v0}, Lcom/transsion/push/service/PushServiceHelper$a;-><init>()V

    invoke-static {p0, v0}, Lcom/transsion/push/utils/BitmapDownloadUtils;->b(Lcom/transsion/push/bean/PushMessage;Lcom/transsion/push/utils/BitmapDownloadUtils$a;)V

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/push/service/PushServiceHelper;->k(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V

    :cond_c
    :goto_0
    return-void
.end method

.method private static j(Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/transsion/push/tracker/Tracker;->trackTokenUpdateProcess(Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "TOKEN"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "Initialize token to empty"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/transsion/push/service/PushServiceHelper;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialize push_token\uff0c packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/push/utils/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", token\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v1

    const-string v2, "push_token"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v1

    const-string v2, "push_client_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object p0

    const-string v1, "same"

    invoke-virtual {p0, v1}, Lcom/transsion/push/tracker/Tracker;->trackTokenUpdateProcess(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "token does not need to report without modification"

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->w()V

    const-string p0, "sp_push"

    invoke-static {p0}, Lcom/transsion/core/utils/f;->e(Ljava/lang/String;)Lcom/transsion/core/utils/f;

    move-result-object p0

    const-string v1, "update_token_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v1

    const-string v2, "update"

    invoke-virtual {v1, v2}, Lcom/transsion/push/tracker/Tracker;->trackTokenUpdateProcess(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "token updated, do network request"

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "sp_push"

    invoke-static {v1}, Lcom/transsion/core/utils/f;->e(Ljava/lang/String;)Lcom/transsion/core/utils/f;

    move-result-object v1

    const-string v2, "update_token_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/transsion/push/config/PushRepository;->updateNewToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/push/utils/u;->b(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :try_start_5
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catch_2
    return-void
.end method

.method private static k(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V
    .locals 3

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display messages\uff0cmessage\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/transsion/push/utils/z;->g(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification show exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static l(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lcom/transsion/push/service/PushServiceHelper$2;

    invoke-direct {v0}, Lcom/transsion/push/service/PushServiceHelper$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static declared-synchronized m(Lcom/transsion/push/bean/PushMessage;)V
    .locals 5

    const-class v0, Lcom/transsion/push/service/PushServiceHelper;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/push/bean/PushMessage;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/core/utils/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/push/bean/PushMessage;->packageName:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/transsion/push/bean/PushMessage;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/core/utils/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    move-result-object v1

    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    iget-object v4, p0, Lcom/transsion/push/bean/PushMessage;->transData:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/push/bean/PushMessage;->priority:I

    invoke-interface {v1, v2, v3, v4, p0}, Lcom/transsion/push/TPushListener;->onMessageReceive(JLjava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string p0, "PUSH_"

    const-string v1, "tpush listener is not registered"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    :try_start_2
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transmitMessage---> e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
