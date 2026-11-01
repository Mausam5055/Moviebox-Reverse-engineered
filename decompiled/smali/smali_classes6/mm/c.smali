.class public final Lmm/c;
.super Ljava/lang/Object;

# interfaces
.implements Lmm/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;

.field private final d:Lkotlin/jvm/functions/Function4;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function4;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lmm/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lmm/c;->c:Ljava/util/List;

    iput-object p4, p0, Lmm/c;->d:Lkotlin/jvm/functions/Function4;

    const-string p1, "DR_FileOperateDownload"

    iput-object p1, p0, Lmm/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public invoke()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "<FileOperateDownload> download: "

    iget-object v0, v1, Lmm/c;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    move v8, v4

    move-object v0, v5

    const-wide/16 v9, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/lib_web/download_render/data/FileData;

    sget-object v11, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    invoke-virtual {v11}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->i()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    move-object v11, v5

    :cond_0
    sget-object v12, Lcom/transsion/lib_web/download_render/utils/e;->a:Lcom/transsion/lib_web/download_render/utils/e;

    invoke-virtual {v12, v11}, Lcom/transsion/lib_web/download_render/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lmm/c;->a:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/transsion/lib_web/download_render/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-object v0, Lgm/i;->a:Lgm/i;

    invoke-virtual/range {p0 .. p0}, Lmm/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lmm/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<FileOperateDownload> current webview is loading:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", downloading:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", are the same, so intercept!"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lmm/c;->d:Lkotlin/jvm/functions/Function4;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v2, v11, v3, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/data/FileData;->getMd5()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    :goto_1
    move-object/from16 v16, v3

    goto/16 :goto_b

    :cond_3
    :try_start_0
    new-instance v14, Lokhttp3/Request$Builder;

    invoke-direct {v14}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v14, v12}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v14

    sget-object v15, Lcom/transsion/lib_web/zip/loader/b;->a:Lcom/transsion/lib_web/zip/loader/b;

    invoke-virtual {v15}, Lcom/transsion/lib_web/zip/loader/b;->d()Lokhttp3/OkHttpClient;

    move-result-object v15

    invoke-virtual {v15, v14}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v14

    invoke-interface {v14}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    invoke-virtual {v14}, Lokhttp3/Response;->isSuccessful()Z

    move-result v15

    if-eqz v15, :cond_8

    sget-object v15, Lcom/transsion/lib_web/download_render/utils/c;->a:Lcom/transsion/lib_web/download_render/utils/c;

    iget-object v6, v1, Lmm/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/data/FileData;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v6, v12, v13, v7}, Lcom/transsion/lib_web/download_render/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    :goto_2
    move-object v3, v0

    goto/16 :goto_9

    :cond_4
    :goto_3
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    const/4 v13, 0x0

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_5
    move-object v7, v13

    :goto_4
    :try_start_2
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v7, :cond_6

    move-object/from16 v16, v3

    const/4 v3, 0x2

    :try_start_3
    invoke-static {v7, v15, v4, v3, v13}, Lkotlin/io/ByteStreamsKt;->b(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_5
    invoke-static {v15, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6

    :catchall_3
    move-exception v0

    :goto_5
    move-object v3, v0

    goto :goto_8

    :cond_6
    move-object/from16 v16, v3

    :goto_6
    invoke-static {v15, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {v7, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object v3, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->NONE:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    invoke-virtual {v0, v3}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileLocalPath$lib_web_release(Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    iget-object v7, v1, Lmm/c;->a:Ljava/lang/String;

    iget-object v15, v1, Lmm/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v7, v15, v0}, Lcom/transsion/lib_web/download_render/c;->b(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/lib_web/download_render/data/FileData;)V

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/data/FileData;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_2

    :cond_7
    const-wide/16 v17, 0x0

    :goto_7
    add-long v9, v9, v17

    sget-object v0, Lgm/i;->a:Lgm/i;

    invoke-virtual/range {p0 .. p0}, Lmm/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " success, dst:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-static {v14, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_5

    :goto_8
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    move-exception v0

    move-object v6, v0

    :try_start_9
    invoke-static {v7, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6

    :cond_8
    move-object/from16 v16, v3

    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected code "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_9
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :catchall_8
    move-exception v0

    move-object v6, v0

    :try_start_b
    invoke-static {v14, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_9
    move-exception v0

    move-object/from16 v16, v3

    :goto_a
    sget-object v3, Lgm/i;->a:Lgm/i;

    invoke-virtual/range {p0 .. p0}, Lmm/c;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " fail, msg:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    move-object v0, v11

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_9
    iget-object v2, v1, Lmm/c;->d:Lkotlin/jvm/functions/Function4;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v3, v0, v4, v5}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
