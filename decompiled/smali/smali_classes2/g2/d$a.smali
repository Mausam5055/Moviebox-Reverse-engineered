.class final Lg2/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/source/f0;

.field private final b:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/f0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lg2/d$a;->b:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 1

    iget-object v0, p0, Lg2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/f0;->a(Landroidx/media3/exoplayer/v2;)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/google/common/collect/ImmutableList;
    .locals 1

    iget-object v0, p0, Lg2/d$a;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Lg2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Lg2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lg2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->isLoading()Z

    move-result v0

    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Lg2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/f0;->reevaluateBuffer(J)V

    return-void
.end method
