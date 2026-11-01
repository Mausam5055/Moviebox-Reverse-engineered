.class public Landroidx/media3/exoplayer/drm/r$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/r$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/exoplayer/source/r$b;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/drm/r$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/r$a;->p(Landroidx/media3/exoplayer/drm/r;)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/r$a;->s(Landroidx/media3/exoplayer/drm/r;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/r$a;->q(Landroidx/media3/exoplayer/drm/r;I)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/r$a;->n(Landroidx/media3/exoplayer/drm/r;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/r$a;->r(Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/r$a;->o(Landroidx/media3/exoplayer/drm/r;)V

    return-void
.end method

.method private synthetic n(Landroidx/media3/exoplayer/drm/r;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/r;->q(ILandroidx/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method private synthetic o(Landroidx/media3/exoplayer/drm/r;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/r;->w(ILandroidx/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method private synthetic p(Landroidx/media3/exoplayer/drm/r;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/r;->A(ILandroidx/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method private synthetic q(Landroidx/media3/exoplayer/drm/r;I)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {p1, v0, v1, p2}, Landroidx/media3/exoplayer/drm/r;->r(ILandroidx/media3/exoplayer/source/r$b;I)V

    return-void
.end method

.method private synthetic r(Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {p1, v0, v1, p2}, Landroidx/media3/exoplayer/drm/r;->x(ILandroidx/media3/exoplayer/source/r$b;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic s(Landroidx/media3/exoplayer/drm/r;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/drm/r$a;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/r;->G(ILandroidx/media3/exoplayer/source/r$b;)V

    return-void
.end method


# virtual methods
.method public g(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/r;)V
    .locals 2

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media3/exoplayer/drm/r$a$a;

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/drm/r$a$a;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/r;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/q;

    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/q;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/o;

    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/o;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/p;

    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/p;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/m;

    invoke-direct {v3, p0, v2, p1}, Landroidx/media3/exoplayer/drm/m;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;I)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/l;

    invoke-direct {v3, p0, v2, p1}, Landroidx/media3/exoplayer/drm/l;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    iget-object v1, v1, Landroidx/media3/exoplayer/drm/r$a$a;->a:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/exoplayer/drm/n;

    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/drm/n;-><init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V

    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Landroidx/media3/exoplayer/drm/r;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/r$a$a;

    iget-object v2, v1, Landroidx/media3/exoplayer/drm/r$a$a;->b:Landroidx/media3/exoplayer/drm/r;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public u(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/drm/r$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/r$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/exoplayer/drm/r$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V

    return-object v0
.end method
