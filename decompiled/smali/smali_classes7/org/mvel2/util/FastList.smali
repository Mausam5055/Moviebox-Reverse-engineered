.class public Lorg/mvel2/util/FastList;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# instance fields
.field private elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I

.field private updated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/mvel2/util/FastList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mvel2/util/FastList;->size:I

    iput-boolean v0, p0, Lorg/mvel2/util/FastList;->updated:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mvel2/util/FastList;->size:I

    iput-boolean v0, p0, Lorg/mvel2/util/FastList;->updated:Z

    iput-object p1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/util/FastList;->size:I

    return-void
.end method

.method static synthetic access$000(Lorg/mvel2/util/FastList;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lorg/mvel2/util/FastList;)I
    .locals 0

    iget p0, p0, Lorg/mvel2/util/FastList;->size:I

    return p0
.end method

.method private copyArray()V
    .locals 1

    iget-object v0, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/mvel2/util/FastList;->increaseSize(I)V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    iget v0, p0, Lorg/mvel2/util/FastList;->size:I

    add-int v1, v0, p1

    iget-object v2, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    array-length v2, v2

    if-le v1, v2, :cond_0

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/mvel2/util/FastList;->increaseSize(I)V

    :cond_0
    return-void
.end method

.method private increaseSize(I)V
    .locals 3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mvel2/util/FastList;->updated:Z

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Lorg/mvel2/util/FastList;->size:I

    iget-object v1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/mvel2/util/FastList;->increaseSize(I)V

    :cond_0
    iget v0, p0, Lorg/mvel2/util/FastList;->size:I

    :goto_0
    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    aput-object p2, v0, p1

    iget p1, p0, Lorg/mvel2/util/FastList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mvel2/util/FastList;->size:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget v0, p0, Lorg/mvel2/util/FastList;->size:I

    iget-object v1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/mvel2/util/FastList;->increaseSize(I)V

    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/mvel2/util/FastList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mvel2/util/FastList;->size:I

    aput-object p1, v0, v1

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lorg/mvel2/util/FastList;->size:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/mvel2/util/FastList;->ensureCapacity(I)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, p1

    :goto_0
    add-int v3, p1, v0

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    add-int v4, v2, v0

    add-int/2addr v4, v1

    aget-object v5, v3, v2

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/mvel2/util/FastList;->size:I

    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    add-int/2addr p1, v0

    aput-object v2, v3, p1

    move p1, v4

    goto :goto_2

    :cond_2
    iget p1, p0, Lorg/mvel2/util/FastList;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/mvel2/util/FastList;->size:I

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lorg/mvel2/util/FastList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/mvel2/util/FastList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mvel2/util/FastList;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/mvel2/util/FastList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/mvel2/util/FastList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    if-nez v4, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    return v2

    :cond_5
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/util/AbstractList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/mvel2/util/FastList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lorg/mvel2/util/FastList;->size:I

    new-instance v1, Lorg/mvel2/util/FastList$a;

    invoke-direct {v1, p0, v0}, Lorg/mvel2/util/FastList$a;-><init>(Lorg/mvel2/util/FastList;I)V

    return-object v1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-eq v1, v0, :cond_2

    iget-object v2, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lorg/mvel2/util/FastList$b;

    invoke-direct {v0, p0}, Lorg/mvel2/util/FastList$b;-><init>(Lorg/mvel2/util/FastList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mvel2/util/FastList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/mvel2/util/FastList;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lorg/mvel2/util/FastList;->size:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    add-int/lit8 v2, p1, -0x1

    aget-object v3, v1, p1

    aput-object v3, v1, v2

    const/4 v2, 0x0

    aput-object v2, v1, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mvel2/util/FastList;->size:I

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected removeRange(II)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mvel2/util/FastList;->updated:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/mvel2/util/FastList;->copyArray()V

    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/mvel2/util/FastList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/mvel2/util/FastList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mvel2/util/FastList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    array-length v0, p1

    iget v1, p0, Lorg/mvel2/util/FastList;->size:I

    if-ge v0, v1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/mvel2/util/FastList;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/mvel2/util/FastList;->size:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/mvel2/util/FastList;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mvel2/util/FastList;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
