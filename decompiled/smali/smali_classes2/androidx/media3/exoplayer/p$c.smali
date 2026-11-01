.class final Landroidx/media3/exoplayer/p$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/m4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final e:Landroid/media/RouteDiscoveryPreference;


# instance fields
.field private a:Landroid/media/MediaRouter2;

.field private b:Landroid/media/MediaRouter2$RouteCallback;

.field private c:Landroid/media/MediaRouter2$ControllerCallback;

.field private d:Landroidx/media3/common/util/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroidx/media3/exoplayer/c0;->a()V

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/t;->a(Ljava/util/List;Z)Landroid/media/RouteDiscoveryPreference$Builder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/d0;->a(Landroid/media/RouteDiscoveryPreference$Builder;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/p$c;->e:Landroid/media/RouteDiscoveryPreference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/p$a;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/p$c;-><init>()V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/p$c;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/p$c;->k()V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/p$c;->l(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/p$c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/p$c;->m(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic f(Landroidx/media3/exoplayer/p$c;)Landroid/media/MediaRouter2;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    return-object p0
.end method

.method static synthetic g(Landroid/media/MediaRouter2;)Z
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/p$c;->j(Landroid/media/MediaRouter2;)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/p$c;)Landroidx/media3/common/util/g;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    return-object p0
.end method

.method private static i(Landroid/media/MediaRoute2Info;IZ)Z
    .locals 2

    invoke-static {p0}, Landroidx/media3/exoplayer/b0;->a(Landroid/media/MediaRoute2Info;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    if-eq p1, v1, :cond_0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private static j(Landroid/media/MediaRouter2;)Z
    .locals 3

    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/h0;->a(Ljava/lang/Object;)Landroid/media/MediaRouter2;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/v;->a(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/w;->a(Landroid/media/MediaRouter2$RoutingController;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/x;->a(Landroid/media/RoutingSessionInfo;)I

    move-result v0

    invoke-static {p0}, Landroidx/media3/exoplayer/v;->a(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/exoplayer/y;->a(Landroid/media/MediaRouter2$RoutingController;)Z

    move-result v1

    invoke-static {p0}, Landroidx/media3/exoplayer/v;->a(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/exoplayer/z;->a(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/exoplayer/a0;->a(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/p$c;->i(Landroid/media/MediaRoute2Info;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic k()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/h0;->a(Ljava/lang/Object;)Landroid/media/MediaRouter2;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/p$c;->c:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/exoplayer/i0;->a(Ljava/lang/Object;)Landroid/media/MediaRouter2$ControllerCallback;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/j0;->a(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$ControllerCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/p$c;->c:Landroid/media/MediaRouter2$ControllerCallback;

    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/p$c;->b:Landroid/media/MediaRouter2$RouteCallback;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/exoplayer/k0;->a(Ljava/lang/Object;)Landroid/media/MediaRouter2$RouteCallback;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/u;->a(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RouteCallback;)V

    return-void
.end method

.method private static synthetic l(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/m4$a;->a(Z)V

    return-void
.end method

.method private synthetic m(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/exoplayer/e0;->a(Landroid/content/Context;)Landroid/media/MediaRouter2;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    new-instance p1, Landroidx/media3/exoplayer/p$c$a;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/p$c$a;-><init>(Landroidx/media3/exoplayer/p$c;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/p$c;->b:Landroid/media/MediaRouter2$RouteCallback;

    iget-object p1, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/o0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/o0;-><init>(Landroidx/media3/common/util/g;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/p$c;->b:Landroid/media/MediaRouter2$RouteCallback;

    sget-object v2, Landroidx/media3/exoplayer/p$c;->e:Landroid/media/RouteDiscoveryPreference;

    invoke-static {p1, v0, v1, v2}, Landroidx/media3/exoplayer/f0;->a(Landroid/media/MediaRouter2;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    new-instance p1, Landroidx/media3/exoplayer/p$c$b;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/p$c$b;-><init>(Landroidx/media3/exoplayer/p$c;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/p$c;->c:Landroid/media/MediaRouter2$ControllerCallback;

    iget-object v1, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    invoke-static {v1, v0, p1}, Landroidx/media3/exoplayer/g0;->a(Landroid/media/MediaRouter2;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->a:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroidx/media3/exoplayer/p$c;->j(Landroid/media/MediaRouter2;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public b(Landroidx/media3/exoplayer/m4$a;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;)V
    .locals 7

    new-instance v6, Landroidx/media3/common/util/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v5, Landroidx/media3/exoplayer/m0;

    invoke-direct {v5, p1}, Landroidx/media3/exoplayer/m0;-><init>(Landroidx/media3/exoplayer/m4$a;)V

    move-object v0, v6

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/g;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/common/util/g$a;)V

    iput-object v6, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    new-instance p1, Landroidx/media3/exoplayer/n0;

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/n0;-><init>(Landroidx/media3/exoplayer/p$c;Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disable()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/p$c;->d:Landroidx/media3/common/util/g;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/g;

    new-instance v1, Landroidx/media3/exoplayer/l0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/l0;-><init>(Landroidx/media3/exoplayer/p$c;)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    return-void
.end method
