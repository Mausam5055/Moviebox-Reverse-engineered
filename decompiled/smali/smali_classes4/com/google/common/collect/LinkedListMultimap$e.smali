.class Lcom/google/common/collect/LinkedListMultimap$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final a:Ljava/util/Set;

.field b:Lcom/google/common/collect/LinkedListMultimap$g;

.field c:Lcom/google/common/collect/LinkedListMultimap$g;

.field d:I

.field final synthetic e:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->g(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$g;

    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$e;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->d:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->a()V

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->a()V

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$g;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$g;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$g;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$g;->a:Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$e;->a()V

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->e:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$g;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->d:I

    return-void
.end method
