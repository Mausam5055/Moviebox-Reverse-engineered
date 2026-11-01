.class public Lcom/transsion/audio/view/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/view/d$b;
    }
.end annotation


# instance fields
.field private a:Lcom/transsion/audio/view/FloatingMagnetView;

.field private b:Ljava/lang/ref/WeakReference;

.field private final c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Lcom/transsion/baselib/db/audio/AudioBean;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audio/view/d;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/view/d;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/view/d;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/audio/view/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/view/d;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/audio/view/d;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/view/d;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/transsion/audio/view/d;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/view/d;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/transsion/audio/view/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/view/d;->c:Ljava/util/List;

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audio/view/d;->n()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/view/d;->n()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private j(Landroid/app/Activity;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/view/d;->w(I)Lcom/transsion/audio/view/d;

    const-class v0, Lcom/transsion/room/api/IAudioApi;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/api/IAudioApi;

    invoke-interface {p1, p2}, Lcom/transsion/room/api/IAudioApi;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {p1}, Lcom/transsion/audio/view/FloatingMagnetView;->isPackUp()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {p1}, Lcom/transsion/audio/view/FloatingMagnetView;->expanded()V

    :cond_1
    return-void

    :cond_2
    new-instance p2, Lcom/transsion/audio/view/EnFloatingView;

    invoke-direct {p2, p1}, Lcom/transsion/audio/view/EnFloatingView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-direct {p0, p2}, Lcom/transsion/audio/view/d;->e(Landroid/view/View;)V

    return-void
.end method

.method public static k()Lcom/transsion/audio/view/d;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/view/d$b;->a()Lcom/transsion/audio/view/d;

    move-result-object v0

    return-object v0
.end method

.method private l(Landroid/app/Activity;)Landroid/widget/FrameLayout;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private n()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/d;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public d(Landroid/app/Activity;Lcom/transsion/baselib/db/audio/AudioBean;)Lcom/transsion/audio/view/d;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/view/d;->j(Landroid/app/Activity;Lcom/transsion/baselib/db/audio/AudioBean;)V

    return-object p0
.end method

.method public f(Landroid/app/Activity;)Lcom/transsion/audio/view/d;
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/audio/view/d;->l(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/view/d;->g(Landroid/app/Activity;Landroid/widget/FrameLayout;)V

    return-object p0
.end method

.method public g(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/view/d;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/transsion/audio/view/d;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audio/view/FloatingMagnetView;->packUp()V

    :cond_0
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/transsion/audio/view/d$a;

    invoke-direct {v1, p0, p2}, Lcom/transsion/audio/view/d$a;-><init>(Lcom/transsion/audio/view/d;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/audio/view/FloatingMagnetView;->setOnOptionListener(Lcom/transsion/audio/view/EnFloatingView$f;)V

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p2, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/view/FloatingMagnetView;->attach(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/audio/view/d;->b:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/audio/view/d;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public h(Landroid/app/Activity;)Lcom/transsion/audio/view/d;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/view/d;->l(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/view/d;->i(Landroid/view/ViewGroup;)V

    return-object p0
.end method

.method public i(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/audio/view/d;->n()Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/audio/view/d;->b:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public m()Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/d;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    return-object v0
.end method

.method public o()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/Long;Ljava/lang/Long;)Lcom/transsion/audio/view/d;
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    move p1, p2

    :cond_0
    iget-object p2, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {p2, p1}, Lcom/transsion/audio/view/FloatingMagnetView;->onProgress(I)V

    :cond_1
    return-object p0
.end method

.method public q(I)Lcom/transsion/audio/view/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/audio/view/FloatingMagnetView;->onStateChanged(I)V

    :cond_0
    return-object p0
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audio/view/FloatingMagnetView;->packUp()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audio/view/FloatingMagnetView;->packUpAnimation()V

    :cond_0
    return-void
.end method

.method public t(Lcom/transsion/baselib/db/audio/AudioBean;)Lcom/transsion/audio/view/d;
    .locals 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/transsion/audio/view/d;->e:Lcom/transsion/baselib/db/audio/AudioBean;

    sget-object p1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare..mEnFloatingView.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "EnFloatingView"

    invoke-virtual {p1, v2, v0, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audio/view/FloatingMagnetView;->prepare()V

    :cond_0
    return-object p0
.end method

.method public u(Lcom/transsion/room/api/IFloatingApi$a;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public v(Lcom/transsion/room/api/IFloatingApi$a;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public w(I)Lcom/transsion/audio/view/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/view/d;->a:Lcom/transsion/audio/view/FloatingMagnetView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/view/d;->m()Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/baselib/db/audio/AudioBean;->setTitle(Ljava/lang/String;)V

    return-void
.end method
