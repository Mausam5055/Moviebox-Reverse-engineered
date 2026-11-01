.class abstract Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "e"
.end annotation


# instance fields
.field a:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

.field b:I

.field c:I

.field d:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

.field final synthetic e:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->e:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->b:I

    iget v0, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-lez v0, :cond_0

    iget-object p1, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->c:I

    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->c:I

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->a:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a()Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->e:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->b:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->a:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;->c:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->a:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->e:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->c:I

    array-length v3, v1

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->c:I

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->a:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->d:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->a:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->d:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->e:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->d:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->d:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->e:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$b;

    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->e:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$e;->b:I

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
