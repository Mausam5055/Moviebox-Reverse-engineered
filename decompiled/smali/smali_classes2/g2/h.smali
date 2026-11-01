.class public final Lg2/h;
.super Ljava/lang/Object;

# interfaces
.implements Lg2/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 0

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroidx/media3/decoder/a;->setFlags(I)V

    const/4 p1, -0x4

    return p1
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .locals 0

    return-void
.end method

.method public skipData(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
