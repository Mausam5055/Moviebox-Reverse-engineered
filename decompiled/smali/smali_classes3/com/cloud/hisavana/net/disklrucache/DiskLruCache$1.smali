.class Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->b(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->d(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)V

    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->k(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->n(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)V

    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->o(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;I)I

    :cond_1
    monitor-exit v0

    return-object v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
