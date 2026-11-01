.class public final synthetic Landroidx/media3/exoplayer/offline/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/offline/DownloadService$b;

.field public final synthetic b:Landroidx/media3/exoplayer/offline/DownloadService;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/offline/DownloadService$b;Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/m;->a:Landroidx/media3/exoplayer/offline/DownloadService$b;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/m;->b:Landroidx/media3/exoplayer/offline/DownloadService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/m;->a:Landroidx/media3/exoplayer/offline/DownloadService$b;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/m;->b:Landroidx/media3/exoplayer/offline/DownloadService;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadService$b;->h(Landroidx/media3/exoplayer/offline/DownloadService$b;Landroidx/media3/exoplayer/offline/DownloadService;)V

    return-void
.end method
