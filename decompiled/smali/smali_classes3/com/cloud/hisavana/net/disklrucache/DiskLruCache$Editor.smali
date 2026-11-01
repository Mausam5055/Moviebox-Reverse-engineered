.class public final Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

.field private final b:[Z

.field private c:Z

.field private d:Z

.field final synthetic e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    invoke-static {p2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->e(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic c(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    return-object p0
.end method

.method static synthetic d(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)[Z
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->b:[Z

    return-object p0
.end method

.method static synthetic e(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->m(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->d:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->m(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    iget-object v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->b(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->d0(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-static {v0, p0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->m(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->d:Z

    return-void
.end method

.method public g(I)Ljava/io/OutputStream;
    .locals 3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->g(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->e(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->k(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    new-instance p1, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;)V

    monitor-exit v0

    return-object p1

    :catch_1
    invoke-static {}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->l()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
