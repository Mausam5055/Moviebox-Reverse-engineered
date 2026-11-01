.class public final synthetic Landroidx/media3/exoplayer/o3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/q3$a;

.field public final synthetic b:Landroid/util/Pair;

.field public final synthetic c:Lg2/i;

.field public final synthetic d:Lg2/j;

.field public final synthetic e:Ljava/io/IOException;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/q3$a;Landroid/util/Pair;Lg2/i;Lg2/j;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/o3;->a:Landroidx/media3/exoplayer/q3$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/o3;->b:Landroid/util/Pair;

    iput-object p3, p0, Landroidx/media3/exoplayer/o3;->c:Lg2/i;

    iput-object p4, p0, Landroidx/media3/exoplayer/o3;->d:Lg2/j;

    iput-object p5, p0, Landroidx/media3/exoplayer/o3;->e:Ljava/io/IOException;

    iput-boolean p6, p0, Landroidx/media3/exoplayer/o3;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/o3;->a:Landroidx/media3/exoplayer/q3$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/o3;->b:Landroid/util/Pair;

    iget-object v2, p0, Landroidx/media3/exoplayer/o3;->c:Lg2/i;

    iget-object v3, p0, Landroidx/media3/exoplayer/o3;->d:Lg2/j;

    iget-object v4, p0, Landroidx/media3/exoplayer/o3;->e:Ljava/io/IOException;

    iget-boolean v5, p0, Landroidx/media3/exoplayer/o3;->f:Z

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/q3$a;->O(Landroidx/media3/exoplayer/q3$a;Landroid/util/Pair;Lg2/i;Lg2/j;Ljava/io/IOException;Z)V

    return-void
.end method
