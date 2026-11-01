.class public abstract Lj2/c;
.super Ljava/lang/Object;

# interfaces
.implements Lj2/z;


# instance fields
.field protected final a:Landroidx/media3/common/f0;

.field protected final b:I

.field protected final c:[I

.field private final d:I

.field private final e:[Landroidx/media3/common/r;

.field private final f:[J

.field private g:I

.field private h:Z


# direct methods
.method public varargs constructor <init>(Landroidx/media3/common/f0;[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj2/c;-><init>(Landroidx/media3/common/f0;[II)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/f0;[II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput p3, p0, Lj2/c;->d:I

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/f0;

    iput-object p3, p0, Lj2/c;->a:Landroidx/media3/common/f0;

    array-length p3, p2

    iput p3, p0, Lj2/c;->b:I

    new-array p3, p3, [Landroidx/media3/common/r;

    iput-object p3, p0, Lj2/c;->e:[Landroidx/media3/common/r;

    move p3, v1

    :goto_1
    array-length v0, p2

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lj2/c;->e:[Landroidx/media3/common/r;

    aget v2, p2, p3

    invoke-virtual {p1, v2}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    move-result-object v2

    aput-object v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lj2/c;->e:[Landroidx/media3/common/r;

    new-instance p3, Lj2/b;

    invoke-direct {p3}, Lj2/b;-><init>()V

    invoke-static {p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Lj2/c;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lj2/c;->c:[I

    move p2, v1

    :goto_2
    iget p3, p0, Lj2/c;->b:I

    if-ge p2, p3, :cond_2

    iget-object p3, p0, Lj2/c;->c:[I

    iget-object v0, p0, Lj2/c;->e:[Landroidx/media3/common/r;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroidx/media3/common/f0;->b(Landroidx/media3/common/r;)I

    move-result v0

    aput v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    new-array p1, p3, [J

    iput-object p1, p0, Lj2/c;->f:[J

    iput-boolean v1, p0, Lj2/c;->h:Z

    return-void
.end method

.method public static synthetic i(Landroidx/media3/common/r;Landroidx/media3/common/r;)I
    .locals 0

    invoke-static {p0, p1}, Lj2/c;->j(Landroidx/media3/common/r;Landroidx/media3/common/r;)I

    move-result p0

    return p0
.end method

.method private static synthetic j(Landroidx/media3/common/r;Landroidx/media3/common/r;)I
    .locals 0

    iget p1, p1, Landroidx/media3/common/r;->j:I

    iget p0, p0, Landroidx/media3/common/r;->j:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-static {p0}, Lj2/y;->a(Lj2/z;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lj2/c;->h:Z

    return-void
.end method

.method public synthetic c()V
    .locals 0

    invoke-static {p0}, Lj2/y;->b(Lj2/z;)V

    return-void
.end method

.method public d(IJ)Z
    .locals 3

    iget-object v0, p0, Lj2/c;->f:[J

    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public disable()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lj2/c;

    iget-object v2, p0, Lj2/c;->a:Landroidx/media3/common/f0;

    iget-object v3, p1, Lj2/c;->a:Landroidx/media3/common/f0;

    invoke-virtual {v2, v3}, Landroidx/media3/common/f0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lj2/c;->c:[I

    iget-object p1, p1, Lj2/c;->c:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final f(Landroidx/media3/common/r;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lj2/c;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lj2/c;->e:[Landroidx/media3/common/r;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public g(IJ)Z
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lj2/c;->d(IJ)Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lj2/c;->b:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    if-nez v2, :cond_1

    if-eq v4, p1, :cond_0

    invoke-virtual {p0, v4, v0, v1}, Lj2/c;->d(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v6

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v3

    :cond_2
    iget-object v7, p0, Lj2/c;->f:[J

    aget-wide v8, v7, p1

    const-wide v4, 0x7fffffffffffffffL

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/a1;->c(JJJ)J

    move-result-wide p2

    invoke-static {v8, v9, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v7, p1

    return v6
.end method

.method public final getFormat(I)Landroidx/media3/common/r;
    .locals 1

    iget-object v0, p0, Lj2/c;->e:[Landroidx/media3/common/r;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 1

    iget-object v0, p0, Lj2/c;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public final getSelectedFormat()Landroidx/media3/common/r;
    .locals 2

    iget-object v0, p0, Lj2/c;->e:[Landroidx/media3/common/r;

    invoke-interface {p0}, Lj2/z;->getSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getSelectedIndexInTrackGroup()I
    .locals 2

    iget-object v0, p0, Lj2/c;->c:[I

    invoke-interface {p0}, Lj2/z;->getSelectedIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getTrackGroup()Landroidx/media3/common/f0;
    .locals 1

    iget-object v0, p0, Lj2/c;->a:Landroidx/media3/common/f0;

    return-object v0
.end method

.method public synthetic h(JLh2/e;Ljava/util/List;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj2/y;->c(Lj2/z;JLh2/e;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lj2/c;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/c;->a:Landroidx/media3/common/f0;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lj2/c;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lj2/c;->g:I

    :cond_0
    iget v0, p0, Lj2/c;->g:I

    return v0
.end method

.method public final indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lj2/c;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lj2/c;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Lj2/c;->c:[I

    array-length v0, v0

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    return-void
.end method
