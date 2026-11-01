.class public final synthetic Landroidx/media3/exoplayer/drm/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/m;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/drm/b;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/drm/b;->a:I

    check-cast p1, Landroidx/media3/exoplayer/drm/r$a;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->h(ILandroidx/media3/exoplayer/drm/r$a;)V

    return-void
.end method
