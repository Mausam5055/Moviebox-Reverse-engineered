.class public final Lo9/k;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/l;
.implements Lg9/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo9/k$a;
    }
.end annotation


# static fields
.field public static final y:Lg9/r;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private final c:Lcom/google/android/exoplayer2/util/d0;

.field private final d:Lcom/google/android/exoplayer2/util/d0;

.field private final e:Lcom/google/android/exoplayer2/util/d0;

.field private final f:Ljava/util/ArrayDeque;

.field private final g:Lo9/m;

.field private final h:Ljava/util/List;

.field private i:I

.field private j:I

.field private k:J

.field private l:I

.field private m:Lcom/google/android/exoplayer2/util/d0;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lg9/n;

.field private s:[Lo9/k$a;

.field private t:[[J

.field private u:I

.field private v:J

.field private w:I

.field private x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo9/j;

    invoke-direct {v0}, Lo9/j;-><init>()V

    sput-object v0, Lo9/k;->y:Lg9/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo9/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo9/k;->a:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, p0, Lo9/k;->i:I

    new-instance p1, Lo9/m;

    invoke-direct {p1}, Lo9/m;-><init>()V

    iput-object p1, p0, Lo9/k;->g:Lo9/m;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo9/k;->h:Ljava/util/List;

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    const/16 v2, 0x10

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object p1, p0, Lo9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    sget-object v2, Lcom/google/android/exoplayer2/util/x;->a:[B

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    iput-object p1, p0, Lo9/k;->b:Lcom/google/android/exoplayer2/util/d0;

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object p1, p0, Lo9/k;->c:Lcom/google/android/exoplayer2/util/d0;

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    iput-object p1, p0, Lo9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    const/4 p1, -0x1

    iput p1, p0, Lo9/k;->n:I

    sget-object p1, Lg9/n;->i1:Lg9/n;

    iput-object p1, p0, Lo9/k;->r:Lg9/n;

    new-array p1, v1, [Lo9/k$a;

    iput-object p1, p0, Lo9/k;->s:[Lo9/k$a;

    return-void
.end method

.method private static A(I)Z
    .locals 1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private B(Lo9/k$a;J)V
    .locals 3

    iget-object v0, p1, Lo9/k$a;->b:Lo9/r;

    invoke-virtual {v0, p2, p3}, Lo9/r;->a(J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p2, p3}, Lo9/r;->b(J)I

    move-result v1

    :cond_0
    iput v1, p1, Lo9/k$a;->e:I

    return-void
.end method

.method public static synthetic e(Lo9/o;)Lo9/o;
    .locals 0

    invoke-static {p0}, Lo9/k;->m(Lo9/o;)Lo9/o;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()[Lg9/l;
    .locals 1

    invoke-static {}, Lo9/k;->n()[Lg9/l;

    move-result-object v0

    return-object v0
.end method

.method private static g(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static h([Lo9/k$a;)[[J
    .locals 15

    array-length v0, p0

    new-array v0, v0, [[J

    array-length v1, p0

    new-array v1, v1, [I

    array-length v2, p0

    new-array v2, v2, [J

    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    aget-object v6, p0, v5

    iget-object v6, v6, Lo9/k$a;->b:Lo9/r;

    iget v6, v6, Lo9/r;->b:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    aget-object v6, p0, v5

    iget-object v6, v6, Lo9/k$a;->b:Lo9/r;

    iget-object v6, v6, Lo9/r;->f:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    move v7, v4

    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    move v11, v4

    :goto_2
    array-length v12, p0

    if-ge v11, v12, :cond_2

    aget-boolean v12, v3, v11

    if-nez v12, :cond_1

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_1

    move v10, v11

    move-wide v8, v12

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    aget v8, v1, v10

    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    aget-object v11, p0, v10

    iget-object v11, v11, Lo9/k$a;->b:Lo9/r;

    iget-object v12, v11, Lo9/r;->d:[I

    aget v12, v12, v8

    int-to-long v12, v12

    add-long/2addr v5, v12

    const/4 v12, 0x1

    add-int/2addr v8, v12

    aput v8, v1, v10

    array-length v9, v9

    if-ge v8, v9, :cond_3

    iget-object v9, v11, Lo9/r;->f:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    :cond_3
    aput-boolean v12, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo9/k;->i:I

    iput v0, p0, Lo9/k;->l:I

    return-void
.end method

.method private static k(Lo9/r;J)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lo9/r;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lo9/r;->b(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method private l(J)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v4, -0x1

    move v6, v4

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    :goto_0
    iget-object v3, v0, Lo9/k;->s:[Lo9/k$a;

    array-length v5, v3

    if-ge v7, v5, :cond_7

    aget-object v3, v3, v7

    iget v5, v3, Lo9/k$a;->e:I

    iget-object v3, v3, Lo9/k$a;->b:Lo9/r;

    iget v1, v3, Lo9/r;->b:I

    if-ne v5, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, v3, Lo9/r;->c:[J

    aget-wide v2, v1, v5

    iget-object v1, v0, Lo9/k;->t:[[J

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    aget-object v1, v1, v7

    aget-wide v16, v1, v5

    sub-long v2, v2, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v2, v18

    if-ltz v1, :cond_2

    const-wide/32 v18, 0x40000

    cmp-long v1, v2, v18

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    if-nez v13, :cond_4

    :cond_3
    if-ne v1, v13, :cond_5

    cmp-long v5, v2, v14

    if-gez v5, :cond_5

    :cond_4
    move v13, v1

    move-wide v14, v2

    move v6, v7

    move-wide/from16 v11, v16

    :cond_5
    cmp-long v2, v16, v8

    if-gez v2, :cond_6

    move v10, v1

    move v4, v7

    move-wide/from16 v8, v16

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v8, v1

    if-eqz v1, :cond_8

    if-eqz v10, :cond_8

    const-wide/32 v1, 0xa00000

    add-long/2addr v8, v1

    cmp-long v1, v11, v8

    if-gez v1, :cond_9

    :cond_8
    move v4, v6

    :cond_9
    return v4
.end method

.method private static synthetic m(Lo9/o;)Lo9/o;
    .locals 0

    return-object p0
.end method

.method private static synthetic n()[Lg9/l;
    .locals 3

    new-instance v0, Lo9/k;

    invoke-direct {v0}, Lo9/k;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lg9/l;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private static o(Lo9/r;JJ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lo9/k;->k(Lo9/r;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    :cond_0
    iget-object p0, p0, Lo9/r;->c:[J

    aget-wide p1, p0, p1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private p(Lg9/m;)V
    .locals 3

    iget-object v0, p0, Lo9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    iget-object v0, p0, Lo9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lg9/m;->peekFully([BII)V

    iget-object v0, p0, Lo9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    invoke-static {v0}, Lo9/b;->e(Lcom/google/android/exoplayer2/util/d0;)V

    iget-object v0, p0, Lo9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    invoke-interface {p1, v0}, Lg9/m;->skipFully(I)V

    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    return-void
.end method

.method private q(J)V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo9/a$a;

    iget-wide v2, v0, Lo9/a$a;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo9/a$a;

    iget v2, v0, Lo9/a;->a:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v0}, Lo9/k;->t(Lo9/a$a;)V

    iget-object v0, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput v1, p0, Lo9/k;->i:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo9/a$a;

    invoke-virtual {v1, v0}, Lo9/a$a;->d(Lo9/a$a;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lo9/k;->i:I

    if-eq p1, v1, :cond_3

    invoke-direct {p0}, Lo9/k;->i()V

    :cond_3
    return-void
.end method

.method private r()V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lo9/k;->w:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lo9/k;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo9/k;->r:Lg9/n;

    const/4 v2, 0x4

    invoke-interface {v1, v0, v2}, Lg9/n;->track(II)Lg9/e0;

    move-result-object v1

    iget-object v2, p0, Lo9/k;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, p0, Lo9/k;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v3, v4, v0

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object v0, v2

    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/o1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    invoke-interface {v1, v0}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    iget-object v0, p0, Lo9/k;->r:Lg9/n;

    invoke-interface {v0}, Lg9/n;->endTracks()V

    iget-object v0, p0, Lo9/k;->r:Lg9/n;

    new-instance v1, Lg9/b0$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lg9/b0$b;-><init>(J)V

    invoke-interface {v0, v1}, Lg9/n;->d(Lg9/b0;)V

    :cond_1
    return-void
.end method

.method private static s(Lcom/google/android/exoplayer2/util/d0;)I
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v0

    invoke-static {v0}, Lo9/k;->g(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v0

    invoke-static {v0}, Lo9/k;->g(I)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private t(Lo9/a$a;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lo9/k;->w:I

    const/4 v12, 0x1

    if-ne v2, v12, :cond_0

    move v7, v12

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    new-instance v13, Lg9/x;

    invoke-direct {v13}, Lg9/x;-><init>()V

    const v2, 0x75647461

    invoke-virtual {v1, v2}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lo9/b;->B(Lo9/a$b;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v3, :cond_1

    invoke-virtual {v13, v3}, Lg9/x;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_1
    move-object v15, v2

    move-object v8, v3

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_1
    const v2, 0x6d657461

    invoke-virtual {v1, v2}, Lo9/a$a;->f(I)Lo9/a$a;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lo9/b;->n(Lo9/a$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iget v2, v0, Lo9/k;->a:I

    and-int/2addr v2, v12

    if-eqz v2, :cond_4

    move/from16 v16, v12

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    new-instance v17, Lo9/i;

    invoke-direct/range {v17 .. v17}, Lo9/i;-><init>()V

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v14, v6

    move/from16 v6, v16

    move-object/from16 v18, v8

    move-object/from16 v8, v17

    invoke-static/range {v1 .. v8}, Lo9/b;->A(Lo9/a$a;Lg9/x;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v11, v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_4
    if-ge v6, v2, :cond_c

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lo9/r;

    iget v3, v8, Lo9/r;->b:I

    if-nez v3, :cond_5

    move-object/from16 v21, v1

    move/from16 v22, v2

    move-object v3, v10

    move-object/from16 v2, v18

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v9, 0x2

    goto/16 :goto_b

    :cond_5
    iget-object v3, v8, Lo9/r;->a:Lo9/o;

    move-object/from16 v19, v10

    iget-wide v9, v3, Lo9/o;->e:J

    cmp-long v20, v9, v4

    if-eqz v20, :cond_6

    goto :goto_5

    :cond_6
    iget-wide v9, v8, Lo9/r;->h:J

    :goto_5
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    new-instance v4, Lo9/k$a;

    iget-object v5, v0, Lo9/k;->r:Lg9/n;

    move-object/from16 v21, v1

    iget v1, v3, Lo9/o;->b:I

    invoke-interface {v5, v6, v1}, Lg9/n;->track(II)Lg9/e0;

    move-result-object v1

    invoke-direct {v4, v3, v8, v1}, Lo9/k$a;-><init>(Lo9/o;Lo9/r;Lg9/e0;)V

    iget-object v1, v3, Lo9/o;->f:Lcom/google/android/exoplayer2/o1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    const-string v5, "audio/true-hd"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v8, Lo9/r;->e:I

    mul-int/lit8 v1, v1, 0x10

    goto :goto_6

    :cond_7
    iget v1, v8, Lo9/r;->e:I

    add-int/lit8 v1, v1, 0x1e

    :goto_6
    iget-object v5, v3, Lo9/o;->f:Lcom/google/android/exoplayer2/o1;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/o1$b;->W(I)Lcom/google/android/exoplayer2/o1$b;

    iget v1, v3, Lo9/o;->b:I

    move/from16 v22, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-lez v1, :cond_8

    iget v1, v8, Lo9/r;->b:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    int-to-float v1, v1

    long-to-float v2, v9

    const v8, 0x49742400    # 1000000.0f

    div-float/2addr v2, v8

    div-float/2addr v1, v2

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/o1$b;->P(F)Lcom/google/android/exoplayer2/o1$b;

    :cond_8
    iget v1, v3, Lo9/o;->b:I

    invoke-static {v1, v13, v5}, Lo9/h;->k(ILg9/x;Lcom/google/android/exoplayer2/o1$b;)V

    iget v1, v3, Lo9/o;->b:I

    iget-object v2, v0, Lo9/k;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_7
    const/4 v9, 0x2

    goto :goto_8

    :cond_9
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v8, v0, Lo9/k;->h:Ljava/util/List;

    invoke-direct {v2, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_7

    :goto_8
    new-array v10, v9, [Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v8, 0x0

    aput-object v15, v10, v8

    const/16 v16, 0x1

    aput-object v2, v10, v16

    move-object/from16 v2, v18

    invoke-static {v1, v2, v14, v5, v10}, Lo9/h;->l(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/o1$b;[Lcom/google/android/exoplayer2/metadata/Metadata;)V

    iget-object v1, v4, Lo9/k$a;->c:Lg9/e0;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v5

    invoke-interface {v1, v5}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    iget v1, v3, Lo9/o;->b:I

    if-ne v1, v9, :cond_b

    const/4 v1, -0x1

    if-ne v7, v1, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v7

    :cond_a
    :goto_9
    move-object/from16 v3, v19

    goto :goto_a

    :cond_b
    const/4 v1, -0x1

    goto :goto_9

    :goto_a
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :goto_b
    add-int/2addr v6, v4

    move-object/from16 v18, v2

    move-object v10, v3

    move-object/from16 v1, v21

    move/from16 v2, v22

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_4

    :cond_c
    move-object v3, v10

    iput v7, v0, Lo9/k;->u:I

    iput-wide v11, v0, Lo9/k;->v:J

    const/4 v1, 0x0

    new-array v1, v1, [Lo9/k$a;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lo9/k$a;

    iput-object v1, v0, Lo9/k;->s:[Lo9/k$a;

    invoke-static {v1}, Lo9/k;->h([Lo9/k$a;)[[J

    move-result-object v1

    iput-object v1, v0, Lo9/k;->t:[[J

    iget-object v1, v0, Lo9/k;->r:Lg9/n;

    invoke-interface {v1}, Lg9/n;->endTracks()V

    iget-object v1, v0, Lo9/k;->r:Lg9/n;

    invoke-interface {v1, v0}, Lg9/n;->d(Lg9/b0;)V

    return-void
.end method

.method private u(J)V
    .locals 13

    iget v0, p0, Lo9/k;->j:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    iget v1, p0, Lo9/k;->l:I

    int-to-long v2, v1

    add-long v9, p1, v2

    iget-wide v2, p0, Lo9/k;->k:J

    int-to-long v4, v1

    sub-long v11, v2, v4

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v0

    move-wide v5, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v0, p0, Lo9/k;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    :cond_0
    return-void
.end method

.method private v(Lg9/m;)Z
    .locals 8

    iget v0, p0, Lo9/k;->l:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v2, v1}, Lg9/m;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo9/k;->r()V

    return v3

    :cond_0
    iput v2, p0, Lo9/k;->l:I

    iget-object v0, p0, Lo9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v0, p0, Lo9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v4

    iput-wide v4, p0, Lo9/k;->k:J

    iget-object v0, p0, Lo9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v0

    iput v0, p0, Lo9/k;->j:I

    :cond_1
    iget-wide v4, p0, Lo9/k;->k:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lo9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v2}, Lg9/m;->readFully([BII)V

    iget v0, p0, Lo9/k;->l:I

    add-int/2addr v0, v2

    iput v0, p0, Lo9/k;->l:I

    iget-object v0, p0, Lo9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->I()J

    move-result-wide v4

    iput-wide v4, p0, Lo9/k;->k:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    invoke-interface {p1}, Lg9/m;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo9/a$a;

    if-eqz v0, :cond_3

    iget-wide v4, v0, Lo9/a$a;->b:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lo9/k;->l:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lo9/k;->k:J

    :cond_4
    :goto_0
    iget-wide v4, p0, Lo9/k;->k:J

    iget v0, p0, Lo9/k;->l:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_b

    iget v0, p0, Lo9/k;->j:I

    invoke-static {v0}, Lo9/k;->z(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lo9/k;->k:J

    add-long/2addr v2, v4

    iget v0, p0, Lo9/k;->l:I

    int-to-long v6, v0

    sub-long/2addr v2, v6

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    iget v0, p0, Lo9/k;->j:I

    const v4, 0x6d657461

    if-ne v0, v4, :cond_5

    invoke-direct {p0, p1}, Lo9/k;->p(Lg9/m;)V

    :cond_5
    iget-object p1, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    new-instance v0, Lo9/a$a;

    iget v4, p0, Lo9/k;->j:I

    invoke-direct {v0, v4, v2, v3}, Lo9/a$a;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, p0, Lo9/k;->k:J

    iget p1, p0, Lo9/k;->l:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_6

    invoke-direct {p0, v2, v3}, Lo9/k;->q(J)V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lo9/k;->i()V

    goto :goto_3

    :cond_7
    iget v0, p0, Lo9/k;->j:I

    invoke-static {v0}, Lo9/k;->A(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget p1, p0, Lo9/k;->l:I

    if-ne p1, v2, :cond_8

    move p1, v1

    goto :goto_1

    :cond_8
    move p1, v3

    :goto_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-wide v4, p0, Lo9/k;->k:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_9

    move p1, v1

    goto :goto_2

    :cond_9
    move p1, v3

    :goto_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    iget-wide v4, p0, Lo9/k;->k:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iget-object v0, p0, Lo9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v4

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lo9/k;->m:Lcom/google/android/exoplayer2/util/d0;

    iput v1, p0, Lo9/k;->i:I

    goto :goto_3

    :cond_a
    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v2

    iget p1, p0, Lo9/k;->l:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lo9/k;->u(J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lo9/k;->m:Lcom/google/android/exoplayer2/util/d0;

    iput v1, p0, Lo9/k;->i:I

    :goto_3
    return v1

    :cond_b
    const-string p1, "Atom size less than header length (unsupported)."

    invoke-static {p1}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private w(Lg9/m;Lg9/a0;)Z
    .locals 9

    iget-wide v0, p0, Lo9/k;->k:J

    iget v2, p0, Lo9/k;->l:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v4, p0, Lo9/k;->m:Lcom/google/android/exoplayer2/util/d0;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object p2

    iget v7, p0, Lo9/k;->l:I

    long-to-int v0, v0

    invoke-interface {p1, p2, v7, v0}, Lg9/m;->readFully([BII)V

    iget p1, p0, Lo9/k;->j:I

    const p2, 0x66747970

    if-ne p1, p2, :cond_0

    invoke-static {v4}, Lo9/k;->s(Lcom/google/android/exoplayer2/util/d0;)I

    move-result p1

    iput p1, p0, Lo9/k;->w:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo9/a$a;

    new-instance p2, Lo9/a$b;

    iget v0, p0, Lo9/k;->j:I

    invoke-direct {p2, v0, v4}, Lo9/a$b;-><init>(ILcom/google/android/exoplayer2/util/d0;)V

    invoke-virtual {p1, p2}, Lo9/a$a;->e(Lo9/a$b;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lg9/m;->skipFully(I)V

    :cond_2
    :goto_0
    move p1, v6

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lg9/a0;->a:J

    move p1, v5

    :goto_1
    invoke-direct {p0, v2, v3}, Lo9/k;->q(J)V

    if-eqz p1, :cond_4

    iget p1, p0, Lo9/k;->i:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    return v5
.end method

.method private x(Lg9/m;Lg9/a0;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lg9/m;->getPosition()J

    move-result-wide v2

    iget v4, v0, Lo9/k;->n:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {v0, v2, v3}, Lo9/k;->l(J)I

    move-result v4

    iput v4, v0, Lo9/k;->n:I

    if-ne v4, v5, :cond_0

    return v5

    :cond_0
    iget-object v4, v0, Lo9/k;->s:[Lo9/k$a;

    iget v6, v0, Lo9/k;->n:I

    aget-object v4, v4, v6

    iget-object v14, v4, Lo9/k$a;->c:Lg9/e0;

    iget v15, v4, Lo9/k$a;->e:I

    iget-object v6, v4, Lo9/k$a;->b:Lo9/r;

    iget-object v7, v6, Lo9/r;->c:[J

    aget-wide v8, v7, v15

    iget-object v6, v6, Lo9/r;->d:[I

    aget v6, v6, v15

    iget-object v13, v4, Lo9/k$a;->d:Lg9/f0;

    sub-long v2, v8, v2

    iget v7, v0, Lo9/k;->o:I

    int-to-long v10, v7

    add-long/2addr v2, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    const/4 v12, 0x1

    if-ltz v7, :cond_c

    const-wide/32 v10, 0x40000

    cmp-long v7, v2, v10

    if-ltz v7, :cond_1

    move-object/from16 v1, p2

    move/from16 v17, v12

    goto/16 :goto_4

    :cond_1
    iget-object v7, v4, Lo9/k$a;->a:Lo9/o;

    iget v7, v7, Lo9/o;->g:I

    if-ne v7, v12, :cond_2

    const-wide/16 v7, 0x8

    add-long/2addr v2, v7

    add-int/lit8 v6, v6, -0x8

    :cond_2
    long-to-int v2, v2

    invoke-interface {v1, v2}, Lg9/m;->skipFully(I)V

    iget-object v2, v4, Lo9/k$a;->a:Lo9/o;

    iget v3, v2, Lo9/o;->j:I

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_6

    iget-object v2, v0, Lo9/k;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v2

    aput-byte v10, v2, v10

    aput-byte v10, v2, v12

    const/4 v3, 0x2

    aput-byte v10, v2, v3

    iget-object v3, v4, Lo9/k$a;->a:Lo9/o;

    iget v3, v3, Lo9/o;->j:I

    rsub-int/lit8 v7, v3, 0x4

    :goto_0
    iget v8, v0, Lo9/k;->p:I

    if-ge v8, v6, :cond_5

    iget v8, v0, Lo9/k;->q:I

    if-nez v8, :cond_4

    invoke-interface {v1, v2, v7, v3}, Lg9/m;->readFully([BII)V

    iget v8, v0, Lo9/k;->o:I

    add-int/2addr v8, v3

    iput v8, v0, Lo9/k;->o:I

    iget-object v8, v0, Lo9/k;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v8, v0, Lo9/k;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v8

    if-ltz v8, :cond_3

    iput v8, v0, Lo9/k;->q:I

    iget-object v8, v0, Lo9/k;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v8, v0, Lo9/k;->b:Lcom/google/android/exoplayer2/util/d0;

    const/4 v9, 0x4

    invoke-interface {v14, v8, v9}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iget v8, v0, Lo9/k;->p:I

    add-int/2addr v8, v9

    iput v8, v0, Lo9/k;->p:I

    add-int/2addr v6, v7

    goto :goto_0

    :cond_3
    const-string v1, "Invalid NAL length"

    invoke-static {v1, v11}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    :cond_4
    invoke-interface {v14, v1, v8, v10}, Lg9/e0;->b(Lcom/google/android/exoplayer2/upstream/g;IZ)I

    move-result v8

    iget v9, v0, Lo9/k;->o:I

    add-int/2addr v9, v8

    iput v9, v0, Lo9/k;->o:I

    iget v9, v0, Lo9/k;->p:I

    add-int/2addr v9, v8

    iput v9, v0, Lo9/k;->p:I

    iget v9, v0, Lo9/k;->q:I

    sub-int/2addr v9, v8

    iput v9, v0, Lo9/k;->q:I

    goto :goto_0

    :cond_5
    move v1, v6

    goto :goto_2

    :cond_6
    iget-object v2, v2, Lo9/o;->f:Lcom/google/android/exoplayer2/o1;

    iget-object v2, v2, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v0, Lo9/k;->p:I

    if-nez v2, :cond_7

    iget-object v2, v0, Lo9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/audio/c;->a(ILcom/google/android/exoplayer2/util/d0;)V

    iget-object v2, v0, Lo9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    const/4 v3, 0x7

    invoke-interface {v14, v2, v3}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iget v2, v0, Lo9/k;->p:I

    add-int/2addr v2, v3

    iput v2, v0, Lo9/k;->p:I

    :cond_7
    add-int/lit8 v6, v6, 0x7

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_9

    invoke-virtual {v13, v1}, Lg9/f0;->d(Lg9/m;)V

    :cond_9
    :goto_1
    iget v2, v0, Lo9/k;->p:I

    if-ge v2, v6, :cond_5

    sub-int v2, v6, v2

    invoke-interface {v14, v1, v2, v10}, Lg9/e0;->b(Lcom/google/android/exoplayer2/upstream/g;IZ)I

    move-result v2

    iget v3, v0, Lo9/k;->o:I

    add-int/2addr v3, v2

    iput v3, v0, Lo9/k;->o:I

    iget v3, v0, Lo9/k;->p:I

    add-int/2addr v3, v2

    iput v3, v0, Lo9/k;->p:I

    iget v3, v0, Lo9/k;->q:I

    sub-int/2addr v3, v2

    iput v3, v0, Lo9/k;->q:I

    goto :goto_1

    :goto_2
    iget-object v2, v4, Lo9/k$a;->b:Lo9/r;

    iget-object v3, v2, Lo9/r;->f:[J

    aget-wide v8, v3, v15

    iget-object v2, v2, Lo9/r;->g:[I

    aget v2, v2, v15

    if-eqz v13, :cond_a

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v6, v13

    move-object v7, v14

    move v10, v2

    move-object v2, v11

    move v11, v1

    move/from16 v17, v12

    move v12, v3

    move-object v1, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v6 .. v13}, Lg9/f0;->c(Lg9/e0;JIIILg9/e0$a;)V

    add-int/lit8 v15, v15, 0x1

    iget-object v3, v4, Lo9/k$a;->b:Lo9/r;

    iget v3, v3, Lo9/r;->b:I

    if-ne v15, v3, :cond_b

    invoke-virtual {v1, v14, v2}, Lg9/f0;->a(Lg9/e0;Lg9/e0$a;)V

    goto :goto_3

    :cond_a
    move/from16 v17, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-wide v7, v8

    move v9, v2

    move v10, v1

    invoke-interface/range {v6 .. v12}, Lg9/e0;->d(JIIILg9/e0$a;)V

    :cond_b
    :goto_3
    iget v1, v4, Lo9/k$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Lo9/k$a;->e:I

    iput v5, v0, Lo9/k;->n:I

    const/4 v1, 0x0

    iput v1, v0, Lo9/k;->o:I

    iput v1, v0, Lo9/k;->p:I

    iput v1, v0, Lo9/k;->q:I

    return v1

    :cond_c
    move/from16 v17, v12

    move-object/from16 v1, p2

    :goto_4
    iput-wide v8, v1, Lg9/a0;->a:J

    return v17
.end method

.method private y(Lg9/m;Lg9/a0;)I
    .locals 4

    iget-object v0, p0, Lo9/k;->g:Lo9/m;

    iget-object v1, p0, Lo9/k;->h:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lo9/m;->c(Lg9/m;Lg9/a0;Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p2, Lg9/a0;->a:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lo9/k;->i()V

    :cond_0
    return p1
.end method

.method private static z(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public b(Lg9/n;)V
    .locals 0

    iput-object p1, p0, Lo9/k;->r:Lg9/n;

    return-void
.end method

.method public c(Lg9/m;Lg9/a0;)I
    .locals 2

    :cond_0
    iget v0, p0, Lo9/k;->i:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lo9/k;->y(Lg9/m;Lg9/a0;)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    invoke-direct {p0, p1, p2}, Lo9/k;->x(Lg9/m;Lg9/a0;)I

    move-result p1

    return p1

    :cond_3
    invoke-direct {p0, p1, p2}, Lo9/k;->w(Lg9/m;Lg9/a0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_4
    invoke-direct {p0, p1}, Lo9/k;->v(Lg9/m;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public d(Lg9/m;)Z
    .locals 1

    iget v0, p0, Lo9/k;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lo9/n;->d(Lg9/m;Z)Z

    move-result p1

    return p1
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lo9/k;->v:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lg9/b0$a;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lo9/k;->j(JI)Lg9/b0$a;

    move-result-object p1

    return-object p1
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(JI)Lg9/b0$a;
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    iget-object v4, v0, Lo9/k;->s:[Lo9/k$a;

    array-length v5, v4

    if-nez v5, :cond_0

    new-instance v1, Lg9/b0$a;

    sget-object v2, Lg9/c0;->c:Lg9/c0;

    invoke-direct {v1, v2}, Lg9/b0$a;-><init>(Lg9/c0;)V

    return-object v1

    :cond_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    iget v6, v0, Lo9/k;->u:I

    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v9, -0x1

    if-eq v6, v5, :cond_3

    aget-object v4, v4, v6

    iget-object v4, v4, Lo9/k$a;->b:Lo9/r;

    invoke-static {v4, v1, v2}, Lo9/k;->k(Lo9/r;J)I

    move-result v6

    if-ne v6, v5, :cond_2

    new-instance v1, Lg9/b0$a;

    sget-object v2, Lg9/c0;->c:Lg9/c0;

    invoke-direct {v1, v2}, Lg9/b0$a;-><init>(Lg9/c0;)V

    return-object v1

    :cond_2
    iget-object v11, v4, Lo9/r;->f:[J

    aget-wide v12, v11, v6

    iget-object v11, v4, Lo9/r;->c:[J

    aget-wide v14, v11, v6

    cmp-long v11, v12, v1

    if-gez v11, :cond_4

    iget v11, v4, Lo9/r;->b:I

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_4

    invoke-virtual {v4, v1, v2}, Lo9/r;->b(J)I

    move-result v1

    if-eq v1, v5, :cond_4

    if-eq v1, v6, :cond_4

    iget-object v2, v4, Lo9/r;->f:[J

    aget-wide v9, v2, v1

    iget-object v2, v4, Lo9/r;->c:[J

    aget-wide v1, v2, v1

    goto :goto_1

    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    move-wide v12, v1

    :cond_4
    move-wide v1, v9

    move-wide v9, v7

    :goto_1
    if-ne v3, v5, :cond_7

    const/4 v3, 0x0

    :goto_2
    iget-object v4, v0, Lo9/k;->s:[Lo9/k$a;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    iget v5, v0, Lo9/k;->u:I

    if-eq v3, v5, :cond_6

    aget-object v4, v4, v3

    iget-object v4, v4, Lo9/k$a;->b:Lo9/r;

    invoke-static {v4, v12, v13, v14, v15}, Lo9/k;->o(Lo9/r;JJ)J

    move-result-wide v5

    cmp-long v11, v9, v7

    if-eqz v11, :cond_5

    invoke-static {v4, v9, v10, v1, v2}, Lo9/k;->o(Lo9/r;JJ)J

    move-result-wide v1

    :cond_5
    move-wide v14, v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    new-instance v3, Lg9/c0;

    invoke-direct {v3, v12, v13, v14, v15}, Lg9/c0;-><init>(JJ)V

    cmp-long v4, v9, v7

    if-nez v4, :cond_8

    new-instance v1, Lg9/b0$a;

    invoke-direct {v1, v3}, Lg9/b0$a;-><init>(Lg9/c0;)V

    return-object v1

    :cond_8
    new-instance v4, Lg9/c0;

    invoke-direct {v4, v9, v10, v1, v2}, Lg9/c0;-><init>(JJ)V

    new-instance v1, Lg9/b0$a;

    invoke-direct {v1, v3, v4}, Lg9/b0$a;-><init>(Lg9/c0;Lg9/c0;)V

    return-object v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 3

    iget-object v0, p0, Lo9/k;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lo9/k;->l:I

    const/4 v1, -0x1

    iput v1, p0, Lo9/k;->n:I

    iput v0, p0, Lo9/k;->o:I

    iput v0, p0, Lo9/k;->p:I

    iput v0, p0, Lo9/k;->q:I

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_1

    iget p1, p0, Lo9/k;->i:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    invoke-direct {p0}, Lo9/k;->i()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lo9/k;->g:Lo9/m;

    invoke-virtual {p1}, Lo9/m;->g()V

    iget-object p1, p0, Lo9/k;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lo9/k;->s:[Lo9/k$a;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    invoke-direct {p0, v1, p3, p4}, Lo9/k;->B(Lo9/k$a;J)V

    iget-object v1, v1, Lo9/k$a;->d:Lg9/f0;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lg9/f0;->b()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
