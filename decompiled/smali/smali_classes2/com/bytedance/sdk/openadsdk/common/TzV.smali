.class public Lcom/bytedance/sdk/openadsdk/common/TzV;
.super Ljava/lang/Object;


# instance fields
.field private Dq:Landroid/widget/ImageView;

.field final EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final HiB:Landroid/widget/RelativeLayout;

.field private final Jcg:Landroid/content/Context;

.field Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

.field private TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

.field final TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Ym:I

.field private aa:Z

.field sP:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

.field private uA:Landroid/widget/TextView;

.field private final vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Jcg:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42300000    # 44.0f

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Ym:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB()V

    return-void
.end method

.method private HiB()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->kb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Dq:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Uc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->uA:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->xu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    sget v2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->gR:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->uA:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Jcg:Landroid/content/Context;

    const-string v3, "tt_web_title_default"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TzV$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/TzV$1;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private Jcg()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->sP:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getDislikeTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->show(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/common/TzV;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/common/TzV;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->aa:Z

    return p1
.end method

.method private vS()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/Zq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Jcg:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/common/Zq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    const-string v1, "landing_page"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/Zq;->setDislikeSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TzV$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/TzV$6;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/Zq;->setCallback(Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->sP:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Jcg:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->sP:Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    const-string v1, "initDislike error"

    const-string v2, "TTTitleNewStyleManager"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected EjP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/TzV;->Jcg()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/TzV;->vS()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj()V

    :cond_2
    return-void
.end method

.method public Sj()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->aa:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Ym:I

    neg-int v3, v2

    if-ne v1, v3, :cond_0

    neg-int v1, v2

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/TzV$2;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/common/TzV$2;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/TzV$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/TzV$3;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public Sj(I)V
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->setProgress(I)V

    return-void
.end method

.method public TKC()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Dq:Landroid/widget/ImageView;

    return-object v0
.end method

.method public sP()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->HiB:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->aa:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV;->Ym:I

    neg-int v1, v1

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/TzV$4;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/common/TzV$4;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/TzV$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/TzV$5;-><init>(Lcom/bytedance/sdk/openadsdk/common/TzV;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
