.class public abstract Lcom/bytedance/sdk/openadsdk/kF/sP/sP;
.super Ljava/lang/Object;


# instance fields
.field private final Dq:Ljava/lang/Integer;

.field private final EjP:Ljava/util/concurrent/atomic/AtomicLong;

.field private final HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Jcg:I

.field protected Sj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private volatile uA:Z

.field private final vS:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Dq:Ljava/lang/Integer;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Jcg:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->uA:Z

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj(Landroid/view/View;)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p3, -0x1

    invoke-direct {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static Sj(ZLjava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)Lcom/bytedance/sdk/openadsdk/kF/sP/sP;
    .locals 0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;-><init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/kF/sP/TKC;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/kF/sP/TKC;-><init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    return-object p0
.end method


# virtual methods
.method public Dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method protected EjP()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->HiB()Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    :cond_0
    return-void
.end method

.method public Fmk()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Dq()V

    return-void
.end method

.method protected HiB()Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;-><init>(IIF)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;-><init>(IIF)V

    return-object v0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;-><init>(IIF)V

    return-object v1
.end method

.method public Jcg()V
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->uA()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Dq()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Jcg:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP()V

    :cond_3
    return-void
.end method

.method public Sj()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/kF/sP/sP;)V

    :cond_0
    return-void
.end method

.method public Sj(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj()V

    return-void

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Fmk()V

    return-void

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP()V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->sP(I)V

    return-void
.end method

.method public Sj(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x2000001

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Ym()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public TEQ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->uA:Z

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/kF/sP/sP;)V

    return-void
.end method

.method protected abstract TKC()Z
.end method

.method public Ym()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Dq:Ljava/lang/Integer;

    return-object v0
.end method

.method public aa()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public sP()I
    .locals 6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->uA()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->uA:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Ym()Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x2000001

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TEQ()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Ym()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->sP(Ljava/lang/Integer;)V

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Ym()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x2

    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method protected abstract sP(I)V
.end method

.method public uA()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract vS()I
.end method
