.class public Lcom/bytedance/sdk/component/utils/wE;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/utils/wE$sP;,
        Lcom/bytedance/sdk/component/utils/wE$Sj;
    }
.end annotation


# static fields
.field private static final Dq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile EjP:I

.field private static volatile HiB:J

.field private static Jcg:Lcom/bytedance/sdk/component/utils/RiZ;

.field private static final Sj:Ljava/lang/Object;

.field private static TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/sdk/component/utils/wE$Sj;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile vS:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/utils/wE;->Sj:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/utils/wE;->sP:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/component/utils/wE;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    sput v0, Lcom/bytedance/sdk/component/utils/wE;->EjP:I

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/bytedance/sdk/component/utils/wE;->HiB:J

    const v0, 0xea60

    sput v0, Lcom/bytedance/sdk/component/utils/wE;->vS:I

    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/component/utils/wE;->Jcg:Lcom/bytedance/sdk/component/utils/RiZ;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/component/utils/wE;->Dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic Sj(I)I
    .locals 0

    sput p0, Lcom/bytedance/sdk/component/utils/wE;->EjP:I

    return p0
.end method

.method static synthetic Sj(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/wE;->sP(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static Sj(Landroid/content/Context;J)I
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/sdk/component/utils/wE;->HiB:J

    add-long/2addr v2, p1

    cmp-long p1, v2, v0

    if-gtz p1, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/wE;->sP(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_0
    sget p1, Lcom/bytedance/sdk/component/utils/wE;->EjP:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/wE;->sP(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_1
    sget-wide p1, Lcom/bytedance/sdk/component/utils/wE;->HiB:J

    sub-long/2addr v0, p1

    sget p1, Lcom/bytedance/sdk/component/utils/wE;->vS:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2}, Lcom/bytedance/sdk/component/utils/wE;->sP(Landroid/content/Context;Landroid/content/Intent;ZZ)V

    :cond_2
    sget p0, Lcom/bytedance/sdk/component/utils/wE;->EjP:I

    return p0
.end method

.method static synthetic Sj()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/utils/wE;->Dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic Sj(Landroid/content/Context;Landroid/content/Intent;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/utils/wE;->sP(Landroid/content/Context;Landroid/content/Intent;IZ)V

    return-void
.end method

.method static synthetic Sj(Landroid/content/Context;Landroid/content/Intent;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/utils/wE;->sP(Landroid/content/Context;Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/utils/wE$Sj;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/utils/wE;->sP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/utils/wE$Sj;Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/utils/wE;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/sdk/component/utils/wE$sP;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/component/utils/wE$sP;-><init>(Lcom/bytedance/sdk/component/utils/wE$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object p1, Lcom/bytedance/sdk/component/utils/wE;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    sget-object p1, Lcom/bytedance/sdk/component/utils/wE;->sP:Ljava/util/Map;

    sget-object v0, Lcom/bytedance/sdk/component/utils/wE;->Sj:Ljava/lang/Object;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static TKC(Landroid/content/Context;)I
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x6

    packed-switch v3, :pswitch_data_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "TD-SCDMA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "WCDMA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CDMA2000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v4

    :cond_4
    return v0

    :pswitch_0
    return v5

    :pswitch_1
    sget-object v1, Lcom/bytedance/sdk/component/utils/wE;->Jcg:Lcom/bytedance/sdk/component/utils/RiZ;

    if-eqz v1, :cond_5

    invoke-interface {v1, p0, v2}, Lcom/bytedance/sdk/component/utils/RiZ;->Sj(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    return v5

    :cond_5
    const/4 p0, 0x5

    return p0

    :pswitch_2
    return v4

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic TKC()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/utils/wE;->sP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic sP()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/component/utils/wE;->EjP:I

    return v0
.end method

.method private static sP(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/wE;->TKC(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/bytedance/sdk/component/utils/wE;->EjP:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/component/utils/wE;->HiB:J

    sget p0, Lcom/bytedance/sdk/component/utils/wE;->EjP:I

    return p0
.end method

.method private static sP(Landroid/content/Context;Landroid/content/Intent;IZ)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/component/utils/wE;->sP:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/utils/wE$Sj;

    if-eqz v1, :cond_1

    xor-int/lit8 v2, p3, 0x1

    invoke-interface {v1, p0, p1, v2, p2}, Lcom/bytedance/sdk/component/utils/wE$Sj;->Sj(Landroid/content/Context;Landroid/content/Intent;ZI)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static sP(Landroid/content/Context;Landroid/content/Intent;ZZ)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    sput v0, Lcom/bytedance/sdk/component/utils/wE;->EjP:I

    return-void

    :cond_0
    sget-object v1, Lcom/bytedance/sdk/component/utils/wE;->Dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/utils/wE$1;

    const-string v2, "getNetworkType"

    move-object v1, v0

    move v3, p3

    move-object v4, p0

    move v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/utils/wE$1;-><init>(Ljava/lang/String;ZLandroid/content/Context;ZLandroid/content/Intent;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Dq/vS;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    :cond_1
    return-void
.end method
