.class public abstract Lkotlin/collections/AbstractIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u0005H\u0096\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\u0010\u0010\t\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH$\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\u0004R\u0016\u0010\u0013\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0012R\u0018\u0010\u0016\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlin/collections/AbstractIterator;",
        "T",
        "",
        "<init>",
        "()V",
        "",
        "f",
        "()Z",
        "hasNext",
        "next",
        "()Ljava/lang/Object;",
        "",
        "a",
        "value",
        "e",
        "(Ljava/lang/Object;)V",
        "c",
        "",
        "I",
        "state",
        "b",
        "Ljava/lang/Object;",
        "nextValue",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final f()Z
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lkotlin/collections/AbstractIterator;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->a()V

    iget v0, p0, Lkotlin/collections/AbstractIterator;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final c()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/collections/AbstractIterator;->a:I

    return-void
.end method

.method protected final e(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/AbstractIterator;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lkotlin/collections/AbstractIterator;->a:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lkotlin/collections/AbstractIterator;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasNext called when the iterator is in the FAILED state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;->f()Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/collections/AbstractIterator;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput v2, p0, Lkotlin/collections/AbstractIterator;->a:I

    iget-object v0, p0, Lkotlin/collections/AbstractIterator;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lkotlin/collections/AbstractIterator;->a:I

    iget-object v0, p0, Lkotlin/collections/AbstractIterator;->b:Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
