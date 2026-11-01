.class final Landroidx/media3/exoplayer/k4$d;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/k4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/k4;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/k4;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/k4;Landroidx/media3/exoplayer/k4$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4$d;-><init>(Landroidx/media3/exoplayer/k4;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/k4$d;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/k4$d;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    invoke-static {v0}, Landroidx/media3/exoplayer/k4;->h(Landroidx/media3/exoplayer/k4;)Landroidx/media3/exoplayer/k4$d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    invoke-static {v0}, Landroidx/media3/exoplayer/k4;->g(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/util/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/k4$c;

    iget v0, v0, Landroidx/media3/exoplayer/k4$c;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    invoke-static {v1}, Landroidx/media3/exoplayer/k4;->g(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/util/g;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    invoke-static {v2, v0}, Landroidx/media3/exoplayer/k4;->i(Landroidx/media3/exoplayer/k4;I)Landroidx/media3/exoplayer/k4$c;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    invoke-static {p1}, Landroidx/media3/exoplayer/k4;->g(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/util/g;

    move-result-object p1

    new-instance p2, Landroidx/media3/exoplayer/l4;

    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/l4;-><init>(Landroidx/media3/exoplayer/k4$d;)V

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    return-void
.end method
