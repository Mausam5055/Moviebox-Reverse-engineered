.class public final synthetic Landroidx/media3/exoplayer/drm/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/m;


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/e;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/e;->a:Ljava/lang/Throwable;

    check-cast p1, Landroidx/media3/exoplayer/drm/r$a;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->g(Ljava/lang/Throwable;Landroidx/media3/exoplayer/drm/r$a;)V

    return-void
.end method
