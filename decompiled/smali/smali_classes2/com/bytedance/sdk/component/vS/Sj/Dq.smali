.class public Lcom/bytedance/sdk/component/vS/Sj/Dq;
.super Ljava/lang/Object;


# static fields
.field private static Fmk:Lcom/bytedance/sdk/component/vS/Sj/Dq;

.field private static volatile TEQ:Lcom/bytedance/sdk/component/vS/Sj/HiB/Sj;


# instance fields
.field private volatile Dq:Z

.field private volatile EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private volatile HiB:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private volatile Jcg:Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

.field private volatile Sj:Landroid/content/Context;

.field private volatile TKC:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private volatile Ym:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;

.field private Zq:J

.field private volatile aa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private final sef:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile uA:Lcom/bytedance/sdk/component/vS/Sj/HiB;

.field private volatile vS:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sef:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static HiB()Lcom/bytedance/sdk/component/vS/Sj/HiB/Sj;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->TEQ:Lcom/bytedance/sdk/component/vS/Sj/HiB/Sj;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/vS/Sj/Dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/vS/Sj/Dq;->TEQ:Lcom/bytedance/sdk/component/vS/Sj/HiB/Sj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/HiB/sP;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/vS/Sj/HiB/sP;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/vS/Sj/Dq;->TEQ:Lcom/bytedance/sdk/component/vS/Sj/HiB/Sj;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->TEQ:Lcom/bytedance/sdk/component/vS/Sj/HiB/Sj;

    return-object v0
.end method

.method public static declared-synchronized Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;
    .locals 2

    const-class v0, Lcom/bytedance/sdk/component/vS/Sj/Dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Fmk:Lcom/bytedance/sdk/component/vS/Sj/Dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/Dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Fmk:Lcom/bytedance/sdk/component/vS/Sj/Dq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Fmk:Lcom/bytedance/sdk/component/vS/Sj/Dq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public Dq()Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Ym:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;

    return-object v0
.end method

.method public EjP()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    return-object v0
.end method

.method public EjP(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-void
.end method

.method public Fmk()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->TKC:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-object v0
.end method

.method public HiB(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->HiB:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Zq:J

    return-void
.end method

.method public Sj(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj:Landroid/content/Context;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->Sj(J)V

    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;I)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/HiB;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uA:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Ym:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V
    .locals 7
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

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/bytedance/sdk/component/vS/Sj/vS/sP;->Sj(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/vS/sP;->Sj(Ljava/lang/String;Z)V

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sef:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public Sj()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sef:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public TEQ()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-object v0
.end method

.method public TKC()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->aa:Ljava/util/Map;

    return-object v0
.end method

.method public TKC(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->TKC:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-void
.end method

.method public Ym()V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->TKC()V

    return-void
.end method

.method public Zq()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->HiB:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-object v0
.end method

.method public aa()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-object v0
.end method

.method public dNu()J
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Zq:J

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public sP(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-void
.end method

.method public sP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Dq:Z

    return-void
.end method

.method public sP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Dq:Z

    return v0
.end method

.method public sef()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    return-object v0
.end method

.method public uA()V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->sP()V

    return-void
.end method

.method public uvD()Lcom/bytedance/sdk/component/vS/Sj/HiB;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uA:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    return-object v0
.end method

.method public vS()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Sj:Landroid/content/Context;

    return-object v0
.end method
