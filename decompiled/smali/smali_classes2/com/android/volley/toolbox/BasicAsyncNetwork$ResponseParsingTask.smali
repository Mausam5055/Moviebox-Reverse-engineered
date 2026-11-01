.class Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;
.super Lcom/android/volley/RequestTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseParsingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field callback:Lcom/android/volley/b$a;

.field httpResponse:Lcom/android/volley/toolbox/e;

.field inputStream:Ljava/io/InputStream;

.field request:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request;"
        }
    .end annotation
.end field

.field requestStartMs:J

.field responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/e;",
            ">;"
        }
    .end annotation
.end field

.field statusCode:I

.field final synthetic this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Ljava/io/InputStream;Lcom/android/volley/toolbox/e;Lcom/android/volley/Request;Lcom/android/volley/b$a;JLjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/volley/toolbox/e;",
            "Lcom/android/volley/Request;",
            "Lcom/android/volley/b$a;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/volley/e;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    iput-object p2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->inputStream:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/e;

    iput-object p4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->request:Lcom/android/volley/Request;

    iput-object p5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->callback:Lcom/android/volley/b$a;

    iput-wide p6, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->requestStartMs:J

    iput-object p8, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->responseHeaders:Ljava/util/List;

    iput p9, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->statusCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/e;

    invoke-virtual {v1}, Lcom/android/volley/toolbox/e;->b()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->c(Lcom/android/volley/toolbox/BasicAsyncNetwork;)Lcom/android/volley/toolbox/ByteArrayPool;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/volley/toolbox/l;->c(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->requestStartMs:J

    iget v6, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->statusCode:I

    iget-object v7, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/e;

    iget-object v8, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->request:Lcom/android/volley/Request;

    iget-object v9, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->callback:Lcom/android/volley/b$a;

    iget-object v10, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->responseHeaders:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static/range {v3 .. v11}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->d(Lcom/android/volley/toolbox/BasicAsyncNetwork;JILcom/android/volley/toolbox/e;Lcom/android/volley/Request;Lcom/android/volley/b$a;Ljava/util/List;[B)V

    return-void

    :catch_0
    move-exception v0

    move-object v4, v0

    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->request:Lcom/android/volley/Request;

    iget-object v3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->callback:Lcom/android/volley/b$a;

    iget-wide v5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->requestStartMs:J

    iget-object v7, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/e;

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->b(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/b$a;Ljava/io/IOException;JLcom/android/volley/toolbox/e;[B)V

    return-void
.end method
