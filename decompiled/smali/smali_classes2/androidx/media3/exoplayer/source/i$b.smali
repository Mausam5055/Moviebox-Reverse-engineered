.class final Landroidx/media3/exoplayer/source/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/r;


# direct methods
.method public constructor <init>(Landroidx/media3/common/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/i$b;->a:Landroidx/media3/common/r;

    return-void
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v0

    new-instance v1, Ll2/m0$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Ll2/m0$b;-><init>(J)V

    invoke-interface {p1, v1}, Ll2/t;->f(Ll2/m0;)V

    invoke-interface {p1}, Ll2/t;->endTracks()V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i$b;->a:Landroidx/media3/common/r;

    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object p1

    const-string v1, "text/x-unknown"

    invoke-virtual {p1, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/i$b;->a:Landroidx/media3/common/r;

    iget-object v1, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    invoke-interface {v0, p1}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 0

    const p2, 0x7fffffff

    invoke-interface {p1, p2}, Ll2/s;->skip(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ll2/s;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic e()Ll2/r;
    .locals 1

    invoke-static {p0}, Ll2/q;->b(Ll2/r;)Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ll2/q;->a(Ll2/r;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    return-void
.end method
