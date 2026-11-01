.class public Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Dq:I

.field private EjP:I

.field private HiB:I

.field private Jcg:I

.field private final Sj:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;",
            "Ljava/lang/ref/SoftReference<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private TKC:I

.field private sP:I

.field private vS:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->TKC:I

    new-instance p1, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj:Ljava/util/LinkedHashMap;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private TKC(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final Sj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Jcg:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Jcg:I

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Dq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Dq:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->HiB:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->HiB:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->TKC(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->TKC:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj(I)V

    return-object v2

    :goto_3
    monitor-exit p0

    throw p1

    :goto_4
    monitor-exit p0

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Sj(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->EjP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->EjP:I

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->TKC(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->TKC(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->TKC:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj(I)V

    return-object p2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Sj(I)V
    .locals 3

    :goto_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    if-eqz v0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    if-gt v0, p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->TKC(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->vS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->vS:I

    monitor-exit p0

    goto :goto_0

    :cond_4
    :goto_1
    const-string v0, "LruCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "oom maybe occured, clear cache. size= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->sP:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Sj:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method protected sP(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected sP(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Jcg:I

    iget v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Dq:I

    add-int/2addr v2, v1

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    iget v3, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->TKC:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Jcg:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;->Dq:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v0

    const/4 v0, 0x1

    aput-object v4, v6, v0

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const/4 v0, 0x3

    aput-object v1, v6, v0

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
