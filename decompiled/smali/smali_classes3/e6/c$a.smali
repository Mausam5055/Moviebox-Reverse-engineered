.class Le6/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/sP/Sj/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/c;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Le6/c;


# direct methods
.method constructor <init>(Le6/c;J)V
    .locals 0

    iput-object p1, p0, Le6/c$a;->b:Le6/c;

    iput-wide p2, p0, Le6/c$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Lcom/bytedance/sdk/component/sP/Sj/Zq;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-wide v3, v1, Le6/c$a;->a:J

    const/4 v6, 0x0

    if-eqz v2, :cond_8

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->EjP()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v3, v4, v7}, Le6/c;->j(Le6/c;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0, v6}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0, v6}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    :goto_0
    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0, v6}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    :goto_1
    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0, v2}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    invoke-static {v0}, Le6/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v10, v6

    move-object v13, v10

    :goto_2
    const/16 v5, 0x259

    goto/16 :goto_9

    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    iget-wide v10, v1, Le6/c$a;->a:J

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->Sj()J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->TKC()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide v11, v10

    move-object v10, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v10, v6

    move-object v13, v10

    :goto_3
    move-object v6, v7

    goto :goto_2

    :cond_1
    move-object v10, v6

    move-wide v11, v8

    :goto_4
    if-nez v10, :cond_2

    :try_start_3
    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v3, v4, v8}, Le6/c;->j(Le6/c;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_5
    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0, v6}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    :goto_6
    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0, v10}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0, v7}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v13, v6

    goto :goto_3

    :cond_2
    :try_start_4
    new-instance v13, Ljava/io/RandomAccessFile;

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->q(Le6/c;)Ljava/io/File;

    move-result-object v0

    const-string v14, "rw"

    invoke-direct {v13, v0, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v0, 0x2000

    :try_start_5
    new-array v0, v0, [B

    move-wide v15, v8

    :goto_7
    const/4 v14, 0x0

    :cond_3
    rsub-int v6, v14, 0x2000

    invoke-virtual {v10, v0, v14, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v5, -0x1

    if-eq v6, v5, :cond_6

    iget-object v5, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v5}, Le6/c;->p(Le6/c;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v4

    invoke-static {v0, v3, v4}, Le6/c;->i(Le6/c;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0, v13}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_3

    :cond_4
    add-int/2addr v14, v6

    int-to-long v5, v6

    add-long/2addr v15, v5

    const-wide/16 v5, 0x2000

    :try_start_6
    rem-long v5, v15, v5

    cmp-long v5, v5, v8

    if-eqz v5, :cond_5

    iget-wide v5, v1, Le6/c$a;->a:J

    sub-long v5, v11, v5

    cmp-long v5, v15, v5

    if-nez v5, :cond_3

    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    iget-object v6, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v6}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v0, v5, v14, v6}, Lc6/b;->b(Ljava/io/RandomAccessFile;[BIILjava/lang/String;)V

    int-to-long v5, v14

    add-long/2addr v3, v5

    goto :goto_7

    :cond_6
    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TEQ()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->q(Le6/c;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v11, v3

    if-nez v0, :cond_7

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->b(Le6/c;)V

    :cond_7
    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v4

    invoke-static {v0, v3, v4}, Le6/c;->s(Le6/c;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v6, v13

    goto/16 :goto_5

    :cond_8
    :try_start_7
    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v3

    const-string v4, "Network link failed."
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/16 v5, 0x259

    :try_start_8
    invoke-static {v0, v3, v5, v4}, Le6/c;->j(Le6/c;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v7, v6

    move-object v10, v7

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    :goto_8
    move-object v10, v6

    move-object v13, v10

    goto :goto_9

    :catchall_5
    move-exception v0

    const/16 v5, 0x259

    goto :goto_8

    :goto_9
    :try_start_9
    iget-object v3, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v3}, Le6/c;->d(Le6/c;)V

    iget-object v3, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v3}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v4

    if-eqz v2, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v5

    goto :goto_a

    :catchall_6
    move-exception v0

    goto :goto_b

    :cond_9
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Le6/c;->j(Le6/c;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0, v13}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    iget-object v0, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v0, v10}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    goto/16 :goto_0

    :goto_b
    iget-object v3, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v3, v13}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    iget-object v3, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v3, v10}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    iget-object v3, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v3, v6}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    iget-object v3, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v3, v2}, Le6/c;->k(Le6/c;Ljava/io/Closeable;)V

    iget-object v2, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v2}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    iget-object v2, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v2}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    iget-object v2, v1, Le6/c$a;->b:Le6/c;

    invoke-static {v2}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v2

    invoke-static {v2}, Le6/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    throw v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Ljava/io/IOException;)V
    .locals 2

    iget-object p1, p0, Le6/c$a;->b:Le6/c;

    invoke-static {p1}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    const/16 v1, 0x259

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Le6/c;->j(Le6/c;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V

    iget-object p1, p0, Le6/c$a;->b:Le6/c;

    invoke-static {p1}, Le6/c;->f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object p1

    invoke-static {p1}, Le6/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    return-void
.end method
