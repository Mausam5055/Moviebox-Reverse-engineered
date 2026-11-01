.class final Landroidx/media3/ui/e0;
.super Ljava/lang/Object;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private final a:Landroidx/media3/ui/PlayerControlView;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Landroid/view/ViewGroup;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Landroid/view/ViewGroup;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Landroid/view/ViewGroup;

.field private final i:Landroid/view/ViewGroup;

.field private final j:Landroid/view/View;

.field private final k:Landroid/view/View;

.field private final l:Landroid/animation/AnimatorSet;

.field private final m:Landroid/animation/AnimatorSet;

.field private final n:Landroid/animation/AnimatorSet;

.field private final o:Landroid/animation/AnimatorSet;

.field private final p:Landroid/animation/AnimatorSet;

.field private final q:Landroid/animation/ValueAnimator;

.field private final r:Landroid/animation/ValueAnimator;

.field private final s:Ljava/lang/Runnable;

.field private final t:Ljava/lang/Runnable;

.field private final u:Ljava/lang/Runnable;

.field private final v:Ljava/lang/Runnable;

.field private final w:Ljava/lang/Runnable;

.field private final x:Landroid/view/View$OnLayoutChangeListener;

.field private final y:Ljava/util/List;

.field private z:I


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 12

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    new-instance v1, Landroidx/media3/ui/r;

    invoke-direct {v1, p0}, Landroidx/media3/ui/r;-><init>(Landroidx/media3/ui/e0;)V

    iput-object v1, p0, Landroidx/media3/ui/e0;->s:Ljava/lang/Runnable;

    new-instance v1, Landroidx/media3/ui/x;

    invoke-direct {v1, p0}, Landroidx/media3/ui/x;-><init>(Landroidx/media3/ui/e0;)V

    iput-object v1, p0, Landroidx/media3/ui/e0;->t:Ljava/lang/Runnable;

    new-instance v1, Landroidx/media3/ui/y;

    invoke-direct {v1, p0}, Landroidx/media3/ui/y;-><init>(Landroidx/media3/ui/e0;)V

    iput-object v1, p0, Landroidx/media3/ui/e0;->u:Ljava/lang/Runnable;

    new-instance v1, Landroidx/media3/ui/z;

    invoke-direct {v1, p0}, Landroidx/media3/ui/z;-><init>(Landroidx/media3/ui/e0;)V

    iput-object v1, p0, Landroidx/media3/ui/e0;->v:Ljava/lang/Runnable;

    new-instance v1, Landroidx/media3/ui/a0;

    invoke-direct {v1, p0}, Landroidx/media3/ui/a0;-><init>(Landroidx/media3/ui/e0;)V

    iput-object v1, p0, Landroidx/media3/ui/e0;->w:Ljava/lang/Runnable;

    new-instance v1, Landroidx/media3/ui/b0;

    invoke-direct {v1, p0}, Landroidx/media3/ui/b0;-><init>(Landroidx/media3/ui/e0;)V

    iput-object v1, p0, Landroidx/media3/ui/e0;->x:Landroid/view/View$OnLayoutChangeListener;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/ui/e0;->C:Z

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/ui/e0;->z:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media3/ui/e0;->y:Ljava/util/List;

    sget v1, Landroidx/media3/ui/R$id;->exo_controls_background:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/ui/e0;->b:Landroid/view/View;

    sget v1, Landroidx/media3/ui/R$id;->exo_center_controls:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroidx/media3/ui/e0;->c:Landroid/view/ViewGroup;

    sget v1, Landroidx/media3/ui/R$id;->exo_minimal_controls:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroidx/media3/ui/e0;->e:Landroid/view/ViewGroup;

    sget v1, Landroidx/media3/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroidx/media3/ui/e0;->d:Landroid/view/ViewGroup;

    sget v2, Landroidx/media3/ui/R$id;->exo_time:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Landroidx/media3/ui/e0;->i:Landroid/view/ViewGroup;

    sget v2, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/ui/e0;->j:Landroid/view/View;

    sget v3, Landroidx/media3/ui/R$id;->exo_basic_controls:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroidx/media3/ui/e0;->f:Landroid/view/ViewGroup;

    sget v3, Landroidx/media3/ui/R$id;->exo_extra_controls:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroidx/media3/ui/e0;->g:Landroid/view/ViewGroup;

    sget v3, Landroidx/media3/ui/R$id;->exo_extra_controls_scroll_view:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroidx/media3/ui/e0;->h:Landroid/view/ViewGroup;

    sget v3, Landroidx/media3/ui/R$id;->exo_overflow_show:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/ui/e0;->k:Landroid/view/View;

    sget v4, Landroidx/media3/ui/R$id;->exo_overflow_hide:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    new-instance v5, Landroidx/media3/ui/c0;

    invoke-direct {v5, p0}, Landroidx/media3/ui/c0;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroidx/media3/ui/c0;

    invoke-direct {v3, p0}, Landroidx/media3/ui/c0;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v3, 0x0

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroidx/media3/ui/d0;

    invoke-direct {v5, p0}, Landroidx/media3/ui/d0;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroidx/media3/ui/e0$a;

    invoke-direct {v5, p0}, Landroidx/media3/ui/e0$a;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroidx/media3/ui/s;

    invoke-direct {v6, p0}, Landroidx/media3/ui/s;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroidx/media3/ui/e0$b;

    invoke-direct {v6, p0}, Landroidx/media3/ui/e0$b;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/media3/ui/R$dimen;->exo_styled_bottom_bar_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sget v8, Landroidx/media3/ui/R$dimen;->exo_styled_progress_bar_height:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v7, v8

    sget v8, Landroidx/media3/ui/R$dimen;->exo_styled_bottom_bar_height:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Landroidx/media3/ui/e0;->l:Landroid/animation/AnimatorSet;

    const-wide/16 v9, 0xfa

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v11, Landroidx/media3/ui/e0$c;

    invoke-direct {v11, p0, p1}, Landroidx/media3/ui/e0$c;-><init>(Landroidx/media3/ui/e0;Landroidx/media3/ui/PlayerControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-static {v3, v7, v2}, Landroidx/media3/ui/e0;->O(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-static {v3, v7, v1}, Landroidx/media3/ui/e0;->O(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Landroidx/media3/ui/e0;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v11, Landroidx/media3/ui/e0$d;

    invoke-direct {v11, p0, p1}, Landroidx/media3/ui/e0$d;-><init>(Landroidx/media3/ui/e0;Landroidx/media3/ui/PlayerControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v7, v6, v2}, Landroidx/media3/ui/e0;->O(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-static {v7, v6, v1}, Landroidx/media3/ui/e0;->O(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Landroidx/media3/ui/e0;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v11, Landroidx/media3/ui/e0$e;

    invoke-direct {v11, p0, p1}, Landroidx/media3/ui/e0$e;-><init>(Landroidx/media3/ui/e0;Landroidx/media3/ui/PlayerControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-static {v3, v6, v2}, Landroidx/media3/ui/e0;->O(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-static {v3, v6, v1}, Landroidx/media3/ui/e0;->O(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/e0;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Landroidx/media3/ui/e0$f;

    invoke-direct {v4, p0}, Landroidx/media3/ui/e0$f;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {p1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-static {v7, v3, v2}, Landroidx/media3/ui/e0;->O(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-static {v7, v3, v1}, Landroidx/media3/ui/e0;->O(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/e0;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Landroidx/media3/ui/e0$g;

    invoke-direct {v4, p0}, Landroidx/media3/ui/e0$g;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {p1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-static {v6, v3, v2}, Landroidx/media3/ui/e0;->O(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-static {v6, v3, v1}, Landroidx/media3/ui/e0;->O(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array p1, v0, [F

    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/e0;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/media3/ui/v;

    invoke-direct {v1, p0}, Landroidx/media3/ui/v;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroidx/media3/ui/e0$h;

    invoke-direct {v1, p0}, Landroidx/media3/ui/e0$h;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v0, [F

    fill-array-data p1, :array_3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/e0;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/media3/ui/w;

    invoke-direct {v0, p0}, Landroidx/media3/ui/w;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroidx/media3/ui/e0$i;

    invoke-direct {v0, p0}, Landroidx/media3/ui/e0$i;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static B(Landroid/view/View;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private D()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/e0;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private E()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/media3/ui/e0;->a0(I)V

    return-void
.end method

.method private G()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/e0;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Landroidx/media3/ui/e0;->u:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/ui/e0;->V(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private H()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/e0;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic K(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/media3/ui/e0;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/e0;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/e0;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private synthetic L(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/media3/ui/e0;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/e0;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/e0;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private synthetic M(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media3/ui/e0;->y(F)V

    return-void
.end method

.method private synthetic N(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media3/ui/e0;->y(F)V

    return-void
.end method

.method private static O(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 3

    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private S(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/e0;->f0()Z

    move-result p3

    iget-boolean p5, p0, Landroidx/media3/ui/e0;->A:Z

    if-eq p5, p3, :cond_0

    iput-boolean p3, p0, Landroidx/media3/ui/e0;->A:Z

    new-instance p3, Landroidx/media3/ui/t;

    invoke-direct {p3, p0}, Landroidx/media3/ui/t;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-boolean p3, p0, Landroidx/media3/ui/e0;->A:Z

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    new-instance p2, Landroidx/media3/ui/u;

    invoke-direct {p2, p0}, Landroidx/media3/ui/u;-><init>(Landroidx/media3/ui/e0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private T()V
    .locals 9

    iget-object v0, p0, Landroidx/media3/ui/e0;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/media3/ui/e0;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Landroidx/media3/ui/e0;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/e0;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iget-object v3, p0, Landroidx/media3/ui/e0;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/ui/e0;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v1, p0, Landroidx/media3/ui/e0;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/e0;->k:Landroid/view/View;

    if-eqz v1, :cond_2

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/e0;->i:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroidx/media3/ui/e0;->B(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Landroidx/media3/ui/e0;->f:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    iget-object v6, p0, Landroidx/media3/ui/e0;->f:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/ui/e0;->B(Landroid/view/View;)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-le v1, v0, :cond_7

    iget-object v5, p0, Landroidx/media3/ui/e0;->k:Landroid/view/View;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Landroidx/media3/ui/e0;->k:Landroid/view/View;

    invoke-static {v5}, Landroidx/media3/ui/e0;->B(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    :goto_2
    if-ge v6, v4, :cond_6

    iget-object v7, p0, Landroidx/media3/ui/e0;->f:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/ui/e0;->B(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v1, v8

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gt v1, v0, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/media3/ui/e0;->f:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    iget-object v0, p0, Landroidx/media3/ui/e0;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    iget-object v1, p0, Landroidx/media3/ui/e0;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Landroidx/media3/ui/e0;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/media3/ui/e0;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/media3/ui/e0;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Landroidx/media3/ui/e0;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_5
    return-void
.end method

.method private U(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/ui/e0;->X()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroidx/media3/ui/R$id;->exo_overflow_show:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/e0;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Landroidx/media3/ui/R$id;->exo_overflow_hide:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/e0;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private V(Ljava/lang/Runnable;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroidx/media3/ui/e0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/e0;->M(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private a0(I)V
    .locals 3

    iget v0, p0, Landroidx/media3/ui/e0;->z:I

    iput p1, p0, Landroidx/media3/ui/e0;->z:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_2

    iget-object p1, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->Z()V

    :cond_2
    return-void
.end method

.method public static synthetic b(Landroidx/media3/ui/e0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/e0;->e0()V

    return-void
.end method

.method private b0(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Landroidx/media3/ui/R$id;->exo_bottom_bar:I

    if-eq p1, v0, :cond_1

    sget v0, Landroidx/media3/ui/R$id;->exo_prev:I

    if-eq p1, v0, :cond_1

    sget v0, Landroidx/media3/ui/R$id;->exo_next:I

    if-eq p1, v0, :cond_1

    sget v0, Landroidx/media3/ui/R$id;->exo_rew:I

    if-eq p1, v0, :cond_1

    sget v0, Landroidx/media3/ui/R$id;->exo_rew_with_amount:I

    if-eq p1, v0, :cond_1

    sget v0, Landroidx/media3/ui/R$id;->exo_ffwd:I

    if-eq p1, v0, :cond_1

    sget v0, Landroidx/media3/ui/R$id;->exo_ffwd_with_amount:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static synthetic c(Landroidx/media3/ui/e0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/e0;->d0()V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/ui/e0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/e0;->K(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private d0()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/ui/e0;->C:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/ui/e0;->a0(I)V

    invoke-virtual {p0}, Landroidx/media3/ui/e0;->X()V

    return-void

    :cond_0
    iget v0, p0, Landroidx/media3/ui/e0;->z:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Landroidx/media3/ui/e0;->B:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/e0;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/media3/ui/e0;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/ui/e0;->X()V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/ui/e0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/e0;->H()V

    return-void
.end method

.method private e0()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/ui/e0;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Landroidx/media3/ui/e0;->A:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/e0;->j:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroidx/media3/ui/R$dimen;->exo_styled_progress_margin_bottom:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Landroidx/media3/ui/e0;->j:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Landroidx/media3/ui/e0;->A:Z

    if-eqz v4, :cond_2

    move v0, v2

    :cond_2
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Landroidx/media3/ui/e0;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/e0;->j:Landroid/view/View;

    instance-of v3, v0, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v3, :cond_6

    check-cast v0, Landroidx/media3/ui/DefaultTimeBar;

    iget-boolean v3, p0, Landroidx/media3/ui/e0;->A:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v0, v4}, Landroidx/media3/ui/DefaultTimeBar;->hideScrubber(Z)V

    goto :goto_1

    :cond_4
    iget v3, p0, Landroidx/media3/ui/e0;->z:I

    if-ne v3, v4, :cond_5

    invoke-virtual {v0, v2}, Landroidx/media3/ui/DefaultTimeBar;->hideScrubber(Z)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    invoke-virtual {v0}, Landroidx/media3/ui/DefaultTimeBar;->showScrubber()V

    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/media3/ui/e0;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-boolean v4, p0, Landroidx/media3/ui/e0;->A:Z

    if-eqz v4, :cond_7

    invoke-direct {p0, v3}, Landroidx/media3/ui/e0;->b0(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v1

    goto :goto_3

    :cond_7
    move v4, v2

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public static synthetic f(Landroidx/media3/ui/e0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/e0;->L(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private f0()Z
    .locals 7

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/media3/ui/e0;->c:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroidx/media3/ui/e0;->B(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/ui/e0;->c:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v5, p0, Landroidx/media3/ui/e0;->c:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    sub-int/2addr v2, v3

    iget-object v3, p0, Landroidx/media3/ui/e0;->c:Landroid/view/ViewGroup;

    invoke-static {v3}, Landroidx/media3/ui/e0;->z(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroidx/media3/ui/e0;->c:Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Landroidx/media3/ui/e0;->c:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    sub-int/2addr v3, v5

    iget-object v5, p0, Landroidx/media3/ui/e0;->i:Landroid/view/ViewGroup;

    invoke-static {v5}, Landroidx/media3/ui/e0;->B(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/media3/ui/e0;->k:Landroid/view/View;

    invoke-static {v6}, Landroidx/media3/ui/e0;->B(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v5, p0, Landroidx/media3/ui/e0;->d:Landroid/view/ViewGroup;

    invoke-static {v5}, Landroidx/media3/ui/e0;->z(Landroid/view/View;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    if-le v0, v2, :cond_2

    if-gt v1, v3, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    return v4
.end method

.method public static synthetic g(Landroidx/media3/ui/e0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/e0;->G()V

    return-void
.end method

.method public static synthetic h(Landroidx/media3/ui/e0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/e0;->E()V

    return-void
.end method

.method public static synthetic i(Landroidx/media3/ui/e0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/e0;->T()V

    return-void
.end method

.method public static synthetic j(Landroidx/media3/ui/e0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/e0;->D()V

    return-void
.end method

.method public static synthetic k(Landroidx/media3/ui/e0;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroidx/media3/ui/e0;->S(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic l(Landroidx/media3/ui/e0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/e0;->N(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic m(Landroidx/media3/ui/e0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/e0;->U(Landroid/view/View;)V

    return-void
.end method

.method static synthetic n(Landroidx/media3/ui/e0;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/e0;->j:Landroid/view/View;

    return-object p0
.end method

.method static synthetic o(Landroidx/media3/ui/e0;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/ui/e0;->A:Z

    return p0
.end method

.method static synthetic p(Landroidx/media3/ui/e0;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/e0;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic q(Landroidx/media3/ui/e0;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/e0;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic r(Landroidx/media3/ui/e0;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/e0;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic s(Landroidx/media3/ui/e0;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/e0;->a0(I)V

    return-void
.end method

.method static synthetic t(Landroidx/media3/ui/e0;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/ui/e0;->B:Z

    return p0
.end method

.method static synthetic u(Landroidx/media3/ui/e0;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/e0;->B:Z

    return p1
.end method

.method static synthetic v(Landroidx/media3/ui/e0;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/e0;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic w(Landroidx/media3/ui/e0;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/e0;->h:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic x(Landroidx/media3/ui/e0;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/e0;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private y(F)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/e0;->h:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v1, p1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/media3/ui/e0;->h:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/e0;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/e0;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private static z(Landroid/view/View;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method


# virtual methods
.method public A(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/e0;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C()V
    .locals 2

    iget v0, p0, Landroidx/media3/ui/e0;->z:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/e0;->W()V

    iget-boolean v0, p0, Landroidx/media3/ui/e0;->C:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/ui/e0;->E()V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/media3/ui/e0;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Landroidx/media3/ui/e0;->H()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/media3/ui/e0;->D()V

    :cond_3
    :goto_0
    return-void
.end method

.method public F()V
    .locals 2

    iget v0, p0, Landroidx/media3/ui/e0;->z:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/e0;->W()V

    invoke-direct {p0}, Landroidx/media3/ui/e0;->E()V

    :cond_1
    :goto_0
    return-void
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/e0;->C:Z

    return v0
.end method

.method public J()Z
    .locals 1

    iget v0, p0, Landroidx/media3/ui/e0;->z:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    iget-object v1, p0, Landroidx/media3/ui/e0;->x:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public Q()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    iget-object v1, p0, Landroidx/media3/ui/e0;->x:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public R(ZIIII)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/ui/e0;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public W()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    iget-object v1, p0, Landroidx/media3/ui/e0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    iget-object v1, p0, Landroidx/media3/ui/e0;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    iget-object v1, p0, Landroidx/media3/ui/e0;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    iget-object v1, p0, Landroidx/media3/ui/e0;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public X()V
    .locals 4

    iget v0, p0, Landroidx/media3/ui/e0;->z:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/e0;->W()V

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v1, p0, Landroidx/media3/ui/e0;->C:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/e0;->w:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Landroidx/media3/ui/e0;->V(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/media3/ui/e0;->z:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/e0;->u:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/ui/e0;->V(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/e0;->v:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Landroidx/media3/ui/e0;->V(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public Y(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/e0;->C:Z

    return-void
.end method

.method public Z(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Landroidx/media3/ui/e0;->y:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-boolean p2, p0, Landroidx/media3/ui/e0;->A:Z

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Landroidx/media3/ui/e0;->b0(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p2, p0, Landroidx/media3/ui/e0;->y:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c0()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->f0()V

    iget-object v0, p0, Landroidx/media3/ui/e0;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->d0()V

    :cond_0
    invoke-direct {p0}, Landroidx/media3/ui/e0;->d0()V

    return-void
.end method
