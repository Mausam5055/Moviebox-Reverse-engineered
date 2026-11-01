.class Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$1;
.super Lcom/google/android/exoplayer2/util/RunnableFutureTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/offline/e;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/offline/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelWork()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/e;->b(Lcom/google/android/exoplayer2/offline/e;)Lcom/google/android/exoplayer2/upstream/cache/i;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader$1;->doWork()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doWork()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/e;->b(Lcom/google/android/exoplayer2/offline/e;)Lcom/google/android/exoplayer2/upstream/cache/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/i;->a()V

    return-object v0
.end method
