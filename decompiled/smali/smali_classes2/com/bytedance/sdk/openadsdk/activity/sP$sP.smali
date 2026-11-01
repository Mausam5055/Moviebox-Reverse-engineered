.class abstract Lcom/bytedance/sdk/openadsdk/activity/sP$sP;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "sP"
.end annotation


# instance fields
.field private final Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

.field protected EjP:I

.field protected HiB:I

.field private final Jcg:Landroid/os/Handler;

.field protected final Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

.field private TEQ:Z

.field protected TKC:F

.field private Ym:Z

.field private aa:Z

.field protected final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final uA:Landroid/content/Context;

.field protected vS:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->uA:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    return-void
.end method

.method private EjP()V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->aa:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->aa:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->uvD()V

    :cond_1
    return-void
.end method

.method private HiB()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB(Lcom/bytedance/sdk/openadsdk/activity/sP;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->showSkipButton()V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TEQ:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Ym:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->showCloseButton()V

    return-void
.end method

.method private TKC(I)V
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->aa:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I
.end method

.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->aa:Z

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TEQ:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC(I)V

    :cond_1
    return-void
.end method

.method public TKC()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "s"

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->setSkipText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP()V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC(I)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB()V

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->setSkipText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP()V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC(I)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB()V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    if-lez v0, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP()V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_0
    return v5
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TEQ:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Ym:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public sP(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TEQ:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Ym:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC:F

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    if-nez v0, :cond_2

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    :cond_2
    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    return-void
.end method
