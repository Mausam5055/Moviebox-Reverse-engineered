.class public Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;


# instance fields
.field private final a:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;

.field private b:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

.field private c:Ljava/io/File;

.field private final d:J

.field private e:I


# direct methods
.method protected constructor <init>(Ljava/io/File;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;

    invoke-direct {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->a:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;

    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->c:Ljava/io/File;

    iput-wide p2, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->d:J

    iput p4, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->e:I

    return-void
.end method

.method private g()Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->b:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    if-nez v0, :cond_3

    const-class v1, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->b:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->e:I

    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->d(I)Ljava/io/File;

    move-result-object v0

    const-string v2, "ADSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ----- getDiskLruCache: directory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->c:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , cacheFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->c:Ljava/io/File;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->c:Ljava/io/File;

    iget-wide v2, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->d:J

    const/4 v4, 0x1

    invoke-static {v0, v4, v4, v2, v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->T(Ljava/io/File;IIJ)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->b:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    :cond_2
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_3
    return-object v0
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V
    .locals 1

    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/utils/SafeKeyUtils;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->g()Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->d0(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;[B)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->a:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V

    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/utils/SafeKeyUtils;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->g()Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->v(Ljava/lang/String;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b(Ljava/io/Closeable;)V

    iget-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->a:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V

    return-object v2

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->b:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-virtual {v3, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->t(Ljava/lang/String;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v3, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->g(I)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->f()V

    iget-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->b:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-virtual {p2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->flush()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->c()Ljava/lang/String;

    move-result-object p2

    iget v1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->e:I

    invoke-static {p2, v1}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string p2, "ADSDK"

    const/4 v1, 0x3

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cacheToDisk with buff: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b(Ljava/io/Closeable;)V

    iget-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->a:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_4

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->b()V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Had two simultaneous puts for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put: fail"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :goto_3
    return-object v0

    :goto_4
    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->a:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V

    throw p2
.end method

.method public c(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->h(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;Lokhttp3/Response;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->e(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public e(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->a:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V

    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/utils/SafeKeyUtils;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->g()Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->v(Ljava/lang/String;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b(Ljava/io/Closeable;)V

    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->a:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V

    return-object v2

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->b:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-virtual {v3, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->t(Ljava/lang/String;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v3, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->g(I)Ljava/io/OutputStream;

    move-result-object v2

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->f()V

    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->b:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-virtual {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->flush()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->c()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->e:I

    invoke-static {v1, v4}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADSDK"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cacheToDisk with response: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    invoke-virtual {v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b(Ljava/io/Closeable;)V

    :goto_1
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    iget-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->a:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :goto_2
    :try_start_6
    invoke-virtual {v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->b()V

    throw v1

    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Had two simultaneous puts for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_2
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put: fail"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b(Ljava/io/Closeable;)V

    goto :goto_1

    :goto_3
    return-object v0

    :goto_4
    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b(Ljava/io/Closeable;)V

    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    iget-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->a:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V

    throw v0

    :cond_5
    :goto_5
    return-object v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/utils/SafeKeyUtils;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->g()Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->v(Ljava/lang/String;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method protected h(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/io/File;
    .locals 3

    invoke-virtual {p1}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->e:I

    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->d(I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/utils/SafeKeyUtils;->b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheImpl;->g()Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->v(Ljava/lang/String;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
