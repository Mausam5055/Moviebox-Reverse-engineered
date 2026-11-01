.class public final Ltv/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/g$a;
    }
.end annotation


# instance fields
.field private final a:Ltv/g$a;

.field private final b:Ltv/i;

.field private c:Landroid/view/GestureDetector;

.field private d:Z

.field private e:Z

.field private f:F


# direct methods
.method public constructor <init>(Ltv/g$a;Ltv/i;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/g;->a:Ltv/g$a;

    iput-object p2, p0, Ltv/g;->b:Ltv/i;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Ltv/g;->j(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Ltv/g;)Ltv/g$a;
    .locals 0

    iget-object p0, p0, Ltv/g;->a:Ltv/g$a;

    return-object p0
.end method

.method public static final synthetic c(Ltv/g;)Z
    .locals 0

    iget-boolean p0, p0, Ltv/g;->e:Z

    return p0
.end method

.method public static final synthetic d(Ltv/g;)V
    .locals 0

    invoke-direct {p0}, Ltv/g;->l()V

    return-void
.end method

.method public static final synthetic e(Ltv/g;Z)V
    .locals 0

    iput-boolean p1, p0, Ltv/g;->e:Z

    return-void
.end method

.method public static final synthetic f(Ltv/g;Z)V
    .locals 0

    iput-boolean p1, p0, Ltv/g;->d:Z

    return-void
.end method

.method public static final synthetic g(Ltv/g;)V
    .locals 0

    invoke-direct {p0}, Ltv/g;->n()V

    return-void
.end method

.method private final h()V
    .locals 8

    iget v0, p0, Ltv/g;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v0}, Ltv/g$a;->getLogTag()Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Ltv/g;->f:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endFastForward speed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v0}, Ltv/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p0, Ltv/g;->f:F

    invoke-interface {v0, v2}, Lcom/transsion/player/orplayer/g;->setSpeed(F)V

    :cond_0
    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->F:Lcom/noober/background/view/BLTextView;

    const-string v2, "tvUgcImmTopSpeed"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iput v1, p0, Ltv/g;->f:F

    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/g$a;->e(Z)V

    :cond_1
    return-void
.end method

.method private static final j(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final l()V
    .locals 2

    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v0}, Ltv/g$a;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/g$a;->e(Z)V

    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v0}, Ltv/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v0, v1}, Ltv/g$a;->h(Z)V

    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v0}, Ltv/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v0}, Ltv/g$a;->g()V

    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/g$a;->h(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final n()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v1}, Ltv/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v1}, Ltv/g$a;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->X0()F

    move-result v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iput v1, v0, Ltv/g;->f:F

    iget-object v1, v0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v1}, Ltv/g$a;->getOrPlayer()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_2

    iget v3, v0, Ltv/g;->f:F

    mul-float/2addr v3, v2

    invoke-interface {v1, v3}, Lcom/transsion/player/orplayer/g;->setSpeed(F)V

    :cond_2
    iget-object v4, v0, Ltv/g;->b:Ltv/i;

    iget-object v1, v0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v1}, Ltv/g$a;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_3
    move-object v6, v3

    :goto_1
    iget-object v1, v0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v1}, Ltv/g$a;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    const/16 v10, 0x18

    const/4 v11, 0x0

    const-string v5, "long_pressed"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    sget-object v12, Llg/a;->a:Llg/a$a;

    iget-object v1, v0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v1}, Ltv/g$a;->getLogTag()Ljava/lang/String;

    move-result-object v13

    iget v1, v0, Ltv/g;->f:F

    mul-float/2addr v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startFastForward speed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v1}, Ltv/g$a;->a()Lqv/r;

    move-result-object v1

    iget-object v1, v1, Lqv/r;->F:Lcom/noober/background/view/BLTextView;

    iget v3, v0, Ltv/g;->f:F

    mul-float/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v1}, Ltv/g$a;->a()Lqv/r;

    move-result-object v1

    iget-object v1, v1, Lqv/r;->F:Lcom/noober/background/view/BLTextView;

    const-string v2, "tvUgcImmTopSpeed"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v1, v0, Ltv/g;->a:Ltv/g$a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ltv/g$a;->e(Z)V

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 3

    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    invoke-virtual {v0}, Lqv/r;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Ltv/g$b;

    invoke-direct {v2, p0}, Ltv/g$b;-><init>(Ltv/g;)V

    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Ltv/g;->c:Landroid/view/GestureDetector;

    new-instance v1, Lcom/transsion/baseui/widget/f;

    iget-object v2, p0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v2}, Ltv/g$a;->a()Lqv/r;

    move-result-object v2

    iget-object v2, v2, Lqv/r;->L:Lcom/transsion/shorttv/ui/widget/ShortTvVideoProgressDragGestureView;

    invoke-direct {v1, v0, v2}, Lcom/transsion/baseui/widget/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Ltv/g$c;

    invoke-direct {v2, p0, v0}, Ltv/g$c;-><init>(Ltv/g;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/transsion/baseui/widget/f;->s(Lcom/transsion/baseui/widget/f$a;)V

    iget-object v0, p0, Ltv/g;->a:Ltv/g$a;

    invoke-interface {v0}, Ltv/g$a;->a()Lqv/r;

    move-result-object v0

    iget-object v0, v0, Lqv/r;->y:Lcom/tn/lib/view/SecondariesSeekBar;

    new-instance v1, Ltv/f;

    invoke-direct {v1}, Ltv/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Ltv/g;->e:Z

    return v0
.end method

.method public final m(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Ltv/g;->d:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ltv/g;->d:Z

    invoke-direct {p0}, Ltv/g;->h()V

    :cond_1
    :goto_0
    iget-object v0, p0, Ltv/g;->c:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method
