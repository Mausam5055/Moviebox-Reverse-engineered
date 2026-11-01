.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;
.super Ljava/lang/Object;


# instance fields
.field private final EjP:I

.field private final HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field private Jcg:Landroid/animation/AnimatorSet;

.field Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

.field private final TKC:Landroid/content/Context;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private vS:Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->TKC:Landroid/content/Context;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->EjP:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-void
.end method


# virtual methods
.method public EjP()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;

    return-object v0
.end method

.method public Sj()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->TKC:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->getLoadingProgressBar()Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->HiB()Lcom/bytedance/sdk/openadsdk/core/sP/HiB;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->EjP:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public TKC()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->Jcg:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x50

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v1, 0x51

    const/16 v2, 0x63

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->Jcg:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->Jcg:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
