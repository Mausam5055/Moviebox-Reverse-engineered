.class public final Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;
.super Lkotlin/collections/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Lkotlin/ULong;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0096\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2",
        "Lkotlin/collections/AbstractList;",
        "Lkotlin/ULong;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "",
        "isEmpty",
        "()Z",
        "element",
        "e",
        "(J)Z",
        "",
        "index",
        "f",
        "(I)J",
        "h",
        "(J)I",
        "j",
        "getSize",
        "()I",
        "size",
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
.field final synthetic a:[J


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/ULong;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lkotlin/ULong;

    invoke-virtual {p1}, Lkotlin/ULong;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->e(J)Z

    move-result p1

    return p1
.end method

.method public e(J)Z
    .locals 1

    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->a:[J

    invoke-static {v0, p1, p2}, Lkotlin/ULongArray;->h([JJ)Z

    move-result p1

    return p1
.end method

.method public f(I)J
    .locals 2

    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->a:[J

    invoke-static {v0, p1}, Lkotlin/ULongArray;->m([JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->f(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->a(J)Lkotlin/ULong;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->a:[J

    invoke-static {v0}, Lkotlin/ULongArray;->o([J)I

    move-result v0

    return v0
.end method

.method public h(J)I
    .locals 1

    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->a:[J

    invoke-static {v0, p1, p2}, Lkotlin/collections/ArraysKt;->g0([JJ)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Lkotlin/ULong;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lkotlin/ULong;

    invoke-virtual {p1}, Lkotlin/ULong;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->h(J)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->a:[J

    invoke-static {v0}, Lkotlin/ULongArray;->q([J)Z

    move-result v0

    return v0
.end method

.method public j(J)I
    .locals 1

    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->a:[J

    invoke-static {v0, p1, p2}, Lkotlin/collections/ArraysKt;->u0([JJ)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Lkotlin/ULong;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lkotlin/ULong;

    invoke-virtual {p1}, Lkotlin/ULong;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2;->j(J)I

    move-result p1

    return p1
.end method
