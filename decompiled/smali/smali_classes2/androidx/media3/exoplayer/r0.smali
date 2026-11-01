.class public final synthetic Landroidx/media3/exoplayer/r0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/q;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/r$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/r$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/r0;->a:Landroidx/media3/exoplayer/source/r$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/r0;->a:Landroidx/media3/exoplayer/source/r$a;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayer$b;->e(Landroidx/media3/exoplayer/source/r$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object v0

    return-object v0
.end method
