.class Lcom/transsion/push/tracker/AthenaTracker;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/transsion/push/tracker/AthenaTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;
    .locals 5

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private c()Z
    .locals 1

    :try_start_0
    sget v0, Lcom/transsion/ga/AthenaAnalytics;->p:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private d(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Athena track event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/push/tracker/Tracker$KEY;->event:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/transsion/push/tracker/Tracker$KEY;->tid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lcom/transsion/push/tracker/AthenaTracker;
    .locals 1

    sget-object v0, Lcom/transsion/push/tracker/AthenaTracker;->a:Lcom/transsion/push/tracker/AthenaTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/push/tracker/AthenaTracker;

    invoke-direct {v0}, Lcom/transsion/push/tracker/AthenaTracker;-><init>()V

    sput-object v0, Lcom/transsion/push/tracker/AthenaTracker;->a:Lcom/transsion/push/tracker/AthenaTracker;

    :cond_0
    sget-object v0, Lcom/transsion/push/tracker/AthenaTracker;->a:Lcom/transsion/push/tracker/AthenaTracker;

    return-object v0
.end method


# virtual methods
.method b()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/push/tracker/AthenaTracker;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x411

    const/4 v2, 0x0

    const-string v3, "push"

    invoke-static {v0, v3, v1, v2}, Lcom/transsion/ga/AthenaAnalytics;->P(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method e(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/push/tracker/AthenaTracker;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getIsSdkInitFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x411

    const/4 v2, 0x0

    const-string v3, "push"

    invoke-static {v0, v3, v1, v2}, Lcom/transsion/ga/AthenaAnalytics;->P(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/tracker/AthenaTracker;->d(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    iget v0, p1, Lcom/transsion/push/tracker/Tracker$KEY;->tid:I

    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->K(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/push/tracker/Tracker$KEY;->event:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/transsion/push/tracker/AthenaTracker;->a(Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    move-result-object p2

    iget p1, p1, Lcom/transsion/push/tracker/Tracker$KEY;->tid:I

    invoke-virtual {v0, v1, p2, p1}, Lcom/transsion/ga/AthenaAnalytics;->g0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
