.class Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/sP/Sj/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Lcom/bytedance/sdk/component/sP/Sj/Zq;)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-eqz p2, :cond_13

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->EjP()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->k(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;Z)Z

    iget-object v3, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v4, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->Sj()J

    move-result-wide v5

    iget-object v7, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v7}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->m(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v4, v5, v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->h(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;J)J

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->TKC()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    move-object v4, v0

    if-nez v4, :cond_4

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->close()V

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->close()V

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->l(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->n(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_3
    return-void

    :cond_4
    const/16 v0, 0x2000

    :try_start_3
    new-array v0, v0, [B

    iget-object v5, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->m(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move v9, v2

    move-wide v10, v7

    :cond_5
    :goto_0
    rsub-int v12, v9, 0x2000

    invoke-virtual {v4, v0, v9, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    add-int/2addr v9, v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x2000

    rem-long v12, v10, v12

    cmp-long v12, v12, v7

    if-eqz v12, :cond_7

    iget-object v12, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v12}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->l(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    move-result-wide v12

    iget-object v14, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v14}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->m(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    cmp-long v12, v10, v12

    if-nez v12, :cond_6

    goto :goto_1

    :cond_6
    move v12, v2

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v12, 0x1

    :goto_2
    iget-object v13, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v13}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->l(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    iget-object v13, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v13}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->m(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    iget-object v13, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v13}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    iget-object v13, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v13}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v12, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v12}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    iget-object v13, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v13}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->o(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/io/RandomAccessFile;

    move-result-object v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->intValue()I

    move-result v14

    iget-object v15, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v15}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v15

    invoke-virtual {v15}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v0, v14, v9, v15}, Lc6/b;->b(Ljava/io/RandomAccessFile;[BIILjava/lang/String;)V

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    int-to-long v12, v9

    add-long/2addr v5, v12

    move v9, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v12

    throw v0

    :cond_8
    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->m(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->l(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->l(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->m(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v0, v4

    goto :goto_3

    :catchall_2
    move-object v4, v0

    goto :goto_4

    :cond_9
    :try_start_6
    iget-object v3, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->k(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;Z)Z

    iget-object v3, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->g(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->h(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;J)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v3, v0

    :goto_3
    if-eqz v0, :cond_a

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->close()V

    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->close()V

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->l(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->n(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    :cond_c
    return-void

    :catchall_4
    move-object v3, v0

    move-object v4, v3

    :catchall_5
    :goto_4
    :try_start_8
    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->k(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;Z)Z

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->g(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->h(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;J)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v4, :cond_d

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->close()V

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->close()V

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->l(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->n(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    :cond_f
    return-void

    :catchall_7
    move-exception v0

    if-eqz v4, :cond_10

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_10
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->close()V

    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->close()V

    iget-object v2, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->l(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    iget-object v2, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->n(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :catchall_8
    :cond_12
    throw v0

    :cond_13
    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->k(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;Z)Z

    iget-object v0, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->g(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->h(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;J)J

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Ljava/io/IOException;)V
    .locals 2

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->k(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;Z)Z

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->h(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;J)J

    return-void
.end method
