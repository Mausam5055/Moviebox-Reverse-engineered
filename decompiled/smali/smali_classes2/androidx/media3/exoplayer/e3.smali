.class public final synthetic Landroidx/media3/exoplayer/e3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/q3$a;

.field public final synthetic b:Landroid/util/Pair;

.field public final synthetic c:Lg2/j;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/q3$a;Landroid/util/Pair;Lg2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/e3;->a:Landroidx/media3/exoplayer/q3$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/e3;->b:Landroid/util/Pair;

    iput-object p3, p0, Landroidx/media3/exoplayer/e3;->c:Lg2/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/e3;->a:Landroidx/media3/exoplayer/q3$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/e3;->b:Landroid/util/Pair;

    iget-object v2, p0, Landroidx/media3/exoplayer/e3;->c:Lg2/j;

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/q3$a;->M(Landroidx/media3/exoplayer/q3$a;Landroid/util/Pair;Lg2/j;)V

    return-void
.end method
