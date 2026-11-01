.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;
.super Ljava/lang/Object;


# static fields
.field private static final sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;


# instance fields
.field private EjP:J

.field private final HiB:Landroid/content/ServiceConnection;

.field private Sj:Lcom/bytedance/sdk/openadsdk/IBinderPool;

.field private TKC:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP;

.field private final vS:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->EjP:J

    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->HiB:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->vS:Landroid/os/IBinder$DeathRecipient;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->EjP()V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->EjP:J

    return-wide v0
.end method

.method private EjP()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->TKC()V

    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->EjP()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;Lcom/bytedance/sdk/openadsdk/IBinderPool;)Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object p1
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->vS:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method


# virtual methods
.method public Sj(I)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/sP;->Sj()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/sP;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/EjP;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/vS;->sP()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/vS;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/HiB;->Sj()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/HiB;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/Jcg;->Sj()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/Jcg;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    if-eqz v1, :cond_6

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/IBinderPool;->queryBinder(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "TTAD.BinderPool"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "queryBinder error"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Dq(Ljava/lang/String;)V

    :catchall_0
    :cond_6
    :goto_1
    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$1;

    const-string v0, "onServiceConnected2"

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    :cond_0
    return-void
.end method

.method public TKC()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->HiB:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->EjP:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public sP()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
