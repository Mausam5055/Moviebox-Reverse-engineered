.class public final synthetic Landroidx/media3/exoplayer/c2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:Landroidx/media3/exoplayer/b2;

.field public final synthetic d:Ly1/f4;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLandroidx/media3/exoplayer/b2;Ly1/f4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/c2;->a:Landroid/content/Context;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/c2;->b:Z

    iput-object p3, p0, Landroidx/media3/exoplayer/c2;->c:Landroidx/media3/exoplayer/b2;

    iput-object p4, p0, Landroidx/media3/exoplayer/c2;->d:Ly1/f4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/c2;->a:Landroid/content/Context;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/c2;->b:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/c2;->c:Landroidx/media3/exoplayer/b2;

    iget-object v3, p0, Landroidx/media3/exoplayer/c2;->d:Ly1/f4;

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/b2$b;->a(Landroid/content/Context;ZLandroidx/media3/exoplayer/b2;Ly1/f4;)V

    return-void
.end method
