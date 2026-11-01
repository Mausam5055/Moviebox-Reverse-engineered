.class public final Landroidx/compose/foundation/lazy/layout/c0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/b;


# instance fields
.field private final a:Landroidx/compose/runtime/collection/b;

.field private b:I

.field private c:Landroidx/compose/foundation/lazy/layout/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/collection/b;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/foundation/lazy/layout/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/c0;->a:Landroidx/compose/runtime/collection/b;

    return-void
.end method

.method private final c(I)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/c0;->getSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/c0;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final d(Landroidx/compose/foundation/lazy/layout/b$a;I)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/b$a;->b()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/b$a;->b()I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/b$a;->a()I

    move-result p1

    add-int/2addr v1, p1

    const/4 p1, 0x0

    if-ge p2, v1, :cond_0

    if-gt v0, p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private final e(I)Landroidx/compose/foundation/lazy/layout/b$a;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/c0;->c:Landroidx/compose/foundation/lazy/layout/b$a;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/lazy/layout/c0;->d(Landroidx/compose/foundation/lazy/layout/b$a;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/c0;->a:Landroidx/compose/runtime/collection/b;

    invoke-static {v0, p1}, Landroidx/compose/foundation/lazy/layout/c;->a(Landroidx/compose/runtime/collection/b;I)I

    move-result p1

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/layout/b$a;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/c0;->c:Landroidx/compose/foundation/lazy/layout/b$a;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(IILkotlin/jvm/functions/Function1;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/c0;->c(I)V

    invoke-direct {p0, p2}, Landroidx/compose/foundation/lazy/layout/c0;->c(I)V

    if-lt p2, p1, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/c0;->a:Landroidx/compose/runtime/collection/b;

    invoke-static {v0, p1}, Landroidx/compose/foundation/lazy/layout/c;->a(Landroidx/compose/runtime/collection/b;I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/c0;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/layout/b$a;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/b$a;->b()I

    move-result v0

    :goto_0
    if-gt v0, p2, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/c0;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/layout/b$a;

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/b$a;->a()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "toIndex ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") should be not smaller than fromIndex ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 2

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/layout/b$a;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/c0;->getSize()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/foundation/lazy/layout/b$a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/c0;->getSize()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/c0;->b:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/c0;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size should be >=0, but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public get(I)Landroidx/compose/foundation/lazy/layout/b$a;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/c0;->c(I)V

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/c0;->e(I)Landroidx/compose/foundation/lazy/layout/b$a;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/c0;->b:I

    return v0
.end method
