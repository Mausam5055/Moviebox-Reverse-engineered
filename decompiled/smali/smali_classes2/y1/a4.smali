.class public final synthetic Ly1/a4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly1/b4;

.field public final synthetic b:Landroid/media/metrics/PlaybackStateEvent;


# direct methods
.method public synthetic constructor <init>(Ly1/b4;Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/a4;->a:Ly1/b4;

    iput-object p2, p0, Ly1/a4;->b:Landroid/media/metrics/PlaybackStateEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ly1/a4;->a:Ly1/b4;

    iget-object v1, p0, Ly1/a4;->b:Landroid/media/metrics/PlaybackStateEvent;

    invoke-static {v0, v1}, Ly1/b4;->C0(Ly1/b4;Landroid/media/metrics/PlaybackStateEvent;)V

    return-void
.end method
