.class public Lcom/bytedance/sdk/openadsdk/component/vS/sP;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private EjP:I

.field private HiB:I

.field private Jcg:Z

.field private Sj:Landroid/os/Handler;

.field private TKC:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;

.field private final sP:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

.field private vS:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Sj:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->EjP:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->HiB:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->vS:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Sj:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public HiB()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Sj:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Sj:Landroid/os/Handler;

    return-void
.end method

.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->vS:I

    return v0
.end method

.method public Sj(F)V
    .locals 0

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->HiB:I

    if-gtz p1, :cond_0

    const/4 p1, 0x5

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->HiB:I

    :cond_0
    return-void
.end method

.method public Sj(I)V
    .locals 6

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->EjP:I

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->HiB:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;->Sj(J)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Jcg:Z

    if-nez v3, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/vS/Sj;->sP()V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Jcg:Z

    :cond_0
    move p1, v2

    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;

    if-eqz v3, :cond_4

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->vS:I

    sub-int v5, v4, v0

    if-eqz p1, :cond_3

    if-lt v0, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    invoke-interface {v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/component/vS/Sj;->Sj(IZ)V

    :cond_4
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/component/vS/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;

    return-void
.end method

.method public TKC()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Sj:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->EjP:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Sj:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Sj:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Sj(I)V

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Sj:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return v1
.end method

.method public sP()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->Sj:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->HiB:I

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public sP(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->HiB:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->vS:I

    return-void
.end method
