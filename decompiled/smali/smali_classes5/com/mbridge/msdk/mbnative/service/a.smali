.class public Lcom/mbridge/msdk/mbnative/service/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

.field private b:Landroid/os/Handler;

.field private c:Lcom/mbridge/msdk/mbnative/listener/a;

.field private d:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/mbnative/listener/a;Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/service/a;->c:Lcom/mbridge/msdk/mbnative/listener/a;

    iput-object p2, p0, Lcom/mbridge/msdk/mbnative/service/a;->d:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->c:Lcom/mbridge/msdk/mbnative/listener/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbnative/listener/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/service/a;->f()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/service/a;->b:Landroid/os/Handler;

    new-instance p2, Lcom/mbridge/msdk/mbnative/service/a$a;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/mbnative/service/a$a;-><init>(Lcom/mbridge/msdk/mbnative/service/a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->c:Lcom/mbridge/msdk/mbnative/listener/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbnative/listener/a;->b()V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/service/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/service/a;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->c:Lcom/mbridge/msdk/mbnative/listener/a;

    const-string v1, "current request is loading"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbnative/listener/a;->onAdLoadError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->c:Lcom/mbridge/msdk/mbnative/listener/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbnative/listener/a;->b()V

    return-void
.end method

.method public static preload(Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "NativeProvider"

    const-string v1, "native provider preload"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mbridge/msdk/mbnative/controller/d;

    invoke-direct {v0}, Lcom/mbridge/msdk/mbnative/controller/d;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/mbridge/msdk/mbnative/controller/d;->a(Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "NativeProvider"

    const-string v1, "clear cache failed"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Lcom/mbridge/msdk/mbnative/controller/NativeController;

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->c:Lcom/mbridge/msdk/mbnative/listener/a;

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/service/a;->d:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {p2, v0, v1, p3, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;-><init>(Lcom/mbridge/msdk/mbnative/listener/a;Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;Ljava/util/Map;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mbridge/msdk/mbnative/service/a;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    return-void
.end method

.method public a(Landroid/view/View;Lcom/mbridge/msdk/out/Campaign;)V
    .locals 2

    const-string v0, "NativeProvider"

    const-string v1, "native provider registerView"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/out/Campaign;Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/List;Lcom/mbridge/msdk/out/Campaign;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/mbridge/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p3, p1, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/mbridge/msdk/mbnative/listener/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/service/a;->c:Lcom/mbridge/msdk/mbnative/listener/a;

    return-void
.end method

.method public a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/service/a;->d:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mbridge/msdk/mbnative/service/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public b(Landroid/view/View;Lcom/mbridge/msdk/out/Campaign;)V
    .locals 2

    const-string v0, "NativeProvider"

    const-string v1, "native provider unregisterView"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/out/Campaign;Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;Ljava/util/List;Lcom/mbridge/msdk/out/Campaign;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/mbridge/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    const-string v0, "NativeProvider"

    const-string v1, "native provider unregisterView"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p3, p1, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/mbnative/service/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/mbnative/service/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/service/a;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "NativeProvider"

    const-string v1, "release failed"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
