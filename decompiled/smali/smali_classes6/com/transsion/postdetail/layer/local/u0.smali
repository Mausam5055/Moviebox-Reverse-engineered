.class public final Lcom/transsion/postdetail/layer/local/u0;
.super Lcom/transsion/postdetail/layer/local/a0;


# instance fields
.field private final b0:Landroidx/fragment/app/Fragment;

.field private c0:Lso/z;

.field private d0:I

.field private e0:I

.field private final f0:I

.field private final g0:I

.field private final h0:I

.field private i0:I

.field private j0:I

.field private k0:I

.field private l0:I

.field private m0:I

.field private n0:F

.field private o0:I

.field private p0:I

.field private q0:F

.field private r0:Z

.field private s0:Z

.field private t0:Z

.field private u0:Landroid/view/View;

.field private v0:J

.field private final w0:Lkotlin/Lazy;

.field private x0:Lcom/transsion/postdetail/layer/local/k0;

.field private y0:I

.field private z0:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/u0;->b0:Landroidx/fragment/app/Fragment;

    const/high16 p1, 0x41c00000    # 24.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/layer/local/u0;->f0:I

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/layer/local/u0;->g0:I

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/layer/local/u0;->h0:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/transsion/postdetail/layer/local/u0;->q0:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/u0;->t0:Z

    new-instance p1, Lcom/transsion/postdetail/layer/local/t0;

    invoke-direct {p1}, Lcom/transsion/postdetail/layer/local/t0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/u0;->w0:Lkotlin/Lazy;

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/postdetail/layer/local/u0;->y0:I

    return-void
.end method

.method private final A3(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->b0:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->d2()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/u0;->C3()Lcom/transsion/postdetail/layer/local/k0;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/layer/local/k0;->d(Z)V

    :cond_2
    const/16 p2, 0x2710

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/u0;->v0:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->n1()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lkotlin/ranges/RangesKt;->j(JJ)J

    move-result-wide p1

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/u0;->v0:J

    int-to-long p1, p2

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    invoke-static {v0, v1, p1, p2}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide p1

    :goto_1
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/u0;->v0:J

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_4
    return-void
.end method

.method static synthetic B3(Lcom/transsion/postdetail/layer/local/u0;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/u0;->A3(ZZ)V

    return-void
.end method

.method private final C3()Lcom/transsion/postdetail/layer/local/k0;
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->x0:Lcom/transsion/postdetail/layer/local/k0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->S:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/postdetail/layer/local/k0;

    invoke-static {v0}, Lso/a0;->a(Landroid/view/View;)Lso/a0;

    move-result-object v0

    const-string v2, "bind(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/transsion/postdetail/layer/local/k0;-><init>(Lso/a0;)V

    iput-object v1, p0, Lcom/transsion/postdetail/layer/local/u0;->x0:Lcom/transsion/postdetail/layer/local/k0;

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->x0:Lcom/transsion/postdetail/layer/local/k0;

    return-object v0
.end method

.method private final D3()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->w0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final E3(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    new-instance v0, Lkotlin/Pair;

    const-string v1, "module_name"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lkotlin/Pair;

    const-string v1, "subject_id"

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->k1()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "ops"

    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    const-string v3, "resource_id"

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->i1()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object v2, v3, p1

    invoke-static {v3}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final F3()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/u0;->D3()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lso/z;->h:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lso/z;->v:Landroid/widget/TextView;

    const-string v3, "tvPlayScale"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, v0, Lso/z;->t:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, v0, Lso/z;->w:Lcom/transsion/postdetail/ui/view/ImmSpeedView;

    sget-object v1, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {v1}, Lcom/transsion/baselib/helper/d;->d()F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->updateSpeed(FZ)V

    :cond_1
    return-void
.end method

.method private final G3()V
    .locals 8

    const v0, 0x3f38e38e

    iput v0, p0, Lcom/transsion/postdetail/layer/local/u0;->q0:F

    iget v1, p0, Lcom/transsion/postdetail/layer/local/u0;->d0:I

    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/transsion/postdetail/layer/local/u0;->j0:I

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    div-int/2addr v1, v3

    iput v1, p0, Lcom/transsion/postdetail/layer/local/u0;->i0:I

    iget v1, p0, Lcom/transsion/postdetail/layer/local/u0;->f0:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v2, v4

    iput v2, p0, Lcom/transsion/postdetail/layer/local/u0;->m0:I

    mul-int/lit8 v2, v2, 0x9

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v2, v4

    const/16 v5, 0x10

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/transsion/postdetail/layer/local/u0;->l0:I

    iget v5, p0, Lcom/transsion/postdetail/layer/local/u0;->e0:I

    int-to-float v6, v5

    mul-float/2addr v6, v0

    float-to-int v0, v6

    iput v0, p0, Lcom/transsion/postdetail/layer/local/u0;->k0:I

    sub-int v6, v5, v0

    div-int/lit8 v7, v1, 0x3

    sub-int/2addr v6, v7

    sub-int/2addr v6, v2

    div-int/2addr v6, v3

    iput v6, p0, Lcom/transsion/postdetail/layer/local/u0;->p0:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v2

    add-int/2addr v1, v6

    iput v1, p0, Lcom/transsion/postdetail/layer/local/u0;->o0:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    mul-float/2addr v0, v4

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, v6

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/postdetail/layer/local/u0;->n0:F

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v2

    const-string v0, "<get-TAG>(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/postdetail/layer/local/u0;->p0:I

    iget v3, p0, Lcom/transsion/postdetail/layer/local/u0;->o0:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initAdHW ,playerStartSpace = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", playerEndSpace = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final H3(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSpace rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/postdetail/layer/local/u0;->y0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/postdetail/layer/local/u0;->y0:I

    iget v0, p0, Lcom/transsion/postdetail/layer/local/u0;->z0:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v0

    iput v0, p0, Lcom/transsion/postdetail/layer/local/u0;->z0:I

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    const/4 v1, -0x2

    if-eqz v0, :cond_2

    iget-object v0, v0, Lso/z;->E:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_4

    iget v2, p0, Lcom/transsion/postdetail/layer/local/u0;->z0:I

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lso/z;->E:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lso/z;->D:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_8

    iget v3, p0, Lcom/transsion/postdetail/layer/local/u0;->z0:I

    :cond_8
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lso/z;->D:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method

.method private final I3(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method private static final J3(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p3, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result v1

    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p3}, Ljg/c;->k(Landroid/view/View;)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->A2(Z)V

    :goto_0
    sget-object v1, Lhj/i;->a:Lhj/i;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "module_name"

    const-string v4, "lock"

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->k1()Ljava/lang/String;

    move-result-object v4

    const-string v5, "subject_id"

    invoke-direct {v3, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "ops"

    invoke-direct {v4, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "1"

    goto :goto_2

    :cond_2
    const-string v6, "0"

    :goto_2
    const-string v7, "type"

    invoke-direct {v5, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x4

    new-array v6, v6, [Lkotlin/Pair;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    aput-object v3, v6, v0

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    invoke-static {v6}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->a3(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->W0()Lcom/transsion/baseui/widget/f;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/transsion/baseui/widget/f;->l(Z)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/u0;->D3()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lso/z;->h:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/u0;->b0:Landroidx/fragment/app/Fragment;

    sget p2, Lcom/transsion/baseui/R$string;->play_tap_unlock:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/u0;->b0:Landroidx/fragment/app/Fragment;

    sget p2, Lcom/transsion/baseui/R$string;->play_tap_lock:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private static final K3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lso/z;->i:Lcom/transsion/postdetail/ui/view/ImmScaleView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method private static final L3(Lcom/transsion/postdetail/layer/local/u0;Lcom/transsion/player/enum/ScaleMode;Ljava/lang/String;)V
    .locals 8

    const-string v0, "scaleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/z;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p2, v0}, Lcom/transsion/postdetail/layer/local/a0;->B2(Lcom/transsion/postdetail/layer/local/a0;ZILjava/lang/Object;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v3

    const-string p0, "<get-TAG>(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scaleMode:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final M3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V
    .locals 2

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string v0, "forward"

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/local/u0;->E3(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "local_video_detail"

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/transsion/postdetail/layer/local/u0;->A3(ZZ)V

    return-void
.end method

.method private static final N3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V
    .locals 2

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string v0, "backward"

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/local/u0;->E3(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "local_video_detail"

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    invoke-direct {p0, p1, p1}, Lcom/transsion/postdetail/layer/local/u0;->A3(ZZ)V

    return-void
.end method

.method private static final O3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V
    .locals 5

    sget-object p1, Lbo/c;->a:Lbo/c;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->k1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    const-string v4, "local_video_detail"

    invoke-virtual {p1, v4, v0, v1, v3}, Lbo/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, v2, p1, v0, v2}, Lcom/transsion/postdetail/layer/local/a0;->e2(Lcom/transsion/postdetail/layer/local/a0;Landroid/view/MotionEvent;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final P3(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    new-instance p2, Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;

    invoke-direct {p2}, Lcom/transsion/player/longvideo/ui/dialog/PlayerSettingDialog;-><init>()V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->b0:Landroidx/fragment/app/Fragment;

    const-string v1, "PlayerSettingDialog"

    invoke-virtual {p2, v0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "subject_id"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string v2, "subject_ops"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    const-string v2, "ops"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    const-string v2, "subject_name"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    const-string v2, "title_name"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    const-string p0, "subject_type"

    invoke-interface {p2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "module_name"

    const-string v0, "video_setting"

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lhj/i;->a:Lhj/i;

    invoke-virtual {p0, p1, p2}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final Q3()V
    .locals 0

    return-void
.end method

.method private static final R3(Lcom/transsion/postdetail/layer/local/u0;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "land onBackPressed"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/u0;->x3()V

    return-void
.end method

.method private static final S3()Z
    .locals 5

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "pk_player_ui_key"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lsm/f;->d(Lsm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static synthetic o3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/u0;->O3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p3(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/u0;->P3(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/u0;->K3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/u0;->N3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s3()Z
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/layer/local/u0;->S3()Z

    move-result v0

    return v0
.end method

.method public static synthetic t3(Lcom/transsion/postdetail/layer/local/u0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/u0;->R3(Lcom/transsion/postdetail/layer/local/u0;)V

    return-void
.end method

.method public static synthetic u3(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/local/u0;->J3(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/u0;->M3(Lcom/transsion/postdetail/layer/local/u0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w3(Lcom/transsion/postdetail/layer/local/u0;Lcom/transsion/player/enum/ScaleMode;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/u0;->L3(Lcom/transsion/postdetail/layer/local/u0;Lcom/transsion/player/enum/ScaleMode;Ljava/lang/String;)V

    return-void
.end method

.method private final x3()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->b0:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v1

    sget-object v2, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    invoke-virtual {v1, v2}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    sget-object v0, Lcom/transsion/postdetail/layer/listener/LayerFlag;->LOCAL_UI_CHANGED:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/transsion/postdetail/layer/BaseLayer;->F(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    return-void
.end method

.method private final y3()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/u0;->t0:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "subtitle_is_search_downloaded"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "subtitle_land_guide"

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/transsion/postdetail/layer/local/u0;->t0:Z

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_4
    iput-boolean v3, p0, Lcom/transsion/postdetail/layer/local/u0;->t0:Z

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, v3}, Lcom/transsion/postdetail/layer/local/a0;->A2(Z)V

    return-void
.end method

.method private final z3(II)V
    .locals 1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->p1()I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    if-lez p2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->Y0()I

    move-result v0

    if-eq v0, p2, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->z2(I)V

    invoke-virtual {p0, p2}, Lcom/transsion/postdetail/layer/local/a0;->t2(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public A0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->K:Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public B(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->B(I)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/u0;->H3(I)V

    return-void
.end method

.method public C0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D0()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public E0()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->b:Lbk/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbk/e;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public F0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->b:Lbk/e;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbk/e;->f:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public G0()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public H0()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public I0()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->J:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected J2(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->J2(Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lso/z;->b:Lbk/e;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lbk/e;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/u0;->F0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public M1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/u0;->s0:Z

    return v0
.end method

.method public N2()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->d:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public O0()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->g:Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public O2()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public P1()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public P2()Landroid/widget/ProgressBar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Q0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->C:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public Q2()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public R2()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->t:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public S2()Lcom/avery/subtitle/widget/SimpleSubtitleView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public T2()Lcom/avery/subtitle/widget/SimpleSubtitleView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->F:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public U2()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public V1()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/u0;->x3()V

    return-void
.end method

.method public V2()Lcom/avery/subtitle/widget/SimpleSubtitleView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->G:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public W1(Z)V
    .locals 0

    return-void
.end method

.method public W2()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->O:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public X2()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->A:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public Y1()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/u0;->V1()V

    return-void
.end method

.method public Y2()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->B:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public Z1()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/postdetail/layer/local/a0;->Z1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/u0;->s0:Z

    return-void
.end method

.method public Z2()Landroidx/constraintlayout/widget/Group;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->L:Landroidx/constraintlayout/widget/Group;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 11

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->LAND:Lcom/transsion/postdetail/layer/local/LocalUiType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_5

    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/u0;->r0:Z

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/transsion/player/orplayer/g;->getVideoWidth()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/transsion/player/orplayer/g;->getVideoHeight()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/transsion/postdetail/layer/local/u0;->z3(II)V

    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v6

    const-string v3, "<get-TAG>(...)"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v7, "onLocalUiChanged 2 land"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/u0;->b0:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v3

    sget-object v4, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/BarHide;

    invoke-virtual {v3, v4}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->z0()V

    invoke-virtual {p0, v2}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->l1()Lcom/transsion/postdetail/layer/SystemTimeManager;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/postdetail/layer/SystemTimeManager;->d()V

    :cond_3
    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lso/z;->H:Lso/p0;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lso/p0;->b()Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Ljg/c;->g(Landroid/view/View;)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/u0;->y3()V

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/u0;->b0:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/transsion/postdetail/layer/local/u0;->B(I)V

    goto :goto_2

    :cond_5
    iget-boolean v3, p0, Lcom/transsion/postdetail/layer/local/u0;->s0:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->K0()V

    :cond_6
    :goto_2
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "land, onLocalUiChanged uiType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "long_video_play"

    invoke-virtual {v3, v5, v4, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Lcom/transsion/postdetail/layer/local/a0;->T1(Z)V

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->a(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    return-void
.end method

.method public a2(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->a2(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/u0;->u0:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a3()Lcom/transsion/postdetail/layer/local/LocalUiType;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->LAND:Lcom/transsion/postdetail/layer/local/LocalUiType;

    return-object v0
.end method

.method public b1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->h:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/postdetail/layer/local/a0;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/u0;->r0:Z

    return-void
.end method

.method public f2()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->M:Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g2()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h2()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h3()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->P:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i2()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->u:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i3()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/postdetail/layer/local/a0;->i3()V

    return-void
.end method

.method public initPlayer()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/postdetail/layer/local/a0;->initPlayer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/u0;->s0:Z

    return-void
.end method

.method public j1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->y:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public j3()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->R:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "pageFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/local/a0;->k(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :cond_2
    :goto_0
    const/4 p3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, p3

    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/transsion/postdetail/layer/local/u0;->I3(Ljava/lang/String;Z)V

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ".mp3"

    const/4 v2, 0x2

    invoke-static {v0, v1, p3, v2, p2}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/transsion/postdetail/layer/local/a0;->s2(Ljava/lang/String;)V

    :cond_4
    iget-object p3, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p3, :cond_6

    iget-object p3, p3, Lso/z;->w:Lcom/transsion/postdetail/ui/view/ImmSpeedView;

    if-eqz p3, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, p2

    :goto_2
    invoke-virtual {p3, v0}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->setOps(Ljava/lang/String;)V

    :cond_6
    iget-object p3, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p3, :cond_8

    iget-object p3, p3, Lso/z;->i:Lcom/transsion/postdetail/ui/view/ImmScaleView;

    if-eqz p3, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object p2

    :cond_7
    invoke-virtual {p3, p2}, Lcom/transsion/postdetail/ui/view/ImmScaleView;->setOps(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public k2()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->x:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k3()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->Q:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public m(Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->m(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/u0;->x3()V

    :cond_0
    return-void
.end method

.method public m3()Landroid/view/ViewStub;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->U:Landroid/view/ViewStub;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n2()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n3()Landroid/view/ViewStub;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->V:Landroid/view/ViewStub;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public o(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->o(F)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->w:Lcom/transsion/postdetail/ui/view/ImmSpeedView;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->updateSpeed$default(Lcom/transsion/postdetail/ui/view/ImmSpeedView;FZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/postdetail/layer/local/s0;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/s0;-><init>(Lcom/transsion/postdetail/layer/local/u0;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->onCompletion(Lao/e;)V

    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/local/a0;->onProgress(JLao/e;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->isVisible()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/u0;->v0:J

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->onVideoPause(Lao/e;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->isVisible()Z

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/u0;->z3(II)V

    invoke-super {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->onVideoSizeChanged(II)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoSizeChanged, width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, v1, p1, p2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->onVideoStart(Lao/e;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->isVisible()Z

    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "resourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subjectId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Lcom/transsion/postdetail/layer/local/a0;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p2}, Lcom/transsion/postdetail/layer/local/a0;->v2(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/postdetail/layer/local/u0;->b0:Landroidx/fragment/app/Fragment;

    const-string p4, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {p3}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lhj/b;->f()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    const-string p3, ""

    :cond_1
    iget-object p4, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p4, :cond_2

    iget-object p4, p4, Lso/z;->w:Lcom/transsion/postdetail/ui/view/ImmSpeedView;

    if-eqz p4, :cond_2

    invoke-virtual {p4, p3, p2}, Lcom/transsion/postdetail/ui/view/ImmSpeedView;->setPageParams(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p4, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p4, :cond_3

    iget-object p4, p4, Lso/z;->i:Lcom/transsion/postdetail/ui/view/ImmScaleView;

    if-eqz p4, :cond_3

    invoke-virtual {p4, p3, p2}, Lcom/transsion/postdetail/ui/view/ImmScaleView;->setPageParams(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1, p5}, Lcom/transsion/postdetail/layer/local/u0;->I3(Ljava/lang/String;Z)V

    return-void
.end method

.method public p2()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->q(II)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSurface, width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public q1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->n:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public q2()Lcom/tn/lib/view/SecondariesSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->N:Lcom/tn/lib/view/SecondariesSeekBar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public r(Landroid/view/View;Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 2

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->LAND:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lso/z;->a(Landroid/view/View;)Lso/z;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    invoke-super {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->r(Landroid/view/View;Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/layer/local/u0;->d0:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    iput p1, p0, Lcom/transsion/postdetail/layer/local/u0;->e0:I

    iget p2, p0, Lcom/transsion/postdetail/layer/local/u0;->d0:I

    if-ge p1, p2, :cond_1

    iput p2, p0, Lcom/transsion/postdetail/layer/local/u0;->e0:I

    iput p1, p0, Lcom/transsion/postdetail/layer/local/u0;->d0:I

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_2

    iget p2, p0, Lcom/transsion/postdetail/layer/local/u0;->e0:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/postdetail/layer/local/u0;->e0:I

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/u0;->b0:Landroidx/fragment/app/Fragment;

    const-string p2, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lhj/b;->f()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    :cond_3
    const-string p2, ""

    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lso/z;->h:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/transsion/postdetail/layer/local/l0;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/postdetail/layer/local/l0;-><init>(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "subtitle_land_guide"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/u0;->t0:Z

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/u0;->G3()V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/u0;->Q3()V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lso/z;->q:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/transsion/postdetail/layer/local/m0;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/m0;-><init>(Lcom/transsion/postdetail/layer/local/u0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lso/z;->i:Lcom/transsion/postdetail/ui/view/ImmScaleView;

    if-eqz p1, :cond_7

    new-instance v0, Lcom/transsion/postdetail/layer/local/n0;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/n0;-><init>(Lcom/transsion/postdetail/layer/local/u0;)V

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/view/ImmScaleView;->setOnModelChangeListener(Lcom/transsion/postdetail/ui/view/ImmScaleView$a;)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lso/z;->b:Lbk/e;

    if-eqz p1, :cond_8

    iget-object v0, p1, Lbk/e;->e:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/transsion/postdetail/layer/local/o0;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/o0;-><init>(Lcom/transsion/postdetail/layer/local/u0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lbk/e;->c:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/transsion/postdetail/layer/local/p0;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/p0;-><init>(Lcom/transsion/postdetail/layer/local/u0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lbk/e;->d:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/transsion/postdetail/layer/local/q0;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/q0;-><init>(Lcom/transsion/postdetail/layer/local/u0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lso/z;->z:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_9

    new-instance v0, Lcom/transsion/postdetail/layer/local/r0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/postdetail/layer/local/r0;-><init>(Lcom/transsion/postdetail/layer/local/u0;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/u0;->F3()V

    return-void
.end method

.method public r1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/z;->m:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public s1(Landroid/view/MotionEvent;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ltz v1, :cond_0

    if-gt v1, p2, :cond_0

    invoke-static {p0, v0, v0, v3, v2}, Lcom/transsion/postdetail/layer/local/u0;->B3(Lcom/transsion/postdetail/layer/local/u0;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    mul-int/2addr p2, v3

    if-le v1, p2, :cond_1

    const/4 p1, 0x1

    invoke-static {p0, p1, v0, v3, v2}, Lcom/transsion/postdetail/layer/local/u0;->B3(Lcom/transsion/postdetail/layer/local/u0;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, v0}, Lcom/transsion/postdetail/layer/local/a0;->s1(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, v0}, Lcom/transsion/postdetail/layer/local/a0;->s1(Landroid/view/MotionEvent;Z)V

    :goto_0
    return-void
.end method

.method public u2(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->u2(Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/u0;->c0:Lso/z;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/z;->b:Lbk/e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lbk/e;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/baseui/R$drawable;->ic_player_pause:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/baseui/R$drawable;->ic_player_play:I

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method
