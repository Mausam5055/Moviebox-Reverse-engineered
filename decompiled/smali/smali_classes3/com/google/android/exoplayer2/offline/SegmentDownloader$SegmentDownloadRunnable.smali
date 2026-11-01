.class final Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;
.super Lcom/google/android/exoplayer2/util/RunnableFutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SegmentDownloadRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheWriter:Lcom/google/android/exoplayer2/upstream/cache/i;

.field public final dataSource:Lcom/google/android/exoplayer2/upstream/cache/a;

.field private final progressNotifier:Lcom/google/android/exoplayer2/offline/SegmentDownloader$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final segment:Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;

.field public final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;Lcom/google/android/exoplayer2/upstream/cache/a;Lcom/google/android/exoplayer2/offline/SegmentDownloader$a;[B)V
    .locals 1
    .param p3    # Lcom/google/android/exoplayer2/offline/SegmentDownloader$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Lcom/google/android/exoplayer2/offline/SegmentDownloader$a;

    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/i;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-direct {v0, p2, p1, p4, p3}, Lcom/google/android/exoplayer2/upstream/cache/i;-><init>(Lcom/google/android/exoplayer2/upstream/cache/a;Lcom/google/android/exoplayer2/upstream/n;[BLcom/google/android/exoplayer2/upstream/cache/i$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Lcom/google/android/exoplayer2/upstream/cache/i;

    return-void
.end method


# virtual methods
.method protected cancelWork()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/i;->b()V

    return-void
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->doWork()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doWork()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/i;->a()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Lcom/google/android/exoplayer2/offline/SegmentDownloader$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$a;->c()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
