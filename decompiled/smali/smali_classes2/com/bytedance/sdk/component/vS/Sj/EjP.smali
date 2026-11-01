.class public Lcom/bytedance/sdk/component/vS/Sj/EjP;
.super Ljava/lang/Object;


# static fields
.field public static final Sj:Lcom/bytedance/sdk/component/vS/Sj/EjP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/EjP;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj:Lcom/bytedance/sdk/component/vS/Sj/EjP;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Sj(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/sP/Sj;->Sj()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/sP/sP;->Sj()V

    :cond_1
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;I)V
    .locals 1

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/sP/Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/sP/sP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    :cond_1
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;Ljava/util/List;ZIILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Ljava/lang/String;Ljava/util/List;ZIILjava/lang/String;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/TKC/Sj;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/TKC/Sj;->Sj()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->EjP()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/TKC/Sj;->sP()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->HiB()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/EjP$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP$1;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private Sj(Ljava/lang/String;IZ)V
    .locals 1

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/sP/Sj;->Sj(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/vS/Sj/sP/sP/sP;->Sj(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private Sj(Ljava/lang/String;Ljava/util/List;ZIILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/component/vS/Sj/sP/sP/Sj;->Sj(Ljava/lang/String;Ljava/util/List;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    invoke-static {p1, p2, p3, p5, p6}, Lcom/bytedance/sdk/component/vS/Sj/sP/sP/sP;->Sj(Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/HiB;)Z
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-interface {p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-interface {p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->sef()Z

    move-result p1

    return p1

    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/dx;->Sj(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private TKC()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sP(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/sP/Sj;->sP()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/sP/sP;->sP()V

    :cond_1
    return-void
.end method

.method private sP(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uvD()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object v0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->EjP()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sP()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/HiB;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->TKC()Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->TKC()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->EjP()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/vS/Sj/EjP$4;

    const-string v3, "dispatchEvent"

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP$4;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;Lcom/bytedance/sdk/component/vS/Sj/HiB;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;I)V

    return-void

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/vS/Sj/EjP;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->sP(I)V

    return-void
.end method

.method private sP(Lcom/bytedance/sdk/component/vS/Sj/Sj;Landroid/content/Context;)V
    .locals 1

    const-string v0, "context == null"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/vS/Sj/TKC;->Sj(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "AdLogConfig == null"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/TKC;->Sj(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->EjP()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object p1

    const-string p2, "AdLogDepend ==null"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/TKC;->Sj(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uvD()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->EjP()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sP()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/HiB;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uA()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->TKC()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->EjP()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/vS/Sj/EjP$2;

    const-string v3, "start"

    invoke-direct {v2, p0, v3, v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP$2;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/HiB;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(I)V

    return-void

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uA()V

    :cond_4
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->sP(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->sP(Lcom/bytedance/sdk/component/vS/Sj/Sj;Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->TEQ()Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sP(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Dq()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->TKC(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->sP()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->uA()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->vS()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->HiB(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/HiB;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/HiB;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Ym()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sP(Z)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->EjP()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(Lcom/bytedance/sdk/component/vS/Sj/HiB;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->TKC()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(Z)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->HiB()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->Fmk()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->Sj(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj;->aa()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->sP(I)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uvD()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->EjP()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object/from16 v15, p0

    goto/16 :goto_1

    :cond_1
    invoke-interface {v7}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->Dq()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v7}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    return-void

    :cond_4
    invoke-interface {v7}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v0

    if-nez v0, :cond_6

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sP()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v15, p0

    invoke-direct {v15, v0, v7}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/HiB;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->EjP()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v10, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;

    const-string v3, "trackFailed"

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/component/vS/Sj/EjP$5;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/bytedance/sdk/component/vS/Sj/HiB;ILjava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    invoke-interface {v7}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v12

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Ljava/lang/String;Ljava/util/List;ZIILjava/lang/String;)V

    return-void

    :cond_9
    move-object/from16 v15, p0

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public Sj(Ljava/lang/String;Z)V
    .locals 8

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uvD()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->EjP()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->Dq()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v5}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sP()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/HiB;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->EjP()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/component/vS/Sj/EjP$6;

    const-string v3, "trackFailed"

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/vS/Sj/EjP$6;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/HiB;Z)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    invoke-interface {v5}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Ljava/lang/String;IZ)V

    return-void

    :cond_5
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(Ljava/lang/String;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public Sj(Z)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj(Z)V

    return-void
.end method

.method public sP()V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uvD()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->EjP()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sP()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/HiB;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Ym()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->TKC()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->EjP()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/vS/Sj/EjP$3;

    const-string v3, "stop"

    invoke-direct {v2, p0, v3, v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP$3;-><init>(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/HiB;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->sP(I)V

    return-void

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Ym()V

    :cond_4
    :goto_0
    return-void
.end method
