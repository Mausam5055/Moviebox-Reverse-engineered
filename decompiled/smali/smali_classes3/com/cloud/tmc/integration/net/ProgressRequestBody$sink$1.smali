.class public final Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;
.super Lokio/ForwardingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/net/ProgressRequestBody;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0005\"\u0004\u0008\n\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "com/cloud/tmc/integration/net/ProgressRequestBody$sink$1",
        "Lokio/ForwardingSink;",
        "bytesWritten",
        "",
        "getBytesWritten",
        "()J",
        "setBytesWritten",
        "(J)V",
        "contentLength",
        "getContentLength",
        "setContentLength",
        "write",
        "",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bytesWritten:J

.field private contentLength:J

.field final synthetic this$0:Lcom/cloud/tmc/integration/net/ProgressRequestBody;


# direct methods
.method constructor <init>(Lokio/Sink;Lcom/cloud/tmc/integration/net/ProgressRequestBody;)V
    .locals 0

    iput-object p2, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->this$0:Lcom/cloud/tmc/integration/net/ProgressRequestBody;

    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public final getBytesWritten()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->bytesWritten:J

    return-wide v0
.end method

.method public final getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->contentLength:J

    return-wide v0
.end method

.method public final setBytesWritten(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->bytesWritten:J

    return-void
.end method

.method public final setContentLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->contentLength:J

    return-void
.end method

.method public write(Lokio/Buffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    iget-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->this$0:Lcom/cloud/tmc/integration/net/ProgressRequestBody;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->contentLength:J

    :cond_0
    iget-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->bytesWritten:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->bytesWritten:J

    iget-object p1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->this$0:Lcom/cloud/tmc/integration/net/ProgressRequestBody;

    invoke-static {p1}, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->access$getProgressListener$p(Lcom/cloud/tmc/integration/net/ProgressRequestBody;)Lcom/cloud/tmc/integration/net/ProgressRequestListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->bytesWritten:J

    iget-wide v3, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->contentLength:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/integration/net/ProgressRequestListener;->onRequestProgress(JJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method
