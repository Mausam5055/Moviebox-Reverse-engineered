.class public final Le0/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Le0/b;->b:[J

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Le0/b;->d(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Le0/b;->a:I

    invoke-virtual {p0, v0, p1, p2}, Le0/b;->k(IJ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Le0/b;->a(J)Z

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Le0/b;->a:I

    return-void
.end method

.method public final d(J)Z
    .locals 6

    iget v0, p0, Le0/b;->a:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Le0/b;->b:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final e(I)J
    .locals 3

    iget-object v0, p0, Le0/b;->b:[J

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Landroidx/compose/ui/input/pointer/v;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Le0/b;->a:I

    return v0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Le0/b;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(J)Z
    .locals 5

    iget v0, p0, Le0/b;->a:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Le0/b;->e(I)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Le0/b;->j(I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final i(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Le0/b;->h(J)Z

    move-result p1

    return p1
.end method

.method public final j(I)Z
    .locals 6

    iget v0, p0, Le0/b;->a:I

    if-ge p1, v0, :cond_1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v2, p0, Le0/b;->b:[J

    add-int/lit8 v3, p1, 0x1

    aget-wide v4, v2, v3

    aput-wide v4, v2, p1

    move p1, v3

    goto :goto_0

    :cond_0
    iget p1, p0, Le0/b;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Le0/b;->a:I

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final k(IJ)V
    .locals 3

    iget-object v0, p0, Le0/b;->b:[J

    array-length v1, v0

    if-lt p1, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le0/b;->b:[J

    :cond_0
    iget-object v0, p0, Le0/b;->b:[J

    aput-wide p2, v0, p1

    iget p2, p0, Le0/b;->a:I

    if-lt p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le0/b;->a:I

    :cond_1
    return-void
.end method
