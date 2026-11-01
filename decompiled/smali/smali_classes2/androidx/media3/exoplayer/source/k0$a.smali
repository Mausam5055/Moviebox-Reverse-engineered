.class final Landroidx/media3/exoplayer/source/k0$a;
.super Ljava/lang/Object;

# interfaces
.implements Lg2/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lg2/u;

.field private final b:J


# direct methods
.method public constructor <init>(Lg2/u;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k0$a;->a:Lg2/u;

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/k0$a;->b:J

    return-void
.end method


# virtual methods
.method public a()Lg2/u;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k0$a;->a:Lg2/u;

    return-object v0
.end method

.method public c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k0$a;->a:Lg2/u;

    invoke-interface {v0, p1, p2, p3}, Lg2/u;->c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    iget-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/k0$a;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    :cond_0
    return p1
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k0$a;->a:Lg2/u;

    invoke-interface {v0}, Lg2/u;->isReady()Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k0$a;->a:Lg2/u;

    invoke-interface {v0}, Lg2/u;->maybeThrowError()V

    return-void
.end method

.method public skipData(J)I
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k0$a;->a:Lg2/u;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/k0$a;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lg2/u;->skipData(J)I

    move-result p1

    return p1
.end method
