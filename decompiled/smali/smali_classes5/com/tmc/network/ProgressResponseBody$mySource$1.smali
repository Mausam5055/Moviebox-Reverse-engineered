.class public final Lcom/tmc/network/ProgressResponseBody$mySource$1;
.super Lokio/ForwardingSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tmc/network/ProgressResponseBody;->mySource(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "com/tmc/network/ProgressResponseBody$mySource$1",
        "Lokio/ForwardingSource;",
        "totalBytesRead",
        "",
        "getTotalBytesRead",
        "()J",
        "setTotalBytesRead",
        "(J)V",
        "read",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $source:Lokio/Source;

.field final synthetic this$0:Lcom/tmc/network/ProgressResponseBody;

.field private totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/tmc/network/ProgressResponseBody;Lokio/Source;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/ProgressResponseBody$mySource$1;->this$0:Lcom/tmc/network/ProgressResponseBody;

    iput-object p2, p0, Lcom/tmc/network/ProgressResponseBody$mySource$1;->$source:Lokio/Source;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public final getTotalBytesRead()J
    .locals 2

    iget-wide v0, p0, Lcom/tmc/network/ProgressResponseBody$mySource$1;->totalBytesRead:J

    return-wide v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/tmc/network/ProgressResponseBody$mySource$1;->totalBytesRead:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    if-eqz p3, :cond_0

    move-wide v2, p1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tmc/network/ProgressResponseBody$mySource$1;->totalBytesRead:J

    iget-object p3, p0, Lcom/tmc/network/ProgressResponseBody$mySource$1;->this$0:Lcom/tmc/network/ProgressResponseBody;

    invoke-static {p3}, Lcom/tmc/network/ProgressResponseBody;->access$getMListener$p(Lcom/tmc/network/ProgressResponseBody;)Lcom/tmc/network/ProgressListener;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-wide v1, p0, Lcom/tmc/network/ProgressResponseBody$mySource$1;->totalBytesRead:J

    iget-object p3, p0, Lcom/tmc/network/ProgressResponseBody$mySource$1;->this$0:Lcom/tmc/network/ProgressResponseBody;

    invoke-virtual {p3}, Lcom/tmc/network/ProgressResponseBody;->contentLength()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tmc/network/ProgressResponseBody$mySource$1;->totalBytesRead:J

    iget-object p3, p0, Lcom/tmc/network/ProgressResponseBody$mySource$1;->this$0:Lcom/tmc/network/ProgressResponseBody;

    invoke-virtual {p3}, Lcom/tmc/network/ProgressResponseBody;->contentLength()J

    move-result-wide v7

    cmp-long p3, v5, v7

    if-nez p3, :cond_2

    const/4 p3, 0x1

    :goto_1
    move v5, p3

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    goto :goto_1

    :goto_2
    invoke-interface/range {v0 .. v5}, Lcom/tmc/network/ProgressListener;->onProgress(JJZ)V

    :goto_3
    return-wide p1
.end method

.method public final setTotalBytesRead(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tmc/network/ProgressResponseBody$mySource$1;->totalBytesRead:J

    return-void
.end method
