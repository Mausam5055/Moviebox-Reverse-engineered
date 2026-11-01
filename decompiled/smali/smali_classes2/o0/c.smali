.class public abstract Lo0/c;
.super Ljava/lang/Object;


# direct methods
.method public static final a(IIII)J
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, 0x29

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxWidth("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") must be >= than minWidth("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo0/o;->a(Ljava/lang/String;)V

    :cond_1
    if-lt p3, p2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxHeight("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") must be >= than minHeight("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo0/o;->a(Ljava/lang/String;)V

    :cond_3
    if-ltz p0, :cond_4

    if-ltz p2, :cond_4

    move v0, v1

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minWidth("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") and minHeight("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") must be >= 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/o;->a(Ljava/lang/String;)V

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lo0/c;->j(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic b(IIIIILjava/lang/Object;)J
    .locals 2

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p0, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const v1, 0x7fffffff

    if-eqz p5, :cond_1

    move p1, v1

    :cond_1
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_2

    move p2, v0

    :cond_2
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3

    move p3, v1

    :cond_3
    invoke-static {p0, p1, p2, p3}, Lo0/c;->a(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(I)I
    .locals 0

    invoke-static {p0}, Lo0/c;->m(I)I

    move-result p0

    return p0
.end method

.method private static final d(II)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static final e(I)I
    .locals 1

    const/16 v0, 0x1fff

    if-ge p0, v0, :cond_0

    const/16 p0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0x7fff

    if-ge p0, v0, :cond_1

    const/16 p0, 0xf

    goto :goto_0

    :cond_1
    const v0, 0xffff

    if-ge p0, v0, :cond_2

    const/16 p0, 0x10

    goto :goto_0

    :cond_2
    const v0, 0x3ffff

    if-ge p0, v0, :cond_3

    const/16 p0, 0x12

    goto :goto_0

    :cond_3
    const/16 p0, 0xff

    :goto_0
    return p0
.end method

.method public static final f(JJ)J
    .locals 3

    invoke-static {p2, p3}, Lo0/t;->g(J)I

    move-result v0

    invoke-static {p0, p1}, Lo0/b;->n(J)I

    move-result v1

    invoke-static {p0, p1}, Lo0/b;->l(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v0

    invoke-static {p2, p3}, Lo0/t;->f(J)I

    move-result p2

    invoke-static {p0, p1}, Lo0/b;->m(J)I

    move-result p3

    invoke-static {p0, p1}, Lo0/b;->k(J)I

    move-result p0

    invoke-static {p2, p3, p0}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p0

    invoke-static {v0, p0}, Lo0/u;->a(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final g(JJ)J
    .locals 5

    invoke-static {p2, p3}, Lo0/b;->n(J)I

    move-result v0

    invoke-static {p0, p1}, Lo0/b;->n(J)I

    move-result v1

    invoke-static {p0, p1}, Lo0/b;->l(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v0

    invoke-static {p2, p3}, Lo0/b;->l(J)I

    move-result v1

    invoke-static {p0, p1}, Lo0/b;->n(J)I

    move-result v2

    invoke-static {p0, p1}, Lo0/b;->l(J)I

    move-result v3

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v1

    invoke-static {p2, p3}, Lo0/b;->m(J)I

    move-result v2

    invoke-static {p0, p1}, Lo0/b;->m(J)I

    move-result v3

    invoke-static {p0, p1}, Lo0/b;->k(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v2

    invoke-static {p2, p3}, Lo0/b;->k(J)I

    move-result p2

    invoke-static {p0, p1}, Lo0/b;->m(J)I

    move-result p3

    invoke-static {p0, p1}, Lo0/b;->k(J)I

    move-result p0

    invoke-static {p2, p3, p0}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lo0/c;->a(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final h(JI)I
    .locals 1

    invoke-static {p0, p1}, Lo0/b;->m(J)I

    move-result v0

    invoke-static {p0, p1}, Lo0/b;->k(J)I

    move-result p0

    invoke-static {p2, v0, p0}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p0

    return p0
.end method

.method public static final i(JI)I
    .locals 1

    invoke-static {p0, p1}, Lo0/b;->n(J)I

    move-result v0

    invoke-static {p0, p1}, Lo0/b;->l(J)I

    move-result p0

    invoke-static {p2, v0, p0}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p0

    return p0
.end method

.method public static final j(IIII)J
    .locals 8

    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    invoke-static {v1}, Lo0/c;->e(I)I

    move-result v2

    if-ne p1, v0, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    invoke-static {v0}, Lo0/c;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    const/16 v4, 0x1f

    if-le v2, v4, :cond_2

    invoke-static {v0, v1}, Lo0/c;->k(II)V

    :cond_2
    const/4 v0, 0x1

    add-int/2addr p1, v0

    shr-int/lit8 v1, p1, 0x1f

    not-int v1, v1

    and-int/2addr p1, v1

    add-int/2addr p3, v0

    shr-int/lit8 v1, p3, 0x1f

    not-int v1, v1

    and-int/2addr p3, v1

    const/16 v1, 0xd

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v1, :cond_6

    const/16 v1, 0x12

    if-eq v3, v1, :cond_5

    const/16 v1, 0xf

    if-eq v3, v1, :cond_4

    const/16 v1, 0x10

    if-eq v3, v1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v0

    goto :goto_2

    :cond_5
    move v4, v2

    :cond_6
    :goto_2
    and-int/lit8 v1, v4, 0x1

    shl-int/2addr v1, v0

    and-int/lit8 v3, v4, 0x2

    shr-int/lit8 v0, v3, 0x1

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, 0xf

    add-int/lit8 v1, v1, 0x2e

    int-to-long v2, v4

    int-to-long v6, p0

    shl-long v4, v6, v5

    or-long/2addr v2, v4

    int-to-long p0, p1

    const/16 v4, 0x21

    shl-long/2addr p0, v4

    or-long/2addr p0, v2

    int-to-long v2, p2

    shl-long/2addr v2, v0

    or-long/2addr p0, v2

    int-to-long p2, p3

    shl-long/2addr p2, v1

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lo0/b;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final k(II)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t represent a width of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and height of "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in Constraints"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final l(I)Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t represent a size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in Constraints"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final m(I)I
    .locals 1

    const/16 v0, 0x1fff

    if-ge p0, v0, :cond_0

    const p0, 0x3fffe

    goto :goto_0

    :cond_0
    const/16 v0, 0x7fff

    if-ge p0, v0, :cond_1

    const p0, 0xfffe

    goto :goto_0

    :cond_1
    const v0, 0xffff

    if-ge p0, v0, :cond_2

    const/16 p0, 0x7ffe

    goto :goto_0

    :cond_2
    const v0, 0x3ffff

    if-ge p0, v0, :cond_3

    const/16 p0, 0x1ffe

    :goto_0
    return p0

    :cond_3
    invoke-static {p0}, Lo0/c;->l(I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final n(JII)J
    .locals 3

    invoke-static {p0, p1}, Lo0/b;->n(J)I

    move-result v0

    add-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    invoke-static {p0, p1}, Lo0/b;->l(J)I

    move-result v2

    invoke-static {v2, p2}, Lo0/c;->d(II)I

    move-result p2

    invoke-static {p0, p1}, Lo0/b;->m(J)I

    move-result v2

    add-int/2addr v2, p3

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v1

    invoke-static {p0, p1}, Lo0/b;->k(J)I

    move-result p0

    invoke-static {p0, p3}, Lo0/c;->d(II)I

    move-result p0

    invoke-static {v0, p2, v1, p0}, Lo0/c;->a(IIII)J

    move-result-wide p0

    return-wide p0
.end method
