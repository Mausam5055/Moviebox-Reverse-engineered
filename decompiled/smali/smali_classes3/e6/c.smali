.class public Le6/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

.field private volatile c:Z

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private final f:Ljava/util/List;

.field private volatile g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le6/c;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Le6/c;->d:Ljava/io/File;

    iput-object v1, p0, Le6/c;->e:Ljava/io/File;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le6/c;->f:Ljava/util/List;

    iput-boolean v0, p0, Le6/c;->g:Z

    iput-object p1, p0, Le6/c;->a:Landroid/content/Context;

    iput-object p2, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc6/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Le6/c;->d:Ljava/io/File;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lc6/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Le6/c;->e:Ljava/io/File;

    return-void
.end method

.method private a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Le6/c;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Le6/c;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic b(Le6/c;)V
    .locals 0

    invoke-direct {p0}, Le6/c;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Le6/c;->d:Ljava/io/File;

    iget-object v1, p0, Le6/c;->e:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error renaming file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Le6/c;->d:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le6/c;->e:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for completion!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Le6/c;)V
    .locals 0

    invoke-direct {p0}, Le6/c;->a()V

    return-void
.end method

.method static synthetic f(Le6/c;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;
    .locals 0

    iget-object p0, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    return-object p0
.end method

.method private g(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    .locals 3

    const-class v0, Lv5/a$a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le6/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv5/a$a;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lv5/a$a;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method private h(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V
    .locals 3

    const-class v0, Lv5/a$a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le6/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv5/a$a;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lv5/a$a;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method static synthetic i(Le6/c;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le6/c;->r(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V

    return-void
.end method

.method static synthetic j(Le6/c;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Le6/c;->h(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic k(Le6/c;Ljava/io/Closeable;)V
    .locals 0

    invoke-direct {p0, p1}, Le6/c;->l(Ljava/io/Closeable;)V

    return-void
.end method

.method private l(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private o()V
    .locals 11

    invoke-static {}, Lt5/b;->a()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lt5/b;->a()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->sP()Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    const-string v1, "v_preload"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->uvD()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v1

    iget-object v2, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dNu()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v1

    iget-object v2, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TzV()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    iget-object v2, p0, Le6/c;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    move-result v4

    iget-object v5, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TEQ()Z

    move-result v5

    iget-object v6, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v6}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj()I

    move-result v6

    if-lez v6, :cond_2

    int-to-long v7, v6

    iget-object v9, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v9}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->uA()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v4, v6

    :cond_2
    :goto_1
    const-string v6, "videoPreload"

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(I)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    const-string v6, "-"

    const-string v7, "bytes="

    const-string v8, "RANGE"

    if-eqz v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v4

    iget-object v5, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v4

    iget-object v5, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    :goto_2
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object v0

    new-instance v1, Le6/c$a;

    invoke-direct {v1, p0, v2, v3}, Le6/c$a;-><init>(Le6/c;J)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->Sj(Lcom/bytedance/sdk/component/sP/Sj/TKC;)V

    return-void
.end method

.method static synthetic p(Le6/c;)Z
    .locals 0

    iget-boolean p0, p0, Le6/c;->c:Z

    return p0
.end method

.method static synthetic q(Le6/c;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Le6/c;->d:Ljava/io/File;

    return-object p0
.end method

.method private r(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    .locals 3

    const-class v0, Lv5/a$a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le6/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv5/a$a;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lv5/a$a;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method static synthetic s(Le6/c;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le6/c;->g(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V

    return-void
.end method

.method private t()Z
    .locals 7

    iget-object v0, p0, Le6/c;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TEQ()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Le6/c;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v0, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Le6/c;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v0, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method public e()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;
    .locals 1

    iget-object v0, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    return-object v0
.end method

.method public m(Lv5/a$a;)V
    .locals 2

    iget-boolean v0, p0, Le6/c;->g:Z

    if-eqz v0, :cond_0

    const-class v0, Lv5/a$a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le6/c;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    iget-object v0, p0, Le6/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Le6/c;->t()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg(I)V

    iget-object p1, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    const/16 v0, 0xc8

    invoke-direct {p0, p1, v0}, Le6/c;->g(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V

    iget-object p1, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-static {p1}, Le6/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    return-void

    :cond_1
    iput-boolean v0, p0, Le6/c;->g:Z

    iget-object p1, p0, Le6/c;->b:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg(I)V

    invoke-direct {p0}, Le6/c;->o()V

    return-void
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Le6/c;->c:Z

    return-void
.end method
