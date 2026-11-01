.class public final Lcom/transsion/push/tracker/Tracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/tracker/Tracker$KEY;
    }
.end annotation


# static fields
.field private static c:Lcom/transsion/push/tracker/Tracker;

.field private static d:Ljava/util/HashMap;

.field private static e:Ljava/util/HashMap;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/push/tracker/Tracker;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/push/tracker/Tracker;->e:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/transsion/core/utils/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/tracker/Tracker;->a:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/core/utils/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/tracker/Tracker;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/transsion/push/tracker/Tracker;->d:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "all"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/push/tracker/Tracker;->d:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/push/tracker/Tracker;->d:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "fail"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/push/tracker/Tracker;->e:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/push/tracker/Tracker;->e:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "handled"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/transsion/push/bean/PushMessage;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/transsion/push/tracker/Tracker;->c(Lcom/transsion/push/bean/PushMessage;)Z

    move-result v0

    const-string v1, "head_up"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p2, Lcom/transsion/push/bean/PushMessage;->materialId:Ljava/lang/String;

    const-string v1, "material_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "seq"

    iget-object v1, p2, Lcom/transsion/push/bean/PushMessage;->seq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sourceType"

    iget-object v1, p2, Lcom/transsion/push/bean/PushMessage;->sourceType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scheduleDate"

    iget-object v1, p2, Lcom/transsion/push/bean/PushMessage;->scheduleDate:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tag"

    iget-object p2, p2, Lcom/transsion/push/bean/PushMessage;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkg"

    iget-object v2, p0, Lcom/transsion/push/tracker/Tracker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ver"

    iget-object v2, p0, Lcom/transsion/push/tracker/Tracker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk"

    const-string v2, "2.0.2.01"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appid"

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Lcom/transsion/push/bean/PushMessage;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static getInstance()Lcom/transsion/push/tracker/Tracker;
    .locals 1

    sget-object v0, Lcom/transsion/push/tracker/Tracker;->c:Lcom/transsion/push/tracker/Tracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/push/tracker/Tracker;

    invoke-direct {v0}, Lcom/transsion/push/tracker/Tracker;-><init>()V

    sput-object v0, Lcom/transsion/push/tracker/Tracker;->c:Lcom/transsion/push/tracker/Tracker;

    :cond_0
    sget-object v0, Lcom/transsion/push/tracker/Tracker;->c:Lcom/transsion/push/tracker/Tracker;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 1

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/tracker/AthenaTracker;->b()V

    return-void
.end method

.method public trackActiveSyncInit()V
    .locals 0

    return-void
.end method

.method public trackActiveSyncProcess()V
    .locals 0

    return-void
.end method

.method public trackBroadcastGcmInfoeye()V
    .locals 0

    return-void
.end method

.method public trackBroadcastInfoeye()V
    .locals 0

    return-void
.end method

.method public trackClick(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/transsion/push/utils/PushUtils;->m(J)Lcom/transsion/push/bean/PushMessage;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/push/tracker/Tracker;->trackClick(JLcom/transsion/push/bean/PushMessage;)V

    invoke-static {p1, p2}, Lcom/transsion/push/utils/PushUtils;->b(J)V

    return-void
.end method

.method public trackClick(JLcom/transsion/push/bean/PushMessage;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, v0, p3}, Lcom/transsion/push/tracker/Tracker;->a(Landroid/os/Bundle;Lcom/transsion/push/bean/PushMessage;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trackClick, message is :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CLICK:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackConfig(II)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cfgv"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cfgt"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CFG:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackConversion(J)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CONVERSION:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackHandleMsgErrorInfoeye(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public trackImg(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_IMG_DOWNLOAD:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackInit()V
    .locals 4

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "init"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object v1

    sget-object v3, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_INIT:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {v1, v3, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public trackInstall()V
    .locals 3

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "is_track_install"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/tracker/PushTracker;->getInstance()Lcom/transsion/push/tracker/PushTracker;

    move-result-object v0

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_INSTALL:Lcom/transsion/push/tracker/Tracker$KEY;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/tracker/PushTracker;->i(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public trackMessage(JILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "type"

    int-to-long p2, p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "do"

    int-to-long p2, p6

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "pts"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_MSG:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackReport()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pkg"

    iget-object v2, p0, Lcom/transsion/push/tracker/Tracker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ver"

    iget-object v2, p0, Lcom/transsion/push/tracker/Tracker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk"

    const-string v2, "2.0.2.01"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object v1

    sget-object v2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_REPORT:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {v1, v2, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Lcom/transsion/push/tracker/PushTracker;->getInstance()Lcom/transsion/push/tracker/PushTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/tracker/PushTracker;->i(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public trackShow(JILjava/lang/String;ZI)V
    .locals 8

    invoke-static {p1, p2}, Lcom/transsion/push/utils/PushUtils;->m(J)Lcom/transsion/push/bean/PushMessage;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    return-void
.end method

.method public trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "type"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "able"

    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "pts"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "status"

    invoke-virtual {v0, p1, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "show_status"

    invoke-virtual {v0, p1, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p7}, Lcom/transsion/push/tracker/Tracker;->a(Landroid/os/Bundle;Lcom/transsion/push/bean/PushMessage;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trackShow, message is :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_SHOW:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackTarget(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "type"

    int-to-long p2, p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "pts"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rpkg"

    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v0, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TARGET:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackTarget(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/PushMessage;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "type"

    int-to-long p2, p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "pts"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rpkg"

    invoke-virtual {v0, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v0, p1, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p7}, Lcom/transsion/push/tracker/Tracker;->a(Landroid/os/Bundle;Lcom/transsion/push/bean/PushMessage;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trackTarget, message is :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TARGET:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackToken(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TOKEN:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, v1, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackTokenUpdateInit()V
    .locals 0

    return-void
.end method

.method public trackTokenUpdateProcess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public trackTrace(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "osV"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "data"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TRACE:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackTrigger(I)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TRIG:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, v1, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackUninstall(JLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/push/tracker/Tracker;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "tpkg"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/push/tracker/AthenaTracker;->getInstance()Lcom/transsion/push/tracker/AthenaTracker;

    move-result-object p1

    sget-object p2, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_UNINSTALL:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/AthenaTracker;->e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/push/tracker/FirebaseTracker;->getInstance()Lcom/transsion/push/tracker/FirebaseTracker;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/push/tracker/FirebaseTracker;->a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    return-void
.end method

.method public tracks()V
    .locals 1

    invoke-static {}, Lcom/transsion/push/tracker/PushTracker;->getInstance()Lcom/transsion/push/tracker/PushTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/tracker/PushTracker;->tracks()V

    return-void
.end method
