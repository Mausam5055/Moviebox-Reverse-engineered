.class public final Lcom/transsion/postdetail/layer/local/i0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/local/i0$a;
    }
.end annotation


# static fields
.field public static final v:Lcom/transsion/postdetail/layer/local/i0$a;

.field private static final w:Lkotlin/Lazy;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

.field private k:Landroidx/appcompat/widget/AppCompatImageView;

.field private l:Lkotlin/jvm/functions/Function1;

.field private m:Lkotlin/jvm/functions/Function0;

.field private n:I

.field private o:I

.field private p:J

.field private q:I

.field private r:Landroid/os/Handler;

.field private s:I

.field private t:I

.field private final u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/layer/local/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/layer/local/i0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/layer/local/i0;->v:Lcom/transsion/postdetail/layer/local/i0$a;

    new-instance v0, Lcom/transsion/postdetail/layer/local/d0;

    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/d0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetail/layer/local/i0;->w:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/transsion/postdetail/layer/local/i0;->n:I

    iput v0, p0, Lcom/transsion/postdetail/layer/local/i0;->o:I

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/i0;->p:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->r:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/layer/local/i0;->s:I

    iput v0, p0, Lcom/transsion/postdetail/layer/local/i0;->t:I

    new-instance v0, Lcom/transsion/postdetail/layer/local/e0;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/e0;-><init>(Lcom/transsion/postdetail/layer/local/i0;)V

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->u:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/i0;->p(I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/postdetail/layer/local/i0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/i0;->i(Lcom/transsion/postdetail/layer/local/i0;)V

    return-void
.end method

.method public static synthetic c()Lcom/transsion/postdetail/layer/local/i0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/layer/local/i0;->j()Lcom/transsion/postdetail/layer/local/i0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/i0;->n(I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/i0;->o(I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/layer/local/i0;->w:Lkotlin/Lazy;

    return-object v0
.end method

.method private final h()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/i0;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final i(Lcom/transsion/postdetail/layer/local/i0;)V
    .locals 7

    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->q:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/i0;->m()V

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->s:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->t:I

    :goto_0
    sget-object v2, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    invoke-virtual {v2}, Lcom/transsion/ad/scene/b;->l()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/transsion/postdetail/layer/local/i0;->o:I

    iget v3, p0, Lcom/transsion/postdetail/layer/local/i0;->q:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_4

    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_3
    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "LocalVideoLandAdControl"

    const-string v3, "countdownRunnable, show adCloseView"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/transsion/postdetail/layer/local/i0;->q:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/transsion/postdetail/layer/local/i0;->q:I

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->refreshCountDown(I)V

    :cond_5
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/i0;->h()V

    return-void
.end method

.method private static final j()Lcom/transsion/postdetail/layer/local/i0;
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/layer/local/i0;

    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/i0;-><init>()V

    return-object v0
.end method

.method private final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/i0;->e:Z

    return v0
.end method

.method private final m()V
    .locals 9

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCountdownFinish, curAdType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocalVideoLandAdControl"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    const/16 v1, 0x8

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v8, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v8, :cond_3

    if-eq v0, v7, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/local/i0;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/i0;->g:Z

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/i0;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocalVideoLandAdControl"

    const-string v2, "onCountdownFinish, end finish , show pause"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/i0;->g(I)V

    new-instance v0, Lcom/transsion/postdetail/layer/local/h0;

    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/h0;-><init>()V

    invoke-virtual {p0, v8, v0}, Lcom/transsion/postdetail/layer/local/i0;->v(ILkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocalVideoLandAdControl"

    const-string v2, "onCountdownFinish, end finish now"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->l:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocalVideoLandAdControl"

    const-string v2, "onCountdownFinish, pause finish now"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->l:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->d:I

    iput v0, p0, Lcom/transsion/postdetail/layer/local/i0;->c:I

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->m:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/i0;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocalVideoLandAdControl"

    const-string v2, "onCountdownFinish, start finish, show end"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/i0;->g(I)V

    new-instance v0, Lcom/transsion/postdetail/layer/local/f0;

    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/f0;-><init>()V

    invoke-virtual {p0, v7, v0}, Lcom/transsion/postdetail/layer/local/i0;->v(ILkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/i0;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocalVideoLandAdControl"

    const-string v2, "onCountdownFinish, start finish, show pause"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget v0, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/i0;->g(I)V

    new-instance v0, Lcom/transsion/postdetail/layer/local/g0;

    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/g0;-><init>()V

    invoke-virtual {p0, v8, v0}, Lcom/transsion/postdetail/layer/local/i0;->v(ILkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_8
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocalVideoLandAdControl"

    const-string v2, "onCountdownFinish, start finish now"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->l:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_0
    return-void
.end method

.method private static final n(I)Lkotlin/Unit;
    .locals 0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final o(I)Lkotlin/Unit;
    .locals 0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final p(I)Lkotlin/Unit;
    .locals 0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final q(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iget p1, p0, Lcom/transsion/postdetail/layer/local/i0;->o:I

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/i0;->w(I)V

    return-void
.end method

.method private final r(Lkotlin/jvm/functions/Function1;)V
    .locals 7

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->refreshCountDown(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "LocalVideoLandAdControl"

    const-string v3, "onShowPauseAd"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final s(Lkotlin/jvm/functions/Function1;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocalVideoLandAdControl"

    const-string v2, "onShowStartAd"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget p1, p0, Lcom/transsion/postdetail/layer/local/i0;->n:I

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/i0;->w(I)V

    return-void
.end method

.method private final u()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/i0;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private final w(I)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCountdown, countdownTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocalVideoLandAdControl"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput p1, p0, Lcom/transsion/postdetail/layer/local/i0;->q:I

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/i0;->j:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/i0;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/i0;->u:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final g(I)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----closeLandAd, adType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocalVideoLandAdControl"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/i0;->u()V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/i0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/i0;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/i0;->g:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/i0;->a:J

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/i0;->b:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/i0;->p:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/i0;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/i0;->h:Z

    :cond_3
    return v1
.end method

.method public final t(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/i0;->b:J

    iput-wide p3, p0, Lcom/transsion/postdetail/layer/local/i0;->a:J

    return-void
.end method

.method public final v(ILkotlin/jvm/functions/Function1;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----showLandAd, adType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "LocalVideoLandAdControl"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput p1, p0, Lcom/transsion/postdetail/layer/local/i0;->i:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/layer/local/i0;->q(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/layer/local/i0;->r(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/transsion/postdetail/layer/local/i0;->s(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method
