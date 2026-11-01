.class public abstract Landroidx/collection/v0;
.super Ljava/lang/Object;


# static fields
.field public static final a:[J

.field private static final b:Landroidx/collection/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/collection/v0;->a:[J

    new-instance v0, Landroidx/collection/n0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/n0;-><init>(I)V

    sput-object v0, Landroidx/collection/v0;->b:Landroidx/collection/n0;

    return-void

    nop

    :array_0
    .array-data 8
        -0x7f7f7f7f7f7f7f01L    # -2.937446524423077E-306
        -0x1
    .end array-data
.end method

.method public static final a([JI)V
    .locals 7

    const-string v0, "metadata"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    const-wide v5, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v3, v5

    not-long v5, v3

    ushr-long/2addr v3, v0

    add-long/2addr v5, v3

    const-wide v3, -0x101010101010102L

    and-long/2addr v3, v5

    aput-wide v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->a0([J)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    aget-wide v2, p0, v0

    const-wide v4, 0xffffffffffffffL

    and-long/2addr v2, v4

    const-wide/high16 v4, -0x100000000000000L

    or-long/2addr v2, v4

    aput-wide v2, p0, v0

    aget-wide v0, p0, v1

    aput-wide v0, p0, p1

    return-void
.end method

.method public static final b([JII)I
    .locals 4

    const-string v0, "metadata"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p1, p2, :cond_1

    shr-int/lit8 v0, p1, 0x3

    aget-wide v0, p0, v0

    and-int/lit8 v2, p1, 0x7

    shl-int/lit8 v2, v2, 0x3

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final c(I)I
    .locals 1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    div-int/lit8 v0, p0, 0x8

    sub-int/2addr p0, v0

    return p0
.end method

.method public static final d()Landroidx/collection/n0;
    .locals 4

    new-instance v0, Landroidx/collection/n0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/n0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final e(I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public static final f(I)I
    .locals 1

    if-lez p0, :cond_0

    const/4 v0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    ushr-int p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final g(I)I
    .locals 2

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    add-int/lit8 v1, p0, -0x1

    div-int/2addr v1, v0

    add-int/2addr p0, v1

    return p0
.end method
