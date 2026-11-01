.class public final Lcom/tmc/network/DownloadInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/tmc/network/DownloadInterceptor;",
        "Lokhttp3/Interceptor;",
        "listener",
        "Lcom/tmc/network/ProgressListener;",
        "(Lcom/tmc/network/ProgressListener;)V",
        "getListener",
        "()Lcom/tmc/network/ProgressListener;",
        "setListener",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
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
.field private listener:Lcom/tmc/network/ProgressListener;


# direct methods
.method public constructor <init>(Lcom/tmc/network/ProgressListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tmc/network/DownloadInterceptor;->listener:Lcom/tmc/network/ProgressListener;

    return-void
.end method


# virtual methods
.method public final getListener()Lcom/tmc/network/ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/DownloadInterceptor;->listener:Lcom/tmc/network/ProgressListener;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/tmc/network/ProgressResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/tmc/network/DownloadInterceptor;->listener:Lcom/tmc/network/ProgressListener;

    invoke-direct {v1, p1, v2}, Lcom/tmc/network/ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/tmc/network/ProgressListener;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public final setListener(Lcom/tmc/network/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/DownloadInterceptor;->listener:Lcom/tmc/network/ProgressListener;

    return-void
.end method
