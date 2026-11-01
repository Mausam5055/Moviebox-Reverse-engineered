.class public abstract synthetic Landroidx/media3/exoplayer/offline/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/media3/exoplayer/offline/e;)Z
    .locals 1

    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/e;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/offline/e;->moveToPosition(I)Z

    move-result p0

    return p0
.end method
