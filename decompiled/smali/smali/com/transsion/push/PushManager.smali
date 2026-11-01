.class public final Lcom/transsion/push/PushManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/PushManager$c;
    }
.end annotation


# static fields
.field public static final SHOW_STATUS_FAIL_NOTI_CLOSE:I = 0x6

.field public static final SHOW_STATUS_FAIL_PRIORITY:I = 0xc

.field public static final SHOW_STATUS_FAIL_REPEAT:I = 0xb

.field public static final SHOW_STATUS_SUCCESS:I

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Z


# instance fields
.field private a:Lcom/transsion/push/broadcast/PushBroadcastReceiver;

.field private b:Lcom/transsion/push/TPushListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/push/PushManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/push/PushManager$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/push/PushManager;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private b()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/push/PushManager;->a:Lcom/transsion/push/broadcast/PushBroadcastReceiver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/transsion/push/broadcast/PushBroadcastReceiver;

    invoke-direct {v1}, Lcom/transsion/push/broadcast/PushBroadcastReceiver;-><init>()V

    iput-object v1, p0, Lcom/transsion/push/PushManager;->a:Lcom/transsion/push/broadcast/PushBroadcastReceiver;

    :cond_1
    :try_start_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/push/PushManager;->a:Lcom/transsion/push/broadcast/PushBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerReceiver fail, e:"

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

.method public static getInstance()Lcom/transsion/push/PushManager;
    .locals 1

    invoke-static {}, Lcom/transsion/push/PushManager$c;->a()Lcom/transsion/push/PushManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCustomNotification(Lcom/transsion/push/bean/PushNotification;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/transsion/push/utils/d;->a(Lcom/transsion/push/bean/PushNotification;)V

    return-void
.end method

.method public getClientId(Lcom/transsion/push/IClientIdListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/push/config/PushRepository;->getClientId(Lcom/transsion/push/IClientIdListener;)V

    return-void
.end method

.method public getDebug()Z
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->o()Z

    move-result v0

    return v0
.end method

.method public getIsSdkInitFinished()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/push/PushManager;->d:Z

    return v0
.end method

.method public getNotificationSwitch()Z
    .locals 4

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "sp_push"

    invoke-static {v0}, Lcom/transsion/core/utils/f;->e(Ljava/lang/String;)Lcom/transsion/core/utils/f;

    move-result-object v0

    const-string v2, "sp_key_push_switch"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/transsion/core/utils/f;->c(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public getPushListener()Lcom/transsion/push/TPushListener;
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/PushManager;->b:Lcom/transsion/push/TPushListener;

    return-object v0
.end method

.method public getTestEnv()Z
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->s()Z

    move-result v0

    return v0
.end method

.method public getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object p1

    const-string v0, "push_token"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lqk/a;->b(Landroid/content/Context;)V

    sget-object v2, Lcom/transsion/push/PushManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "https://api.twibida.com/tcm/v2/instance/"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/push/PushManager$b;

    invoke-direct {v3, p0, p1}, Lcom/transsion/push/PushManager$b;-><init>(Lcom/transsion/push/PushManager;Landroid/content/Context;)V

    invoke-static {p1, v2, v3}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    sget-object v2, Lcom/transsion/push/PushManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/crypto/TCrypterSdk;->b(Landroid/content/Context;)V

    new-instance p1, Lcom/transsion/push/PushManager$4;

    invoke-direct {p1, p0}, Lcom/transsion/push/PushManager$4;-><init>(Lcom/transsion/push/PushManager;)V

    invoke-static {p1}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->b()V

    sput-boolean v3, Lcom/transsion/push/PushManager;->d:Z

    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdk init time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init fail, e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/transsion/push/PushManager;->d:Z

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqk/a;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/transsion/push/PushManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "https://api.twibida.com/tcm/v2/instance/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/push/PushManager$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/push/PushManager$a;-><init>(Lcom/transsion/push/PushManager;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    sget-object v0, Lcom/transsion/push/PushManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/crypto/TCrypterSdk;->b(Landroid/content/Context;)V

    new-instance p1, Lcom/transsion/push/PushManager$2;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/transsion/push/PushManager$2;-><init>(Lcom/transsion/push/PushManager;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->b()V

    sput-boolean v1, Lcom/transsion/push/PushManager;->d:Z

    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sdk init time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "init fail, e:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/transsion/push/PushManager;->d:Z

    :goto_0
    return-void
.end method

.method public registerPushListener(Lcom/transsion/push/TPushListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/PushManager;->b:Lcom/transsion/push/TPushListener;

    return-void
.end method

.method public registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "registerReceiver --> "

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "tpush.intent.action.TPUSH_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "tpush.intent.action.INIT_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->f()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v1, "push_app_id"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object p1

    const-string v0, "push_app_key"

    invoke-virtual {p1, v0, p2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    new-instance p1, Lcom/transsion/push/PushManager$6;

    invoke-direct {p1, p0}, Lcom/transsion/push/PushManager$6;-><init>(Lcom/transsion/push/PushManager;)V

    invoke-static {p1}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setNotificationSwitch(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "sp_push"

    invoke-static {v0}, Lcom/transsion/core/utils/f;->e(Ljava/lang/String;)Lcom/transsion/core/utils/f;

    move-result-object v0

    const-string v1, "sp_key_push_switch"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/core/utils/f;->l(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setPushConfig(Lcom/transsion/push/bean/PushConfig;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/push/PushManager$5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/push/PushManager$5;-><init>(Lcom/transsion/push/PushManager;Lcom/transsion/push/bean/PushConfig;)V

    invoke-static {v0}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public subscribeToTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/config/PushRepository;->subscribeToTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V

    return-void
.end method

.method public trackArrive(J)V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v1

    const-string v5, ""

    const-string v6, ""

    const-string v7, "success"

    const/4 v4, 0x2

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/push/tracker/Tracker;->trackTarget(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public trackClick(J)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/tracker/Tracker;->trackClick(J)V

    return-void
.end method

.method public trackConversion(J)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/tracker/Tracker;->trackConversion(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public trackShow(JI)V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/push/utils/NotificationAssistUtils;->isOpenNotification(Landroid/content/Context;)Z

    move-result v6

    const/4 v4, 0x2

    move-wide v2, p1

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unsubscribeFromTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/config/PushRepository;->unsubscribeFromTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V

    return-void
.end method

.method public updateToken(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/PushManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/transsion/push/utils/PushUtils;->B(Ljava/lang/String;)V

    return-void
.end method
