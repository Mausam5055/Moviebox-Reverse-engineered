.class public final synthetic Landroidx/media3/exoplayer/video/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Landroidx/media3/common/util/p;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/n;->a:Landroidx/media3/common/util/p;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/n;->a:Landroidx/media3/common/util/p;

    invoke-interface {v0, p1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
