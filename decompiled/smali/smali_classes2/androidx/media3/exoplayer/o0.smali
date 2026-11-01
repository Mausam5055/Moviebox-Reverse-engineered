.class public final synthetic Landroidx/media3/exoplayer/o0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Landroidx/media3/common/util/g;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/o0;->a:Landroidx/media3/common/util/g;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/o0;->a:Landroidx/media3/common/util/g;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    return-void
.end method
