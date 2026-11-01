.class public Lcom/bytedance/adsdk/ugeno/HiB;
.super Ljava/lang/Object;


# static fields
.field private static volatile Sj:Lcom/bytedance/adsdk/ugeno/HiB;


# instance fields
.field private EjP:Lcom/bytedance/adsdk/ugeno/Sj;

.field private HiB:Lcom/bytedance/adsdk/ugeno/TKC/Sj;

.field private Jcg:Lcom/bytedance/adsdk/ugeno/core/Sj/Sj;

.field private TKC:Lcom/bytedance/adsdk/ugeno/core/TKC;

.field private sP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/sP;",
            ">;"
        }
    .end annotation
.end field

.field private vS:Lcom/bytedance/adsdk/ugeno/core/sP/TKC;


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

.method public static Sj()Lcom/bytedance/adsdk/ugeno/HiB;
    .locals 2

    sget-object v0, Lcom/bytedance/adsdk/ugeno/HiB;->Sj:Lcom/bytedance/adsdk/ugeno/HiB;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/adsdk/ugeno/HiB;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/adsdk/ugeno/HiB;->Sj:Lcom/bytedance/adsdk/ugeno/HiB;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/adsdk/ugeno/HiB;

    invoke-direct {v1}, Lcom/bytedance/adsdk/ugeno/HiB;-><init>()V

    sput-object v1, Lcom/bytedance/adsdk/ugeno/HiB;->Sj:Lcom/bytedance/adsdk/ugeno/HiB;

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
    sget-object v0, Lcom/bytedance/adsdk/ugeno/HiB;->Sj:Lcom/bytedance/adsdk/ugeno/HiB;

    return-object v0
.end method

.method private vS()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB;->sP:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/HiB;->TKC:Lcom/bytedance/adsdk/ugeno/core/TKC;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bytedance/adsdk/ugeno/core/TKC;->Sj()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB;->sP:Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/core/EjP;->Sj(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/adsdk/ugeno/core/sP/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB;->vS:Lcom/bytedance/adsdk/ugeno/core/sP/TKC;

    return-object v0
.end method

.method public HiB()Lcom/bytedance/adsdk/ugeno/core/Sj/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB;->Jcg:Lcom/bytedance/adsdk/ugeno/core/Sj/Sj;

    return-object v0
.end method

.method public Sj(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/TKC;Lcom/bytedance/adsdk/ugeno/Sj;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/HiB;->TKC:Lcom/bytedance/adsdk/ugeno/core/TKC;

    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/HiB;->EjP:Lcom/bytedance/adsdk/ugeno/Sj;

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/HiB;->vS()V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/EjP/Dq;)V
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/EjP/Sj;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/EjP/Sj;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/Sj;->Sj()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/EjP/Dq;->Sj()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/EjP/TEQ;->Sj(Ljava/util/List;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/EjP/TKC;)V
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/EjP/HiB;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/EjP/HiB;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/HiB;->Sj()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/EjP/TKC;->Sj()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP;->Sj(Ljava/util/List;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/TKC/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB;->HiB:Lcom/bytedance/adsdk/ugeno/TKC/Sj;

    return-void
.end method

.method public TKC()Lcom/bytedance/adsdk/ugeno/TKC/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB;->HiB:Lcom/bytedance/adsdk/ugeno/TKC/Sj;

    return-object v0
.end method

.method public sP()Lcom/bytedance/adsdk/ugeno/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB;->EjP:Lcom/bytedance/adsdk/ugeno/Sj;

    return-object v0
.end method
