.class Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;
.super Lcom/google/android/exoplayer2/util/RunnableFutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->n(Lcom/google/android/exoplayer2/upstream/k;ILx9/j;Z)Lw9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
        "Lg9/d;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$dataSource:Lcom/google/android/exoplayer2/upstream/k;

.field final synthetic val$representation:Lx9/j;

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;Lcom/google/android/exoplayer2/upstream/k;ILx9/j;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$dataSource:Lcom/google/android/exoplayer2/upstream/k;

    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$trackType:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$representation:Lx9/j;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doWork()Lg9/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$dataSource:Lcom/google/android/exoplayer2/upstream/k;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$trackType:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->val$representation:Lx9/j;

    invoke-static {v0, v1, v2}, Lw9/f;->b(Lcom/google/android/exoplayer2/upstream/k;ILx9/j;)Lg9/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;->doWork()Lg9/d;

    move-result-object v0

    return-object v0
.end method
