.class final Landroidx/media3/exoplayer/offline/DownloadManager$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/offline/c;

.field public final b:Z

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/offline/c;ZLjava/util/List;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$b;->a:Landroidx/media3/exoplayer/offline/c;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$b;->b:Z

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$b;->c:Ljava/util/List;

    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$b;->d:Ljava/lang/Exception;

    return-void
.end method
