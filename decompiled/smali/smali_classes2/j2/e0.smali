.class public abstract Lj2/e0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2/e0$a;
    }
.end annotation


# instance fields
.field private a:Lj2/e0$a;

.field private b:Landroidx/media3/exoplayer/upstream/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Landroidx/media3/exoplayer/upstream/e;
    .locals 1

    iget-object v0, p0, Lj2/e0;->b:Landroidx/media3/exoplayer/upstream/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/e;

    return-object v0
.end method

.method public c()Landroidx/media3/common/h0;
    .locals 1

    sget-object v0, Landroidx/media3/common/h0;->F:Landroidx/media3/common/h0;

    return-object v0
.end method

.method public d()Landroidx/media3/exoplayer/y3$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Lj2/e0$a;Landroidx/media3/exoplayer/upstream/e;)V
    .locals 0

    iput-object p1, p0, Lj2/e0;->a:Lj2/e0$a;

    iput-object p2, p0, Lj2/e0;->b:Landroidx/media3/exoplayer/upstream/e;

    return-void
.end method

.method protected final f()V
    .locals 1

    iget-object v0, p0, Lj2/e0;->a:Lj2/e0$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj2/e0$a;->onTrackSelectionsInvalidated()V

    :cond_0
    return-void
.end method

.method protected final g(Landroidx/media3/exoplayer/w3;)V
    .locals 1

    iget-object v0, p0, Lj2/e0;->a:Lj2/e0$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lj2/e0$a;->b(Landroidx/media3/exoplayer/w3;)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract i(Ljava/lang/Object;)V
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lj2/e0;->a:Lj2/e0$a;

    iput-object v0, p0, Lj2/e0;->b:Landroidx/media3/exoplayer/upstream/e;

    return-void
.end method

.method public abstract k([Landroidx/media3/exoplayer/y3;Lg2/z;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;)Lj2/f0;
.end method

.method public l(Landroidx/media3/common/c;)V
    .locals 0

    return-void
.end method

.method public m(Landroidx/media3/common/h0;)V
    .locals 0

    return-void
.end method
