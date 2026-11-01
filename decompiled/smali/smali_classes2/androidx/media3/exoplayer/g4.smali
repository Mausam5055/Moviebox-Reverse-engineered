.class public final synthetic Landroidx/media3/exoplayer/g4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/k4;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/k4;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/g4;->a:Landroidx/media3/exoplayer/k4;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/g4;->b:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/g4;->a:Landroidx/media3/exoplayer/k4;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/g4;->b:Z

    check-cast p1, Landroidx/media3/exoplayer/k4$c;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/k4;->a(Landroidx/media3/exoplayer/k4;ZLandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;

    move-result-object p1

    return-object p1
.end method
