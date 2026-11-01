.class public final Lkotlin/collections/ArrayDeque;
.super Lkotlin/collections/AbstractMutableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/ArrayDeque$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u001e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008#\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u000e\u0008\u0007\u0018\u0000 U*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002:\u0001VB\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u0017\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u000fJ%\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00032\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u001f\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001bJ\u000f\u0010 \u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008 \u0010\u0007J\u000f\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\r\u0010$\u001a\u00028\u0000\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008&\u0010%J\r\u0010\'\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\'\u0010%J\u000f\u0010(\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008(\u0010%J\u0015\u0010*\u001a\u00020\t2\u0006\u0010)\u001a\u00028\u0000\u00a2\u0006\u0004\u0008*\u0010+J\u0015\u0010,\u001a\u00020\t2\u0006\u0010)\u001a\u00028\u0000\u00a2\u0006\u0004\u0008,\u0010+J\r\u0010-\u001a\u00028\u0000\u00a2\u0006\u0004\u0008-\u0010%J\u000f\u0010.\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008.\u0010%J\r\u0010/\u001a\u00028\u0000\u00a2\u0006\u0004\u0008/\u0010%J\u000f\u00100\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u00080\u0010%J\u0017\u00101\u001a\u00020!2\u0006\u0010)\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u00081\u00102J\u001f\u00101\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010)\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u00081\u00103J\u001d\u00104\u001a\u00020!2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0016\u00a2\u0006\u0004\u00084\u00105J%\u00104\u001a\u00020!2\u0006\u0010\r\u001a\u00020\u00032\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0016\u00a2\u0006\u0004\u00084\u00106J\u0018\u00107\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u0003H\u0096\u0002\u00a2\u0006\u0004\u00087\u00108J \u00109\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010)\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0004\u00089\u0010:J\u0018\u0010;\u001a\u00020!2\u0006\u0010)\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008;\u00102J\u0017\u0010<\u001a\u00020\u00032\u0006\u0010)\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010>\u001a\u00020\u00032\u0006\u0010)\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008>\u0010=J\u0017\u0010?\u001a\u00020!2\u0006\u0010)\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008?\u00102J\u0017\u0010@\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008@\u00108J\u001d\u0010A\u001a\u00020!2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0016\u00a2\u0006\u0004\u0008A\u00105J\u001d\u0010B\u001a\u00020!2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0016\u00a2\u0006\u0004\u0008B\u00105J\u000f\u0010C\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008C\u0010\u0007J)\u0010G\u001a\u0008\u0012\u0004\u0012\u00028\u00010E\"\u0004\u0008\u0001\u0010D2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00028\u00010EH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u0017\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010I0EH\u0016\u00a2\u0006\u0004\u0008G\u0010JJ\u001f\u0010K\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008K\u0010\u001bR\u0016\u0010M\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010LR\u001e\u0010P\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010I0E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR$\u0010T\u001a\u00020\u00032\u0006\u0010Q\u001a\u00020\u00038\u0016@RX\u0096\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010L\u001a\u0004\u0008R\u0010S\u00a8\u0006W"
    }
    d2 = {
        "Lkotlin/collections/ArrayDeque;",
        "E",
        "Lkotlin/collections/AbstractMutableList;",
        "",
        "initialCapacity",
        "<init>",
        "(I)V",
        "()V",
        "minCapacity",
        "",
        "f",
        "newCapacity",
        "c",
        "index",
        "o",
        "(I)I",
        "m",
        "j",
        "e",
        "internalIndex",
        "",
        "elements",
        "a",
        "(ILjava/util/Collection;)V",
        "fromIndex",
        "toIndex",
        "r",
        "(II)V",
        "s",
        "internalFromIndex",
        "internalToIndex",
        "n",
        "registerModification",
        "",
        "isEmpty",
        "()Z",
        "first",
        "()Ljava/lang/Object;",
        "h",
        "last",
        "l",
        "element",
        "addFirst",
        "(Ljava/lang/Object;)V",
        "addLast",
        "removeFirst",
        "p",
        "removeLast",
        "q",
        "add",
        "(Ljava/lang/Object;)Z",
        "(ILjava/lang/Object;)V",
        "addAll",
        "(Ljava/util/Collection;)Z",
        "(ILjava/util/Collection;)Z",
        "get",
        "(I)Ljava/lang/Object;",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "contains",
        "indexOf",
        "(Ljava/lang/Object;)I",
        "lastIndexOf",
        "remove",
        "removeAt",
        "removeAll",
        "retainAll",
        "clear",
        "T",
        "",
        "array",
        "toArray",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "",
        "()[Ljava/lang/Object;",
        "removeRange",
        "I",
        "head",
        "b",
        "[Ljava/lang/Object;",
        "elementData",
        "value",
        "getSize",
        "()I",
        "size",
        "d",
        "Companion",
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

.annotation build Lkotlin/SinceKotlin;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final d:Lkotlin/collections/ArrayDeque$Companion;

.field private static final e:[Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[Ljava/lang/Object;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/collections/ArrayDeque$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/ArrayDeque$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/ArrayDeque;->d:Lkotlin/collections/ArrayDeque$Companion;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/collections/ArrayDeque;->e:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    sget-object v0, Lkotlin/collections/ArrayDeque;->e:[Ljava/lang/Object;

    iput-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/collections/ArrayDeque;->e:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    new-array p1, p1, [Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final a(ILjava/util/Collection;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v1, v1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lkotlin/collections/ArrayDeque;->c:I

    return-void
.end method

.method private final c(I)V
    .locals 4

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->a:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v2}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iput v3, p0, Lkotlin/collections/ArrayDeque;->a:I

    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    return-void
.end method

.method private final e(I)I
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->b0([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method private final f(I)V
    .locals 2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lkotlin/collections/ArrayDeque;->e:[Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    return-void

    :cond_1
    sget-object v1, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    array-length v0, v0

    invoke-virtual {v1, v0, p1}, Lkotlin/collections/AbstractList$Companion;->e(II)I

    move-result p1

    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->c(I)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Deque is too big."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final j(I)I
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->b0([Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method private final m(I)I
    .locals 1

    if-gez p1, :cond_0

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private final n(II)V
    .locals 3

    const/4 v0, 0x0

    if-ge p1, p2, :cond_0

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {v1, v0, p1, p2}, Lkotlin/collections/ArraysKt;->w([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, v1

    invoke-static {v1, v0, p1, v2}, Lkotlin/collections/ArraysKt;->w([Ljava/lang/Object;Ljava/lang/Object;II)V

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lkotlin/collections/ArraysKt;->w([Ljava/lang/Object;Ljava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method private final o(I)I
    .locals 2

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v0, v0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private final r(II)V
    .locals 6

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/lit8 v1, p1, -0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/lit8 p2, p2, -0x1

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result p2

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    sub-int/2addr p2, v2

    add-int/lit8 v4, p2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v5, v0, 0x1

    invoke-static {v3, v3, v4, v5, v1}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->m(I)I

    move-result v0

    invoke-direct {p0, p2}, Lkotlin/collections/ArrayDeque;->m(I)I

    move-result p2

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final registerModification()V
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method private final s(II)V
    .locals 4

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result p1

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    :goto_0
    sub-int/2addr v1, p2

    if-lez v1, :cond_0

    iget-object p2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, p2

    sub-int/2addr v2, v0

    array-length p2, p2

    sub-int/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    add-int v3, v0, p2

    invoke-static {v2, v2, p1, v0, v3}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    invoke-direct {p0, v3}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    add-int/2addr p1, p2

    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7

    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->c(II)V

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->f(I)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v2

    add-int/2addr v2, v1

    shr-int/2addr v2, v1

    const/4 v3, 0x0

    if-ge p1, v2, :cond_3

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->e(I)I

    move-result p1

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->e(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->a:I

    if-lt p1, v2, :cond_2

    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v0

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, p1, 0x1

    invoke-static {v3, v3, v2, v4, v5}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    array-length v6, v4

    invoke-static {v4, v4, v5, v2, v6}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v4, v2

    sub-int/2addr v4, v1

    aget-object v5, v2, v3

    aput-object v5, v2, v4

    add-int/lit8 v4, p1, 0x1

    invoke-static {v2, v2, v3, v1, v4}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aput-object p2, v2, p1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v2

    add-int/2addr p1, v2

    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result p1

    if-ge v0, p1, :cond_4

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v2, v3, v0, p1}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {v2, v2, v1, v3, p1}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aput-object v2, p1, v3

    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, p1, v2, v0, v3}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aput-object p2, p1, v0

    :goto_2
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->c:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 8

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->c(II)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->f(I)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_6

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    sub-int v0, p1, v3

    if-lt v2, p1, :cond_4

    if-ltz v0, :cond_2

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {v1, v1, v0, p1, v2}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v6, v2, p1

    array-length v7, v4

    sub-int/2addr v7, v0

    if-lt v7, v6, :cond_3

    invoke-static {v4, v4, v0, p1, v2}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_3
    add-int v6, p1, v7

    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    iget v4, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/2addr v4, v7

    invoke-static {p1, p1, v1, v4, v2}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    if-lt v3, v2, :cond_5

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v2}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v3}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {p1, p1, v1, v3, v2}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_0
    iput v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lkotlin/collections/ArrayDeque;->m(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lkotlin/collections/ArrayDeque;->a(ILjava/util/Collection;)V

    goto :goto_2

    :cond_6
    add-int p1, v2, v3

    if-ge v2, v0, :cond_9

    add-int/2addr v3, v0

    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v6, v4

    if-gt v3, v6, :cond_7

    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_7
    array-length v6, v4

    if-lt p1, v6, :cond_8

    array-length v1, v4

    sub-int/2addr p1, v1

    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_8
    array-length v6, v4

    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    invoke-static {v4, v4, v1, v3, v0}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {v0, v0, p1, v2, v3}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {v4, v4, v3, v1, v0}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v4, v0

    if-lt p1, v4, :cond_a

    array-length v1, v0

    sub-int/2addr p1, v1

    array-length v1, v0

    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_a
    array-length v4, v0

    sub-int/2addr v4, v3

    array-length v6, v0

    invoke-static {v0, v0, v1, v4, v6}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_1
    invoke-direct {p0, v2, p2}, Lkotlin/collections/ArrayDeque;->a(ILjava/util/Collection;)V

    :goto_2
    return v5
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->f(I)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lkotlin/collections/ArrayDeque;->a(ILjava/util/Collection;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->f(I)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->e(I)I

    move-result v0

    iput v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->c:I

    return-void
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->f(I)V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v1

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->c:I

    return-void
.end method

.method public clear()V
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-direct {p0, v1, v0}, Lkotlin/collections/ArrayDeque;->n(II)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    iput v0, p0, Lkotlin/collections/ArrayDeque;->c:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

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

.method public final first()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ArrayDeque is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->b(II)V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lkotlin/collections/ArrayDeque;->c:I

    return v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    if-ge v1, v0, :cond_1

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    :goto_1
    sub-int/2addr v1, p1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lt v1, v0, :cond_5

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, v2

    :goto_2
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v1, p1

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v1

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ArrayDeque is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_5

    :goto_0
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    :goto_1
    sub-int/2addr v0, p1

    return v0

    :cond_0
    if-eq v0, v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-le v1, v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v0, p1

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->b0([Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    if-gt v1, v0, :cond_5

    :goto_3
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    goto :goto_1

    :cond_4
    if-eq v0, v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    return v2
.end method

.method public final p()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final q()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/collections/AbstractMutableList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 11

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    move v5, v2

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v6, v6, v2

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    aput-object v6, v7, v5

    move v5, v8

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {p1, v3, v5, v0}, Lkotlin/collections/ArraysKt;->w([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_6

    :cond_3
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v5, v5

    move v7, v1

    move v6, v2

    :goto_2
    if-ge v2, v5, :cond_5

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v9, v8, v2

    aput-object v3, v8, v2

    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    aput-object v9, v8, v6

    move v6, v10

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v6}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v2

    move v5, v2

    :goto_4
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v6, v2, v1

    aput-object v3, v2, v1

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->j(I)I

    move-result v5

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v7

    :goto_6
    if-eqz v1, :cond_8

    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    sub-int/2addr v5, p1

    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->m(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->c:I

    :cond_8
    :goto_7
    return v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->b(II)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v2

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ge p1, v2, :cond_3

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    if-lt v0, p1, :cond_2

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v2, v2, v5, p1, v0}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {p1, p1, v3, v5, v0}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v0, p1

    sub-int/2addr v0, v3

    aget-object v0, p1, v0

    aput-object v0, p1, v5

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/lit8 v2, v0, 0x1

    array-length v5, p1

    sub-int/2addr v5, v3

    invoke-static {p1, p1, v2, v0, v5}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    aput-object v4, p1, v0

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->j(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v2

    add-int/2addr p1, v2

    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result p1

    if-gt v0, p1, :cond_4

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, p1, 0x1

    invoke-static {v2, v2, v0, v5, v6}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    array-length v7, v2

    invoke-static {v2, v2, v0, v6, v7}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v2, v0

    sub-int/2addr v2, v3

    aget-object v6, v0, v5

    aput-object v6, v0, v2

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v0, v5, v3, v2}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aput-object v4, v0, p1

    :goto_2
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    iput p1, p0, Lkotlin/collections/ArrayDeque;->c:I

    return-object v1
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->j(I)I

    move-result v0

    iput v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->c:I

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ArrayDeque is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->c:I

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ArrayDeque is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected removeRange(II)V
    .locals 2

    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/collections/AbstractList$Companion;->d(III)V

    sub-int v0, p2, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->clear()V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lkotlin/collections/AbstractMutableList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    sub-int/2addr v1, p2

    if-ge p1, v1, :cond_3

    invoke-direct {p0, p1, p2}, Lkotlin/collections/ArrayDeque;->r(II)V

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result p1

    iget p2, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-direct {p0, p2, p1}, Lkotlin/collections/ArrayDeque;->n(II)V

    iput p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lkotlin/collections/ArrayDeque;->s(II)V

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result p2

    add-int/2addr p1, p2

    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result p1

    sub-int p2, p1, v0

    invoke-direct {p0, p2}, Lkotlin/collections/ArrayDeque;->m(I)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lkotlin/collections/ArrayDeque;->n(II)V

    :goto_0
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lkotlin/collections/ArrayDeque;->c:I

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 11

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    move v5, v2

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v6, v6, v2

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    aput-object v6, v7, v5

    move v5, v8

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    invoke-static {p1, v3, v5, v0}, Lkotlin/collections/ArraysKt;->w([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_6

    :cond_3
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v5, v5

    move v7, v1

    move v6, v2

    :goto_2
    if-ge v2, v5, :cond_5

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v9, v8, v2

    aput-object v3, v8, v2

    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    aput-object v9, v8, v6

    move v6, v10

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v6}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v2

    move v5, v2

    :goto_4
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v6, v2, v1

    aput-object v3, v2, v1

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->j(I)I

    move-result v5

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v7

    :goto_6
    if-eqz v1, :cond_8

    invoke-direct {p0}, Lkotlin/collections/ArrayDeque;->registerModification()V

    iget p1, p0, Lkotlin/collections/ArrayDeque;->a:I

    sub-int/2addr v5, p1

    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->m(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->c:I

    :cond_8
    :goto_7
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->b(II)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result p1

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/collections/d;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->a:I

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v4

    iget v3, p0, Lkotlin/collections/ArrayDeque;->a:I

    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->r([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->a:I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->b:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->a:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v4}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->g(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
