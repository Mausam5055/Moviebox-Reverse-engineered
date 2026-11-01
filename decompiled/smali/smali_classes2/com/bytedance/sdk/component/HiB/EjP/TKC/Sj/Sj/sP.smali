.class public Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/TKC;


# instance fields
.field private Sj:I

.field private sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    long-to-int p2, p2

    iput p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->Sj:I

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(ILjava/io/File;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic Sj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Sj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->Sj(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public Sj(Ljava/lang/String;[B)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;[B)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public TKC(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return v0

    :catchall_1
    move-exception p1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    throw p1
.end method

.method public synthetic sP(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->TKC(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sP(Ljava/lang/String;)[B
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/sP;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_1

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x400

    :try_start_2
    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return-object v1

    :catch_1
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, v1

    move-object v1, p1

    move-object p1, v0

    :goto_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    throw v1

    :catch_2
    move-object p1, v1

    move-object v0, p1

    goto :goto_1

    :cond_4
    :goto_3
    return-object v1
.end method
