.class public Lcom/transsion/tinker/lib/custom/download/DownloadManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;,
        Lcom/transsion/tinker/lib/custom/download/DownloadManager$NetworkPolicyException;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private volatile g:Z

.field private volatile h:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->c:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->g:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->a:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->b:Landroid/os/Handler;

    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object p1

    invoke-virtual {p1}, Lou/a;->z()I

    move-result v0

    iput v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->c:I

    invoke-virtual {p1}, Lou/a;->A()I

    move-result p1

    iput p1, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->d:I

    return-void
.end method

.method public static synthetic a(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->i(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;JJ)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->k(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/tinker/lib/custom/download/DownloadManager;ILcom/transsion/tinker/lib/custom/download/DownloadManager$a;JLou/d;Ljava/io/File;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->j(ILcom/transsion/tinker/lib/custom/download/DownloadManager$a;JLou/d;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->l(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/io/File;Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    move-object v11, v3

    goto/16 :goto_6

    :cond_0
    move-wide v8, v6

    :goto_0
    cmp-long v5, v8, v6

    const-string v10, "Tinker.DownloadManager"

    if-lez v5, :cond_1

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->g(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v13, v11, v6

    if-lez v13, :cond_1

    cmp-long v11, v8, v11

    if-ltz v11, :cond_1

    const-string v0, "local file already complete (%d bytes), skip download"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v10, v0, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-lez v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    new-instance v11, Ljava/net/URL;

    move-object/from16 v12, p1

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    invoke-static {v11}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/URLConnection;

    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v12, "GET"

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v12, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->c:I

    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v12, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->d:I

    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    if-eqz v5, :cond_3

    const-string v12, "Range"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "resuming download from byte %d"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-array v14, v3, [Ljava/lang/Object;

    aput-object v13, v14, v2

    invoke-static {v10, v12, v14}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v4

    goto/16 :goto_6

    :cond_3
    :goto_2
    invoke-virtual {v11}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_4

    move v5, v2

    move-wide v8, v6

    goto :goto_3

    :cond_4
    const/16 v13, 0xce

    if-ne v12, v13, :cond_9

    :goto_3
    invoke-static {v11}, Luc/c;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v12

    cmp-long v3, v12, v6

    if-lez v3, :cond_5

    add-long/2addr v12, v8

    goto :goto_4

    :cond_5
    const-wide/16 v12, -0x1

    :goto_4
    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v0, 0x2000

    :try_start_4
    new-array v0, v0, [B

    :cond_6
    :goto_5
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    iget-boolean v5, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->g:Z

    if-nez v5, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v10, v0, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v8, v4

    if-eqz p3, :cond_6

    cmp-long v4, v12, v6

    if-lez v4, :cond_6

    iget-object v4, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->b:Landroid/os/Handler;

    new-instance v5, Lru/b;

    move-object v14, v5

    move-object/from16 v15, p3

    move-wide/from16 v16, v8

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lru/b;-><init>(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;JJ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v10

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v2, "download_cancelled"

    invoke-direct {v0, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_8
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_9
    const/16 v5, 0x1a0

    const-string v6, "HTTP "

    if-ne v12, v5, :cond_b

    :try_start_7
    const-string v5, "HTTP 416: range offset %d exceeds server file size, deleting partial file"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v2

    invoke-static {v10, v5, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v3, :cond_a

    :try_start_8
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_2
    :try_start_9
    const-string v0, "HTTP 416: delete failed, truncated file instead"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_6
    if-eqz v4, :cond_c

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :catch_3
    :cond_c
    if-eqz v3, :cond_d

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    :cond_d
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    throw v0
.end method

.method private g(Ljava/lang/String;)J
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "HEAD"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->c:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->d:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Luc/c;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_1
    :try_start_2
    const-string v1, "Tinker.DownloadManager"

    const-string v2, "fetchContentLength failed: %s"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    const-wide/16 v0, -0x1

    return-wide v0

    :goto_3
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0
.end method

.method private h()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :catch_0
    const-string v2, "ACCESS_NETWORK_STATE not granted, skip wifi check"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Tinker.DownloadManager"

    invoke-static {v3, v2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private static synthetic i(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;JJ)V
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->a(JJ)V

    return-void
.end method

.method private synthetic j(ILcom/transsion/tinker/lib/custom/download/DownloadManager$a;JLou/d;Ljava/io/File;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v8, v5

    move-object v0, v7

    :goto_0
    if-gt v8, v2, :cond_2

    :try_start_0
    iget-boolean v0, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "download_cancelled"

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0, v9}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->m(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v7, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->h:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    const-string v10, "Tinker.DownloadManager"

    if-lez v8, :cond_1

    add-int/lit8 v0, v8, -0x1

    const-wide/16 v11, 0x1

    shl-long/2addr v11, v0

    mul-long v11, v11, p3

    :try_start_2
    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v0

    invoke-virtual {v0}, Lou/a;->E()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    const-string v0, "retry #%d in %dms"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    new-array v15, v4, [Ljava/lang/Object;

    aput-object v13, v15, v5

    aput-object v14, v15, v6

    invoke-static {v10, v0, v15}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0, v9}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->m(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-object v7, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->h:Ljava/lang/Thread;

    return-void

    :cond_1
    :goto_1
    :try_start_5
    invoke-virtual/range {p5 .. p5}, Lou/d;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v11, p6

    :try_start_6
    invoke-direct {v1, v0, v11, v3}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->e(Ljava/lang/String;Ljava/io/File;Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;)V

    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->n(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iput-object v7, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->h:Ljava/lang/Thread;

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v11, p6

    :goto_2
    :try_start_7
    const-string v9, "download attempt %d/%d failed: %s"

    add-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    add-int/lit8 v13, v2, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v12, v15, v5

    aput-object v13, v15, v6

    aput-object v14, v15, v4

    invoke-static {v10, v9, v15}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0, v9}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->m(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iput-object v7, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->h:Ljava/lang/Thread;

    return-void

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    :try_start_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unknown error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {v1, v3, v0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->m(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iput-object v7, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->h:Ljava/lang/Thread;

    return-void

    :goto_4
    iput-object v7, v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->h:Ljava/lang/Thread;

    throw v0
.end method

.method private static synthetic k(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic l(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private m(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->b:Landroid/os/Handler;

    new-instance v1, Lru/c;

    invoke-direct {v1, p1, p2}, Lru/c;-><init>(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private n(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->b:Landroid/os/Handler;

    new-instance v1, Lru/d;

    invoke-direct {v1, p1, p2}, Lru/d;-><init>(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public f(Lou/d;Ljava/io/File;Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lou/d;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lou/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lou/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only HTTPS URLs are allowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lou/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p2}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->m(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lou/d;->b()Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    move-result-object v1

    sget-object v2, Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;->WIFI_ONLY:Lcom/transsion/tinker/lib/custom/api/DownloadPolicy;

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->h()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p1, Lcom/transsion/tinker/lib/custom/download/DownloadManager$NetworkPolicyException;

    const-string p2, "DownloadPolicy.WIFI_ONLY: current network is not Wi-Fi"

    invoke-direct {p1, p2}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$NetworkPolicyException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->m(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->g:Z

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->m(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^a-zA-Z0-9._\\-]"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "patch_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lou/d;->i()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1}, Lou/d;->i()J

    move-result-wide v5

    cmp-long p2, v1, v5

    if-nez p2, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "Tinker.DownloadManager"

    const-string v0, "local file already complete (size=%d), skip download"

    invoke-static {p1, v0, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->n(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object p2

    invoke-virtual {p1}, Lou/d;->g()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lou/d;->g()I

    move-result v0

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->e:I

    if-ltz v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lou/a;->x()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lou/d;->h()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    invoke-virtual {p1}, Lou/d;->h()J

    move-result-wide v1

    :goto_1
    move-wide v6, v1

    goto :goto_2

    :cond_7
    iget-wide v1, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->f:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Lou/a;->y()J

    move-result-wide v1

    goto :goto_1

    :goto_2
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lru/a;

    move-object v2, v1

    move-object v3, p0

    move v4, v0

    move-object v5, p3

    move-object v8, p1

    invoke-direct/range {v2 .. v9}, Lru/a;-><init>(Lcom/transsion/tinker/lib/custom/download/DownloadManager;ILcom/transsion/tinker/lib/custom/download/DownloadManager$a;JLou/d;Ljava/io/File;)V

    const-string p1, "tinker-download"

    invoke-direct {p2, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->h:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PatchInfo or url is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->m(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V

    return-void
.end method
