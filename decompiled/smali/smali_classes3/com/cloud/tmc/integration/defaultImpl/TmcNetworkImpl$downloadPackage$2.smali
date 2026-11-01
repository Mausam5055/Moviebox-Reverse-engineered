.class public final Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2",
        "Lokhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

.field final synthetic $callbackId:Ljava/lang/String;

.field final synthetic $downloadPath:Ljava/lang/String;

.field final synthetic $downloadUrl:Ljava/lang/String;

.field final synthetic $headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    iput-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 8

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    const-string v1, ":D006"

    const-string v2, "Download Fail,onFailure_"

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Canceled"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "D006"

    move-object v1, v3

    move-object v3, v5

    move-object v4, p2

    move-object v5, v6

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$downloadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "D006"

    move-object v1, v3

    move-object v3, v5

    move-object v4, p2

    move-object v5, v6

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$downloadCancel(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "call"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "response"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x800

    new-array v2, v2, [B

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v15, v4

    goto/16 :goto_b

    :cond_0
    move-object v6, v4

    :goto_0
    iget-object v7, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    instance-of v8, v7, Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;

    if-eqz v8, :cond_4

    check-cast v7, Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;->responseHeader(Lokhttp3/Headers;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "Download Fail,onFailure_"

    if-nez v3, :cond_2

    :try_start_1
    new-instance v12, Ljava/io/IOException;

    const-string v0, "responseHeader not allowed go on"

    invoke-direct {v12, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    iget-object v9, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    const-string v10, "D008"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":D008"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v8 .. v14}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$downloadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    :try_start_2
    iget-object v3, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;

    invoke-interface {v3, v6}, Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;->contentType(Lokhttp3/MediaType;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v12, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not supported!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    iget-object v9, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    const-string v10, "D009"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":D009"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v8 .. v14}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$downloadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    if-eqz v5, :cond_5

    :try_start_3
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_5
    move-object v3, v4

    :goto_1
    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v15, v4

    :goto_2
    move-object v4, v3

    goto/16 :goto_b

    :cond_6
    const-wide/16 v5, 0x1

    :goto_3
    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_7
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v13, 0x0

    move v7, v13

    :goto_4
    if-eqz v3, :cond_8

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_8
    move-object v8, v4

    :goto_5
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_6

    :cond_9
    move v9, v13

    :goto_6
    if-nez v8, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_d

    :goto_7
    invoke-virtual {v15, v2, v13, v9}, Ljava/io/FileOutputStream;->write([BII)V

    add-int v14, v7, v9

    int-to-float v7, v14

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    long-to-float v8, v5

    div-float/2addr v7, v8

    const/16 v8, 0x64

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v9, v7

    iget-object v7, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    if-eqz v7, :cond_b

    iget-object v8, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    iget-object v10, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-static {v10, v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;->onProgress(Ljava/lang/String;ILjava/lang/String;)V

    :cond_b
    iget-object v7, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    if-eqz v7, :cond_c

    iget-object v8, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    iget-object v10, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-static {v10, v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    move-result-object v10

    int-to-long v11, v14

    move/from16 v17, v13

    move/from16 v16, v14

    move-wide v13, v5

    invoke-interface/range {v7 .. v14}, Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;->progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V

    goto :goto_8

    :cond_c
    move/from16 v17, v13

    move/from16 v16, v14

    :goto_8
    move/from16 v7, v16

    move/from16 v13, v17

    goto :goto_4

    :cond_d
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    if-eqz v2, :cond_e

    iget-object v4, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    iget-object v5, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-static {v5, v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;->onFinish(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_e
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-eqz v3, :cond_10

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_10
    :goto_9
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_c

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v5, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    iget-object v6, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    const-string v7, "D007"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download Fail,onResponse_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":D007"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iget-object v10, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v5 .. v11}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$downloadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    if-eqz v4, :cond_12

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_12
    if-eqz v15, :cond_13

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_13
    :goto_c
    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    if-eqz v4, :cond_15

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_e

    :cond_15
    :goto_d
    if-eqz v15, :cond_16

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_f

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_f
    throw v2
.end method
