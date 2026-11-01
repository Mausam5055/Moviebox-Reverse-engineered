.class Landroidx/media3/exoplayer/r2$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/w3$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/r2;->B(Landroidx/media3/exoplayer/y2;IZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/r2;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/r2;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/r2$a;->a:Landroidx/media3/exoplayer/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2$a;->a:Landroidx/media3/exoplayer/r2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/r2;->k(Landroidx/media3/exoplayer/r2;Z)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2$a;->a:Landroidx/media3/exoplayer/r2;

    invoke-static {v0}, Landroidx/media3/exoplayer/r2;->l(Landroidx/media3/exoplayer/r2;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/r2$a;->a:Landroidx/media3/exoplayer/r2;

    invoke-static {v0}, Landroidx/media3/exoplayer/r2;->m(Landroidx/media3/exoplayer/r2;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2$a;->a:Landroidx/media3/exoplayer/r2;

    invoke-static {v0}, Landroidx/media3/exoplayer/r2;->n(Landroidx/media3/exoplayer/r2;)Landroidx/media3/common/util/p;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
