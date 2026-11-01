.class public Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;
.super Lcom/bytedance/sdk/component/sP/Sj/EjP;


# static fields
.field public static volatile Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;


# instance fields
.field private EjP:Ljava/util/concurrent/ExecutorService;

.field private TKC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation
.end field

.field private sP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/sP/Sj/EjP;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->sP:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->TKC:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->EjP:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;)V
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    return-void
.end method


# virtual methods
.method public EjP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->TKC:Ljava/util/List;

    return-object v0
.end method

.method public HiB()Z
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;->Sj()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Sj()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Sj(I)V
    .locals 0

    return-void
.end method

.method public TKC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->sP:Ljava/util/List;

    return-object v0
.end method

.method public sP()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;->Sj()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->EjP:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
