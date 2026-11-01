.class public Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/TKC;


# instance fields
.field private Sj:J

.field private sP:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;


# direct methods
.method public constructor <init>(Ljava/io/File;JLjava/util/concurrent/ExecutorService;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;->Sj:J

    const v1, 0x134627e

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v3, p2

    move-object v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "LruCountDiskCache"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$TKC;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$TKC;->Sj(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "LruCountDiskCache"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public synthetic Sj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;->sP(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Sj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;->Sj(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public Sj(Ljava/lang/String;[B)Z
    .locals 6

    const-string v0, "LruCountDiskCache"

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "save "

    if-nez v1, :cond_1

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed for edit null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object p2, v3

    move-object v3, v1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;->Sj(I)Ljava/io/OutputStream;

    move-result-object v3

    sget-object v5, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TKC:Ljava/io/OutputStream;

    if-ne v3, v5, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed for null OutputStream"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return v2

    :cond_2
    :try_start_3
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;->Sj()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    move-object p2, v3

    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;->sP()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, p2

    goto :goto_2

    :catch_2
    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return v2

    :goto_2
    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    throw p1

    :cond_4
    :goto_3
    return v2
.end method

.method public TKC(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$TKC;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "LruCountDiskCache"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return v0

    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    throw p1
.end method

.method public synthetic sP(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;->TKC(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sP(Ljava/lang/String;)[B
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$TKC;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$TKC;->Sj(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_2

    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v3, 0x400

    :try_start_3
    new-array v3, v3, [B

    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_2
    move-object v2, v1

    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p1, v1

    move-object v2, p1

    :goto_2
    :try_start_4
    const-string v3, "LruCountDiskCache"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return-object v1

    :goto_3
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    :goto_4
    return-object v1
.end method
