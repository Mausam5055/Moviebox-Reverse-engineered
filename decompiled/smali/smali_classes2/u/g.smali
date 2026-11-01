.class public Lu/g;
.super Lu/e;

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# instance fields
.field private final d:Lu/f;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lu/f;[Lu/u;)V
    .locals 1

    invoke-virtual {p1}, Lu/f;->j()Lu/t;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lu/e;-><init>(Lu/t;[Lu/u;)V

    iput-object p1, p0, Lu/g;->d:Lu/f;

    invoke-virtual {p1}, Lu/f;->i()I

    move-result p1

    iput p1, p0, Lu/g;->g:I

    return-void
.end method

.method private final j()V
    .locals 2

    iget-object v0, p0, Lu/g;->d:Lu/f;

    invoke-virtual {v0}, Lu/f;->i()I

    move-result v0

    iget v1, p0, Lu/g;->g:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private final l()V
    .locals 1

    iget-boolean v0, p0, Lu/g;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private final m(ILu/t;Ljava/lang/Object;I)V
    .locals 5

    mul-int/lit8 v0, p4, 0x5

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lu/e;->f()[Lu/u;

    move-result-object p1

    aget-object p1, p1, p4

    invoke-virtual {p2}, Lu/t;->p()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lu/t;->p()[Ljava/lang/Object;

    move-result-object p2

    array-length p2, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lu/u;->n([Ljava/lang/Object;II)V

    :goto_0
    invoke-virtual {p0}, Lu/e;->f()[Lu/u;

    move-result-object p1

    aget-object p1, p1, p4

    invoke-virtual {p1}, Lu/u;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lu/e;->f()[Lu/u;

    move-result-object p1

    aget-object p1, p1, p4

    invoke-virtual {p1}, Lu/u;->j()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Lu/e;->i(I)V

    return-void

    :cond_1
    invoke-static {p1, v0}, Lu/x;->f(II)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-virtual {p2, v0}, Lu/t;->q(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v0}, Lu/t;->n(I)I

    move-result p1

    invoke-virtual {p0}, Lu/e;->f()[Lu/u;

    move-result-object p3

    aget-object p3, p3, p4

    invoke-virtual {p2}, Lu/t;->p()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lu/t;->m()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p3, v0, p2, p1}, Lu/u;->n([Ljava/lang/Object;II)V

    invoke-virtual {p0, p4}, Lu/e;->i(I)V

    return-void

    :cond_2
    invoke-virtual {p2, v0}, Lu/t;->O(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lu/t;->N(I)Lu/t;

    move-result-object v2

    invoke-virtual {p0}, Lu/e;->f()[Lu/u;

    move-result-object v3

    aget-object v3, v3, p4

    invoke-virtual {p2}, Lu/t;->p()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lu/t;->m()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {v3, v4, p2, v0}, Lu/u;->n([Ljava/lang/Object;II)V

    add-int/2addr p4, v1

    invoke-direct {p0, p1, v2, p3, p4}, Lu/g;->m(ILu/t;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lu/g;->d:Lu/f;

    invoke-virtual {v0, p1}, Lu/f;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lu/e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lu/e;->c()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lu/g;->d:Lu/f;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    iget-object v1, p0, Lu/g;->d:Lu/f;

    invoke-virtual {v1}, Lu/f;->j()Lu/t;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0, p1}, Lu/g;->m(ILu/t;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lu/g;->d:Lu/f;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lu/g;->d:Lu/f;

    invoke-virtual {p1}, Lu/f;->i()I

    move-result p1

    iput p1, p0, Lu/g;->g:I

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lu/g;->j()V

    invoke-virtual {p0}, Lu/e;->c()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lu/g;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/g;->f:Z

    invoke-super {p0}, Lu/e;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 4

    invoke-direct {p0}, Lu/g;->l()V

    invoke-virtual {p0}, Lu/e;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lu/e;->c()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lu/g;->d:Lu/f;

    iget-object v3, p0, Lu/g;->e:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lu/g;->d:Lu/f;

    invoke-virtual {v3}, Lu/f;->j()Lu/t;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lu/g;->m(ILu/t;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lu/g;->d:Lu/f;

    iget-object v2, p0, Lu/g;->e:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lu/g;->e:Ljava/lang/Object;

    iput-boolean v1, p0, Lu/g;->f:Z

    iget-object v0, p0, Lu/g;->d:Lu/f;

    invoke-virtual {v0}, Lu/f;->i()I

    move-result v0

    iput v0, p0, Lu/g;->g:I

    return-void
.end method
