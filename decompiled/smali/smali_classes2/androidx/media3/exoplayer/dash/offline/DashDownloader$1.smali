.class Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;
.super Landroidx/media3/common/util/RunnableFutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/dash/offline/DashDownloader;->n(Landroidx/media3/datasource/a;ILa2/j;Z)Lz1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/common/util/RunnableFutureTask<",
        "Ll2/h;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/dash/offline/DashDownloader;

.field final synthetic val$dataSource:Landroidx/media3/datasource/a;

.field final synthetic val$representation:La2/j;

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/dash/offline/DashDownloader;Landroidx/media3/datasource/a;ILa2/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->this$0:Landroidx/media3/exoplayer/dash/offline/DashDownloader;

    iput-object p2, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$dataSource:Landroidx/media3/datasource/a;

    iput p3, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$trackType:I

    iput-object p4, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$representation:La2/j;

    invoke-direct {p0}, Landroidx/media3/common/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->doWork()Ll2/h;

    move-result-object v0

    return-object v0
.end method

.method protected doWork()Ll2/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$dataSource:Landroidx/media3/datasource/a;

    iget v1, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$trackType:I

    iget-object v2, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$representation:La2/j;

    invoke-static {v0, v1, v2}, Lz1/f;->b(Landroidx/media3/datasource/a;ILa2/j;)Ll2/h;

    move-result-object v0

    return-object v0
.end method
