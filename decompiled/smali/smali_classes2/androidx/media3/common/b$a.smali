.class public final Landroidx/media3/common/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String;

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/String;

.field static final t:Ljava/lang/String;

.field static final u:Ljava/lang/String;

.field static final v:Ljava/lang/String;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:[Landroid/net/Uri;

.field public final e:[Landroidx/media3/common/t;

.field public final f:[I

.field public final g:[J

.field public final h:[Ljava/lang/String;

.field public final i:J

.field public final j:Z

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/b$a;->l:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/b$a;->m:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/b$a;->n:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/b$a;->o:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/b$a;->p:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/b$a;->q:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/b$a;->r:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/b$a;->s:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/b$a;->t:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/b$a;->u:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/b$a;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 14

    const/4 v0, 0x0

    new-array v6, v0, [I

    new-array v7, v0, [Landroidx/media3/common/t;

    new-array v8, v0, [J

    new-array v12, v0, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v13}, Landroidx/media3/common/b$a;-><init>(JII[I[Landroidx/media3/common/t;[JJZ[Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(JII[I[Landroidx/media3/common/t;[JJZ[Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p5

    array-length v1, p6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iput-wide p1, p0, Landroidx/media3/common/b$a;->a:J

    iput p3, p0, Landroidx/media3/common/b$a;->b:I

    iput p4, p0, Landroidx/media3/common/b$a;->c:I

    iput-object p5, p0, Landroidx/media3/common/b$a;->f:[I

    iput-object p6, p0, Landroidx/media3/common/b$a;->e:[Landroidx/media3/common/t;

    iput-object p7, p0, Landroidx/media3/common/b$a;->g:[J

    iput-wide p8, p0, Landroidx/media3/common/b$a;->i:J

    iput-boolean p10, p0, Landroidx/media3/common/b$a;->j:Z

    array-length p1, p6

    new-array p1, p1, [Landroid/net/Uri;

    iput-object p1, p0, Landroidx/media3/common/b$a;->d:[Landroid/net/Uri;

    :goto_1
    iget-object p1, p0, Landroidx/media3/common/b$a;->d:[Landroid/net/Uri;

    array-length p2, p1

    if-ge v2, p2, :cond_2

    aget-object p2, p6, v2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_2

    :cond_1
    iget-object p2, p2, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/t$h;

    iget-object p2, p2, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    :goto_2
    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput-object p11, p0, Landroidx/media3/common/b$a;->h:[Ljava/lang/String;

    iput-boolean p12, p0, Landroidx/media3/common/b$a;->k:Z

    return-void
.end method

.method private static a([JI)[J
    .locals 3

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p0, v0, p1, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-object p0
.end method

.method private static b([II)[I
    .locals 2

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method


# virtual methods
.method public c()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/media3/common/b$a;->d(I)I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/b$a;->f:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    iget-boolean v2, p0, Landroidx/media3/common/b$a;->j:Z

    if-nez v2, :cond_1

    aget v1, v1, p1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public e()Z
    .locals 4

    iget v0, p0, Landroidx/media3/common/b$a;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v3, p0, Landroidx/media3/common/b$a;->b:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/b$a;->f:[I

    aget v3, v3, v1

    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/common/b$a;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/b$a;

    iget-wide v2, p0, Landroidx/media3/common/b$a;->a:J

    iget-wide v4, p1, Landroidx/media3/common/b$a;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/media3/common/b$a;->b:I

    iget v3, p1, Landroidx/media3/common/b$a;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/b$a;->c:I

    iget v3, p1, Landroidx/media3/common/b$a;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/b$a;->e:[Landroidx/media3/common/t;

    iget-object v3, p1, Landroidx/media3/common/b$a;->e:[Landroidx/media3/common/t;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/b$a;->f:[I

    iget-object v3, p1, Landroidx/media3/common/b$a;->f:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/b$a;->g:[J

    iget-object v3, p1, Landroidx/media3/common/b$a;->g:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/b$a;->i:J

    iget-wide v4, p1, Landroidx/media3/common/b$a;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/b$a;->j:Z

    iget-boolean v3, p1, Landroidx/media3/common/b$a;->j:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/b$a;->h:[Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/b$a;->h:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/b$a;->k:Z

    iget-boolean p1, p1, Landroidx/media3/common/b$a;->k:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/common/b$a;->k:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/common/b$a;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/common/b$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Landroidx/media3/common/b$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/b$a;->c()I

    move-result v0

    iget v1, p0, Landroidx/media3/common/b$a;->b:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h(I)Landroidx/media3/common/b$a;
    .locals 14

    iget-object v0, p0, Landroidx/media3/common/b$a;->f:[I

    invoke-static {v0, p1}, Landroidx/media3/common/b$a;->b([II)[I

    move-result-object v6

    iget-object v0, p0, Landroidx/media3/common/b$a;->g:[J

    invoke-static {v0, p1}, Landroidx/media3/common/b$a;->a([JI)[J

    move-result-object v8

    iget-object v0, p0, Landroidx/media3/common/b$a;->e:[Landroidx/media3/common/t;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroidx/media3/common/t;

    iget-object v0, p0, Landroidx/media3/common/b$a;->h:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/b$a;

    iget-wide v2, p0, Landroidx/media3/common/b$a;->a:J

    iget v5, p0, Landroidx/media3/common/b$a;->c:I

    iget-wide v9, p0, Landroidx/media3/common/b$a;->i:J

    iget-boolean v11, p0, Landroidx/media3/common/b$a;->j:Z

    iget-boolean v13, p0, Landroidx/media3/common/b$a;->k:Z

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v13}, Landroidx/media3/common/b$a;-><init>(JII[I[Landroidx/media3/common/t;[JJZ[Ljava/lang/String;Z)V

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Landroidx/media3/common/b$a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/b$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/b$a;->a:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/b$a;->e:[Landroidx/media3/common/t;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/b$a;->f:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/b$a;->g:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/b$a;->i:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media3/common/b$a;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/b$a;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media3/common/b$a;->k:Z

    add-int/2addr v0, v1

    return v0
.end method
