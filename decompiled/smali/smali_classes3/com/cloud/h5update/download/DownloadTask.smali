.class public final Lcom/cloud/h5update/download/DownloadTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/cloud/h5update/download/DownloadTask;",
        "Ljava/lang/Runnable;",
        "Lcom/cloud/h5update/bean/DownloadEntity;",
        "downloadEntity",
        "<init>",
        "(Lcom/cloud/h5update/bean/DownloadEntity;)V",
        "",
        "run",
        "()V",
        "cancel",
        "Lokhttp3/OkHttpClient;",
        "mClient",
        "setClient",
        "(Lokhttp3/OkHttpClient;)V",
        "Lcom/cloud/h5update/download/a;",
        "listener",
        "setListener",
        "(Lcom/cloud/h5update/download/a;)V",
        "Lcom/cloud/h5update/bean/DownloadEntity;",
        "getDownloadEntity",
        "()Lcom/cloud/h5update/bean/DownloadEntity;",
        "mListener",
        "Lcom/cloud/h5update/download/a;",
        "Lokhttp3/OkHttpClient;",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "apph5update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

.field private final handler:Landroid/os/Handler;

.field private mClient:Lokhttp3/OkHttpClient;

.field private mListener:Lcom/cloud/h5update/download/a;


# direct methods
.method public constructor <init>(Lcom/cloud/h5update/bean/DownloadEntity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/cloud/h5update/download/DownloadTask$a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/h5update/download/DownloadTask$a;-><init>(Lcom/cloud/h5update/download/DownloadTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cloud/h5update/download/DownloadTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;
    .locals 0

    iget-object p0, p0, Lcom/cloud/h5update/download/DownloadTask;->mListener:Lcom/cloud/h5update/download/a;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/cloud/h5update/bean/DownloadEntity;->setTaskStatus(I)V

    :goto_0
    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    iget-object v2, p0, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/cloud/h5update/utils/l;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final getDownloadEntity()Lcom/cloud/h5update/bean/DownloadEntity;
    .locals 1

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    return-object v0
.end method

.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/DownloadEntity;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v7

    move-object v9, v8

    goto/16 :goto_15

    :catch_0
    move-exception v0

    move-object v8, v7

    move-object v9, v8

    goto/16 :goto_d

    :catch_1
    move-object v8, v7

    move-object v9, v8

    goto/16 :goto_e

    :catch_2
    move-object v8, v7

    move-object v9, v8

    goto/16 :goto_10

    :catch_3
    move-object v8, v7

    move-object v9, v8

    goto/16 :goto_12

    :cond_0
    move-object v0, v7

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    iget-object v8, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/cloud/h5update/bean/DownloadEntity;->getUrl()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Lcom/cloud/h5update/utils/l;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/DownloadEntity;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v7

    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_3
    sget-object v8, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v8}, Lcom/cloud/h5update/TH5Update$a;->g()Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/cloud/h5update/TH5Update$a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/cloud/h5update/bean/DownloadEntity;->getTitle()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v7

    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_5
    invoke-virtual {v8}, Lcom/cloud/h5update/TH5Update$a;->f()Ljava/lang/String;

    move-result-object v8

    :goto_5
    iget-object v9, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v9}, Lcom/cloud/h5update/bean/DownloadEntity;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    iget-object v8, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v8}, Lcom/cloud/h5update/bean/DownloadEntity;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_6
    iget-object v9, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v9, v0}, Lcom/cloud/h5update/bean/DownloadEntity;->setFileName(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v9, v8}, Lcom/cloud/h5update/bean/DownloadEntity;->setFilePath(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_7
    sget-object v9, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    iget-object v10, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v10}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/cloud/h5update/utils/l;->h(Ljava/lang/String;)Lcom/cloud/h5update/bean/DownloadEntity;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v10, :cond_8

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lgg/b;->a:Lgg/b;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to delete file:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lgg/b;->b(Ljava/lang/String;)V

    :cond_8
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v0, "rwd"

    invoke-direct {v8, v11, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v0, v5}, Lcom/cloud/h5update/bean/DownloadEntity;->setTaskStatus(I)V

    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz v10, :cond_9

    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v9, v0, v10}, Lcom/cloud/h5update/utils/l;->t(Ljava/lang/String;Lcom/cloud/h5update/bean/DownloadEntity;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v9, v7

    goto/16 :goto_15

    :catch_4
    move-exception v0

    move-object v9, v7

    goto/16 :goto_d

    :catch_5
    move-object v9, v7

    goto/16 :goto_e

    :catch_6
    move-object v9, v7

    goto/16 :goto_10

    :catch_7
    move-object v9, v7

    goto/16 :goto_12

    :cond_9
    :goto_7
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/DownloadEntity;->getCompletedSize()J

    move-result-wide v10
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/DownloadEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_b

    :cond_a
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v12, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v12}, Lcom/cloud/h5update/bean/DownloadEntity;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v12}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v12, "RANGE"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v14, 0x2d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    const-string v12, "Builder().url(downloadEn\u2026=$completeSize-\").build()"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_b

    move-wide v10, v14

    :cond_b
    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v12, v1, Lcom/cloud/h5update/download/DownloadTask;->mClient:Lokhttp3/OkHttpClient;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v12, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v12, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v12}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/cloud/h5update/utils/l;->h(Ljava/lang/String;)Lcom/cloud/h5update/bean/DownloadEntity;

    move-result-object v12

    if-nez v12, :cond_c

    iget-object v12, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v12}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v9, v12, v13}, Lcom/cloud/h5update/utils/l;->t(Ljava/lang/String;Lcom/cloud/h5update/bean/DownloadEntity;)V

    iget-object v9, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/cloud/h5update/bean/DownloadEntity;->setTotalSize(J)V

    :cond_c
    iget-object v9, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v9, v4}, Lcom/cloud/h5update/bean/DownloadEntity;->setTaskStatus(I)V

    iget-object v9, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v9}, Lcom/cloud/h5update/bean/DownloadEntity;->getTotalSize()J

    move-result-wide v12

    const/16 v9, 0x64

    int-to-long v14, v9

    div-long/2addr v12, v14

    long-to-double v12, v12

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-direct {v14, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v0, 0x400

    :try_start_5
    new-array v0, v0, [B

    move v7, v3

    :goto_8
    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v15

    sget-object v16, Lkotlin/Unit;->a:Lkotlin/Unit;

    if-lez v15, :cond_f

    iget-object v5, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v5}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskStatus()I

    move-result v5

    if-eq v5, v2, :cond_f

    invoke-virtual {v8, v0, v3, v15}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v2, v15

    add-long/2addr v10, v2

    add-int/2addr v7, v15

    iget-object v2, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v2, v10, v11}, Lcom/cloud/h5update/bean/DownloadEntity;->setCompletedSize(J)V

    int-to-double v2, v7

    cmpl-double v2, v2, v12

    if-ltz v2, :cond_d

    sget-object v2, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    iget-object v3, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v3}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    move-result-object v3

    iget-object v7, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v2, v3, v7}, Lcom/cloud/h5update/utils/l;->t(Ljava/lang/String;Lcom/cloud/h5update/bean/DownloadEntity;)V

    iget-object v2, v1, Lcom/cloud/h5update/download/DownloadTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v7, 0x0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v7, v14

    goto/16 :goto_15

    :catch_8
    move-exception v0

    move-object v7, v14

    goto/16 :goto_d

    :catch_9
    move-object v7, v14

    goto/16 :goto_e

    :catch_a
    move-object v7, v14

    goto/16 :goto_10

    :catch_b
    move-object v7, v14

    goto/16 :goto_12

    :cond_d
    :goto_9
    iget-object v2, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v2}, Lcom/cloud/h5update/bean/DownloadEntity;->getTotalSize()J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-nez v2, :cond_e

    iget-object v2, v1, Lcom/cloud/h5update/download/DownloadTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/cloud/h5update/bean/DownloadEntity;->setTaskStatus(I)V

    iget-object v2, v1, Lcom/cloud/h5update/download/DownloadTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v2, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    iget-object v3, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v3}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    move-result-object v3

    iget-object v15, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v2, v3, v15}, Lcom/cloud/h5update/utils/l;->t(Ljava/lang/String;Lcom/cloud/h5update/bean/DownloadEntity;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_e
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_8

    :cond_f
    move-object v7, v14

    goto :goto_a

    :catchall_3
    move-exception v0

    goto/16 :goto_15

    :catch_c
    move-exception v0

    goto :goto_d

    :cond_10
    :try_start_6
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v0, v6}, Lcom/cloud/h5update/bean/DownloadEntity;->setTaskStatus(I)V

    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_11
    move-object v9, v7

    :goto_a
    sget-object v0, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    aput-object v8, v2, v4

    invoke-virtual {v0, v2}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    goto/16 :goto_14

    :catch_d
    move-exception v0

    goto :goto_c

    :cond_12
    :goto_b
    sget-object v0, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    aput-object v8, v2, v4

    invoke-virtual {v0, v2}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    return-void

    :goto_c
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {v2, v6}, Lcom/cloud/h5update/bean/DownloadEntity;->setTaskStatus(I)V

    iget-object v2, v1, Lcom/cloud/h5update/download/DownloadTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sget-object v0, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    aput-object v8, v2, v4

    invoke-virtual {v0, v2}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    return-void

    :goto_d
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    sget-object v0, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    aput-object v8, v2, v4

    invoke-virtual {v0, v2}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    goto :goto_14

    :catch_e
    :goto_e
    :try_start_9
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    if-nez v0, :cond_13

    goto :goto_f

    :cond_13
    invoke-virtual {v0, v6}, Lcom/cloud/h5update/bean/DownloadEntity;->setTaskStatus(I)V

    :goto_f
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    sget-object v0, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    aput-object v8, v2, v4

    invoke-virtual {v0, v2}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    goto :goto_14

    :catch_f
    :goto_10
    :try_start_a
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    if-nez v0, :cond_14

    goto :goto_11

    :cond_14
    invoke-virtual {v0, v6}, Lcom/cloud/h5update/bean/DownloadEntity;->setTaskStatus(I)V

    :goto_11
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    sget-object v0, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    aput-object v8, v2, v4

    invoke-virtual {v0, v2}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    goto :goto_14

    :catch_10
    :goto_12
    :try_start_b
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->downloadEntity:Lcom/cloud/h5update/bean/DownloadEntity;

    const/4 v2, 0x5

    if-nez v0, :cond_15

    goto :goto_13

    :cond_15
    invoke-virtual {v0, v2}, Lcom/cloud/h5update/bean/DownloadEntity;->setTaskStatus(I)V

    :goto_13
    iget-object v0, v1, Lcom/cloud/h5update/download/DownloadTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    sget-object v0, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    aput-object v8, v2, v4

    invoke-virtual {v0, v2}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    :goto_14
    return-void

    :goto_15
    sget-object v2, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v7, v3, v5

    const/4 v5, 0x1

    aput-object v9, v3, v5

    aput-object v8, v3, v4

    invoke-virtual {v2, v3}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    throw v0
.end method

.method public final setClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadTask;->mClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final setListener(Lcom/cloud/h5update/download/a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadTask;->mListener:Lcom/cloud/h5update/download/a;

    return-void
.end method
