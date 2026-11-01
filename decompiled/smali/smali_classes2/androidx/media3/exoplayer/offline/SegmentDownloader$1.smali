.class Landroidx/media3/exoplayer/offline/SegmentDownloader$1;
.super Landroidx/media3/common/util/RunnableFutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/offline/SegmentDownloader;->g(Landroidx/media3/datasource/a;Lw1/h;Z)Landroidx/media3/exoplayer/offline/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/common/util/RunnableFutureTask<",
        "Landroidx/media3/exoplayer/offline/q;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/offline/SegmentDownloader;

.field final synthetic val$dataSource:Landroidx/media3/datasource/a;

.field final synthetic val$dataSpec:Lw1/h;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/offline/SegmentDownloader;Landroidx/media3/datasource/a;Lw1/h;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->this$0:Landroidx/media3/exoplayer/offline/SegmentDownloader;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->val$dataSource:Landroidx/media3/datasource/a;

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->val$dataSpec:Lw1/h;

    invoke-direct {p0}, Landroidx/media3/common/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doWork()Landroidx/media3/exoplayer/offline/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/exoplayer/offline/q;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->val$dataSource:Landroidx/media3/datasource/a;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->this$0:Landroidx/media3/exoplayer/offline/SegmentDownloader;

    invoke-static {v1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->b(Landroidx/media3/exoplayer/offline/SegmentDownloader;)Landroidx/media3/exoplayer/upstream/q$a;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->val$dataSpec:Lw1/h;

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/upstream/q;->e(Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/upstream/q$a;Lw1/h;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/q;

    return-object v0
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;->doWork()Landroidx/media3/exoplayer/offline/q;

    move-result-object v0

    return-object v0
.end method
