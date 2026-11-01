.class public final synthetic Landroidx/media3/exoplayer/n4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/p4;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/p4;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/n4;->a:Landroidx/media3/exoplayer/p4;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/n4;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/n4;->a:Landroidx/media3/exoplayer/p4;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/n4;->b:Z

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/p4;->b(Landroidx/media3/exoplayer/p4;Z)V

    return-void
.end method
