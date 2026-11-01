.class public final Lcom/transsnet/downloader/core/task/GetFileInfoTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0001\u001bB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000eJ\u000f\u0010\u0016\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u000eR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0019R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsnet/downloader/core/task/GetFileInfoTask;",
        "Ljava/lang/Runnable;",
        "Lcom/transsnet/downloader/core/c;",
        "downloadResponse",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "downloadInfo",
        "Lcom/transsnet/downloader/proxy/b;",
        "proxyHelper",
        "Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;",
        "onGetFileInfoListener",
        "<init>",
        "(Lcom/transsnet/downloader/core/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/proxy/b;Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;)V",
        "",
        "executeConnection",
        "()V",
        "Ljava/net/HttpURLConnection;",
        "httpConnection",
        "",
        "isAcceptRanges",
        "parseHttpResponse",
        "(Ljava/net/HttpURLConnection;Z)V",
        "checkIfPause",
        "run",
        "Lcom/transsnet/downloader/proxy/b;",
        "Lcom/transsnet/downloader/core/c;",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;",
        "a",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

.field private final downloadResponse:Lcom/transsnet/downloader/core/c;

.field private final onGetFileInfoListener:Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;

.field private final proxyHelper:Lcom/transsnet/downloader/proxy/b;


# direct methods
.method public constructor <init>(Lcom/transsnet/downloader/core/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/proxy/b;Lcom/transsnet/downloader/core/task/GetFileInfoTask$a;)V
    .locals 1

    const-string v0, "downloadResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onGetFileInfoListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->proxyHelper:Lcom/transsnet/downloader/proxy/b;

    iput-object p1, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadResponse:Lcom/transsnet/downloader/core/c;

    iput-object p2, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    return-void
.end method

.method private final checkIfPause()V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isPause()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/exception/DownloadPauseException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/exception/DownloadPauseException;-><init>(I)V

    throw v0
.end method

.method private final executeConnection()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/baselib/db/download/DownloadException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URLConnection;

    const-string v3, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const v1, 0xea60

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Range"

    const-string v3, "bytes=0-"

    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iget-object v3, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->proxyHelper:Lcom/transsnet/downloader/proxy/b;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getContentType(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_5

    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-virtual {v3, v4, v5}, Lcom/transsnet/downloader/proxy/b;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_2

    const/16 v3, 0xce

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->parseHttpResponse(Ljava/net/HttpURLConnection;Z)V

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/transsion/baselib/db/download/DownloadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {v3, v4, v1}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->parseHttpResponse(Ljava/net/HttpURLConnection;Z)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/transsnet/downloader/exception/DownloadPauseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_6

    :goto_2
    :try_start_2
    new-instance v3, Lcom/transsion/baselib/db/download/DownloadException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "header error"

    :cond_3
    invoke-direct {v3, v0, v4, v1}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_7
    :goto_3
    :try_start_3
    sget-object v2, Llg/a;->a:Llg/a$a;

    const-string v3, "download"

    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file downloadPauseException downloadInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    :goto_4
    return-void

    :goto_5
    :try_start_4
    new-instance v3, Lcom/transsion/baselib/db/download/DownloadException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, "Protocol error"

    :cond_5
    invoke-direct {v3, v0, v4, v1}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    :try_start_5
    new-instance v2, Lcom/transsion/baselib/db/download/DownloadException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, "Bad url."

    :cond_6
    const/4 v4, 0x2

    invoke-direct {v2, v4, v3, v0}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0
.end method

.method private final parseHttpResponse(Ljava/net/HttpURLConnection;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/baselib/db/download/DownloadException;
        }
    .end annotation

    const-string p2, "0"

    if-eqz p1, :cond_0

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p2

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "-1"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    :cond_4
    move-object p2, v2

    :goto_1
    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/c0;->h(J)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setName(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "Content-Disposition"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    sget-object p1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file contentDis  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "download"

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v3, :cond_7

    const-string v0, "filename="

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/text/Regex;

    const-string v3, "[\\\\/:*?\"<>|]"

    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    sget-object v3, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    sget-object v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    iget-object v4, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "download"

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-direct {p0}, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->checkIfPause()V

    throw v2

    :cond_a
    :goto_5
    new-instance p1, Lcom/transsion/baselib/db/download/DownloadException;

    const/4 p2, 0x6

    const-string v0, "content-length <= 0"

    invoke-direct {p1, p2, v0}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "GetFileInfoTask --> run() --> executeConnection() --> e = "

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->executeConnection()V
    :try_end_0
    .catch Lcom/transsion/baselib/db/download/DownloadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Llg/a$a;->j(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadResponse:Lcom/transsnet/downloader/core/c;

    iget-object v1, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    new-instance v3, Lcom/transsion/baselib/db/download/DownloadException;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v2}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {v0, v1, v3}, Lcom/transsnet/downloader/core/c;->b(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Llg/a$a;->j(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadResponse:Lcom/transsnet/downloader/core/c;

    iget-object v1, p0, Lcom/transsnet/downloader/core/task/GetFileInfoTask;->downloadInfo:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v0, v1, v2}, Lcom/transsnet/downloader/core/c;->b(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V

    :goto_0
    return-void
.end method
