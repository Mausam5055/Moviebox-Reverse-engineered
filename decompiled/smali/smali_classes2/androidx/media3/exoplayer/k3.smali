.class public final synthetic Landroidx/media3/exoplayer/k3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/q3$a;

.field public final synthetic b:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/q3$a;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/k3;->a:Landroidx/media3/exoplayer/q3$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/k3;->b:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/k3;->a:Landroidx/media3/exoplayer/q3$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/k3;->b:Landroid/util/Pair;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/q3$a;->L(Landroidx/media3/exoplayer/q3$a;Landroid/util/Pair;)V

    return-void
.end method
