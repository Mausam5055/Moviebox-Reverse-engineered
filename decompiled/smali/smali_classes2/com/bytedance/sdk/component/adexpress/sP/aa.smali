.class public Lcom/bytedance/sdk/component/adexpress/sP/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;


# instance fields
.field private EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field Sj:Lcom/bytedance/sdk/component/adexpress/sP/Zq;

.field private TKC:Lcom/bytedance/sdk/component/adexpress/sP/uA;

.field private sP:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/sP/TEQ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/sP/uA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/sP/TEQ;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/sP/uA;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->sP:Ljava/util/List;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->TKC:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->TKC:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->EjP()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->sP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/sP/TEQ;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->sP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->sP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->sP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/sP/TEQ;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Zq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method public TKC()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public sP()Lcom/bytedance/sdk/component/adexpress/sP/Zq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    return-object v0
.end method

.method public sP(Lcom/bytedance/sdk/component/adexpress/sP/TEQ;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->sP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/aa;->sP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
