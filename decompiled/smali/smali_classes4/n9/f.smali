.class public final Ln9/f;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/l;


# static fields
.field public static final u:Lg9/r;

.field private static final v:Lcom/google/android/exoplayer2/metadata/id3/b$a;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Lcom/google/android/exoplayer2/util/d0;

.field private final d:Lcom/google/android/exoplayer2/audio/b0$a;

.field private final e:Lg9/x;

.field private final f:Lg9/y;

.field private final g:Lg9/e0;

.field private h:Lg9/n;

.field private i:Lg9/e0;

.field private j:Lg9/e0;

.field private k:I

.field private l:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private m:J

.field private n:J

.field private o:J

.field private p:I

.field private q:Ln9/g;

.field private r:Z

.field private s:Z

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln9/d;

    invoke-direct {v0}, Ln9/d;-><init>()V

    sput-object v0, Ln9/f;->u:Lg9/r;

    new-instance v0, Ln9/e;

    invoke-direct {v0}, Ln9/e;-><init>()V

    sput-object v0, Ln9/f;->v:Lcom/google/android/exoplayer2/metadata/id3/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ln9/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Ln9/f;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Ln9/f;->a:I

    iput-wide p2, p0, Ln9/f;->b:J

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object p1, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    new-instance p1, Lcom/google/android/exoplayer2/audio/b0$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/b0$a;-><init>()V

    iput-object p1, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    new-instance p1, Lg9/x;

    invoke-direct {p1}, Lg9/x;-><init>()V

    iput-object p1, p0, Ln9/f;->e:Lg9/x;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ln9/f;->m:J

    new-instance p1, Lg9/y;

    invoke-direct {p1}, Lg9/y;-><init>()V

    iput-object p1, p0, Ln9/f;->f:Lg9/y;

    new-instance p1, Lg9/k;

    invoke-direct {p1}, Lg9/k;-><init>()V

    iput-object p1, p0, Ln9/f;->g:Lg9/e0;

    iput-object p1, p0, Ln9/f;->j:Lg9/e0;

    return-void
.end method

.method public static synthetic a()[Lg9/l;
    .locals 1

    invoke-static {}, Ln9/f;->n()[Lg9/l;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(IIIII)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ln9/f;->o(IIIII)Z

    move-result p0

    return p0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Ln9/f;->i:Lg9/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ln9/f;->h:Lg9/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private g(Lg9/m;)Ln9/g;
    .locals 11

    invoke-direct {p0, p1}, Ln9/f;->q(Lg9/m;)Ln9/g;

    move-result-object v0

    iget-object v1, p0, Ln9/f;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ln9/f;->p(Lcom/google/android/exoplayer2/metadata/Metadata;J)Ln9/c;

    move-result-object v1

    iget-boolean v2, p0, Ln9/f;->r:Z

    if-eqz v2, :cond_0

    new-instance p1, Ln9/g$a;

    invoke-direct {p1}, Ln9/g$a;-><init>()V

    return-object p1

    :cond_0
    iget v2, p0, Ln9/f;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lg9/b0;->getDurationUs()J

    move-result-wide v2

    invoke-interface {v1}, Ln9/g;->a()J

    move-result-wide v0

    :goto_0
    move-wide v9, v0

    move-wide v5, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lg9/b0;->getDurationUs()J

    move-result-wide v2

    invoke-interface {v0}, Ln9/g;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ln9/f;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v0}, Ln9/f;->k(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v2

    const-wide/16 v0, -0x1

    goto :goto_0

    :goto_1
    new-instance v0, Ln9/b;

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v7

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Ln9/b;-><init>(JJJ)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lg9/b0;->isSeekable()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Ln9/f;->a:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    :cond_6
    iget v0, p0, Ln9/f;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    invoke-direct {p0, p1, v1}, Ln9/f;->j(Lg9/m;Z)Ln9/g;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method private h(J)J
    .locals 4

    iget-wide v0, p0, Ln9/f;->m:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    iget-object v2, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/b0$a;->d:I

    int-to-long v2, v2

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private j(Lg9/m;Z)Ln9/g;
    .locals 9

    iget-object v0, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lg9/m;->peekFully([BII)V

    iget-object v0, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v0, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget-object v1, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/b0$a;->a(I)Z

    new-instance v0, Ln9/a;

    invoke-interface {p1}, Lg9/m;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    move-object v2, v0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Ln9/a;-><init>(JJLcom/google/android/exoplayer2/audio/b0$a;Z)V

    return-object v0
.end method

.method private static k(Lcom/google/android/exoplayer2/metadata/Metadata;)J
    .locals 5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    const-string v4, "TLEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private static l(Lcom/google/android/exoplayer2/util/d0;I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->f()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result p1

    const v0, 0x58696e67

    if-eq p1, v0, :cond_0

    const v0, 0x496e666f

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->f()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result p0

    const p1, 0x56425249

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static m(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic n()[Lg9/l;
    .locals 3

    new-instance v0, Ln9/f;

    invoke-direct {v0}, Ln9/f;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lg9/l;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private static synthetic o(IIIII)Z
    .locals 3

    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_0

    if-ne p3, v2, :cond_0

    if-eq p4, v2, :cond_1

    if-eq p0, v1, :cond_1

    :cond_0
    if-ne p1, v2, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static p(Lcom/google/android/exoplayer2/metadata/Metadata;J)Ln9/c;
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    invoke-static {p0}, Ln9/f;->k(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v0

    invoke-static {p1, p2, v2, v0, v1}, Ln9/c;->b(JLcom/google/android/exoplayer2/metadata/id3/MlltFrame;J)Ln9/c;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private q(Lg9/m;)Ln9/g;
    .locals 10

    new-instance v5, Lcom/google/android/exoplayer2/util/d0;

    iget-object v0, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    iget-object v1, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Lg9/m;->peekFully([BII)V

    iget-object v0, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v1, v0, Lcom/google/android/exoplayer2/audio/b0$a;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x15

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/google/android/exoplayer2/audio/b0$a;->e:I

    if-eq v0, v2, :cond_0

    const/16 v3, 0x24

    :cond_0
    :goto_0
    move v7, v3

    goto :goto_1

    :cond_1
    iget v0, v0, Lcom/google/android/exoplayer2/audio/b0$a;->e:I

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0xd

    goto :goto_0

    :goto_1
    invoke-static {v5, v7}, Ln9/f;->l(Lcom/google/android/exoplayer2/util/d0;I)I

    move-result v8

    const v0, 0x58696e67

    const v9, 0x496e666f

    if-eq v8, v0, :cond_5

    if-ne v8, v9, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x56425249

    if-ne v8, v0, :cond_4

    invoke-interface {p1}, Lg9/m;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    invoke-static/range {v0 .. v5}, Ln9/h;->b(JJLcom/google/android/exoplayer2/audio/b0$a;Lcom/google/android/exoplayer2/util/d0;)Ln9/h;

    move-result-object v0

    iget-object v1, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    invoke-interface {p1, v1}, Lg9/m;->skipFully(I)V

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-interface {p1}, Lg9/m;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    invoke-static/range {v0 .. v5}, Ln9/i;->b(JJLcom/google/android/exoplayer2/audio/b0$a;Lcom/google/android/exoplayer2/util/d0;)Ln9/i;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Ln9/f;->e:Lg9/x;

    invoke-virtual {v1}, Lg9/x;->a()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    add-int/lit16 v7, v7, 0x8d

    invoke-interface {p1, v7}, Lg9/m;->advancePeekPosition(I)V

    iget-object v1, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Lg9/m;->peekFully([BII)V

    iget-object v1, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v1, p0, Ln9/f;->e:Lg9/x;

    iget-object v2, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->G()I

    move-result v2

    invoke-virtual {v1, v2}, Lg9/x;->d(I)Z

    :cond_6
    iget-object v1, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    invoke-interface {p1, v1}, Lg9/m;->skipFully(I)V

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lg9/b0;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_7

    if-ne v8, v9, :cond_7

    invoke-direct {p0, p1, v6}, Ln9/f;->j(Lg9/m;Z)Ln9/g;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_3
    return-object v0
.end method

.method private r(Lg9/m;)Z
    .locals 8

    iget-object v0, p0, Ln9/f;->q:Ln9/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ln9/g;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lg9/m;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, Lg9/m;->peekFully([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    return v1
.end method

.method private s(Lg9/m;)I
    .locals 5

    iget v0, p0, Ln9/f;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Ln9/f;->u(Lg9/m;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    return p1

    :cond_0
    :goto_0
    iget-object v0, p0, Ln9/f;->q:Ln9/g;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Ln9/f;->g(Lg9/m;)Ln9/g;

    move-result-object v0

    iput-object v0, p0, Ln9/f;->q:Ln9/g;

    iget-object v1, p0, Ln9/f;->h:Lg9/n;

    invoke-interface {v1, v0}, Lg9/n;->d(Lg9/b0;)V

    iget-object v0, p0, Ln9/f;->j:Lg9/e0;

    new-instance v1, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    iget-object v2, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/b0$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->W(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    iget-object v2, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/b0$a;->e:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->H(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    iget-object v2, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/b0$a;->d:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->f0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    iget-object v2, p0, Ln9/f;->e:Lg9/x;

    iget v2, v2, Lg9/x;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->N(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    iget-object v2, p0, Ln9/f;->e:Lg9/x;

    iget v2, v2, Lg9/x;->b:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->O(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    iget v2, p0, Ln9/f;->a:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Ln9/f;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v1

    invoke-interface {v0, v1}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Ln9/f;->o:J

    goto :goto_2

    :cond_2
    iget-wide v0, p0, Ln9/f;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Ln9/f;->o:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-interface {p1, v0}, Lg9/m;->skipFully(I)V

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Ln9/f;->t(Lg9/m;)I

    move-result p1

    return p1
.end method

.method private t(Lg9/m;)I
    .locals 11

    iget v0, p0, Ln9/f;->p:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    invoke-direct {p0, p1}, Ln9/f;->r(Lg9/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v0, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v0

    iget v4, p0, Ln9/f;->k:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Ln9/f;->m(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b0;->j(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/audio/b0$a;->a(I)Z

    iget-wide v4, p0, Ln9/f;->m:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Ln9/f;->q:Ln9/g;

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Ln9/g;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Ln9/f;->m:J

    iget-wide v4, p0, Ln9/f;->b:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln9/f;->q:Ln9/g;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Ln9/g;->getTimeUs(J)J

    move-result-wide v4

    iget-wide v6, p0, Ln9/f;->m:J

    iget-wide v8, p0, Ln9/f;->b:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Ln9/f;->m:J

    :cond_2
    iget-object v0, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v4, v0, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    iput v4, p0, Ln9/f;->p:I

    iget-object v4, p0, Ln9/f;->q:Ln9/g;

    instance-of v5, v4, Ln9/b;

    if-eqz v5, :cond_4

    check-cast v4, Ln9/b;

    iget-wide v5, p0, Ln9/f;->n:J

    iget v0, v0, Lcom/google/android/exoplayer2/audio/b0$a;->g:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    invoke-direct {p0, v5, v6}, Ln9/f;->h(J)J

    move-result-wide v5

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v7

    iget-object v0, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Ln9/b;->c(JJ)V

    iget-boolean v0, p0, Ln9/f;->s:Z

    if-eqz v0, :cond_4

    iget-wide v5, p0, Ln9/f;->t:J

    invoke-virtual {v4, v5, v6}, Ln9/b;->b(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Ln9/f;->s:Z

    iget-object v0, p0, Ln9/f;->i:Lg9/e0;

    iput-object v0, p0, Ln9/f;->j:Lg9/e0;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lg9/m;->skipFully(I)V

    iput v3, p0, Ln9/f;->k:I

    return v3

    :cond_4
    :goto_1
    iget-object v0, p0, Ln9/f;->j:Lg9/e0;

    iget v4, p0, Ln9/f;->p:I

    invoke-interface {v0, p1, v4, v1}, Lg9/e0;->b(Lcom/google/android/exoplayer2/upstream/g;IZ)I

    move-result p1

    if-ne p1, v2, :cond_5

    return v2

    :cond_5
    iget v0, p0, Ln9/f;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Ln9/f;->p:I

    if-lez v0, :cond_6

    return v3

    :cond_6
    iget-object v4, p0, Ln9/f;->j:Lg9/e0;

    iget-wide v0, p0, Ln9/f;->n:J

    invoke-direct {p0, v0, v1}, Ln9/f;->h(J)J

    move-result-wide v5

    iget-object p1, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget v8, p1, Lcom/google/android/exoplayer2/audio/b0$a;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lg9/e0;->d(JIIILg9/e0$a;)V

    iget-wide v0, p0, Ln9/f;->n:J

    iget-object p1, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    iget p1, p1, Lcom/google/android/exoplayer2/audio/b0$a;->g:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Ln9/f;->n:J

    iput v3, p0, Ln9/f;->p:I

    return v3
.end method

.method private u(Lg9/m;Z)Z
    .locals 11

    if-eqz p2, :cond_0

    const v0, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    :goto_0
    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget v1, p0, Ln9/f;->a:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    sget-object v1, Ln9/f;->v:Lcom/google/android/exoplayer2/metadata/id3/b$a;

    :goto_1
    iget-object v4, p0, Ln9/f;->f:Lg9/y;

    invoke-virtual {v4, p1, v1}, Lg9/y;->a(Lg9/m;Lcom/google/android/exoplayer2/metadata/id3/b$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    iput-object v1, p0, Ln9/f;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v1, :cond_2

    iget-object v4, p0, Ln9/f;->e:Lg9/x;

    invoke-virtual {v4, v1}, Lg9/x;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_2
    invoke-interface {p1}, Lg9/m;->getPeekPosition()J

    move-result-wide v4

    long-to-int v1, v4

    if-nez p2, :cond_3

    invoke-interface {p1, v1}, Lg9/m;->skipFully(I)V

    :cond_3
    move v4, v3

    :goto_2
    move v5, v4

    move v6, v5

    goto :goto_3

    :cond_4
    move v1, v3

    move v4, v1

    goto :goto_2

    :goto_3
    invoke-direct {p0, p1}, Ln9/f;->r(Lg9/m;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    if-lez v5, :cond_5

    goto :goto_5

    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_6
    iget-object v7, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v7, p0, Ln9/f;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v7

    if-eqz v4, :cond_7

    int-to-long v9, v4

    invoke-static {v7, v9, v10}, Ln9/f;->m(IJ)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    invoke-static {v7}, Lcom/google/android/exoplayer2/audio/b0;->j(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_c

    :cond_8
    add-int/lit8 v4, v6, 0x1

    if-ne v6, v0, :cond_a

    if-eqz p2, :cond_9

    return v3

    :cond_9
    const-string p1, "Searched too many bytes."

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    :cond_a
    if-eqz p2, :cond_b

    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    add-int v5, v1, v4

    invoke-interface {p1, v5}, Lg9/m;->advancePeekPosition(I)V

    goto :goto_4

    :cond_b
    invoke-interface {p1, v8}, Lg9/m;->skipFully(I)V

    :goto_4
    move v5, v3

    move v6, v4

    move v4, v5

    goto :goto_3

    :cond_c
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_d

    iget-object v4, p0, Ln9/f;->d:Lcom/google/android/exoplayer2/audio/b0$a;

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/audio/b0$a;->a(I)Z

    move v4, v7

    goto :goto_7

    :cond_d
    const/4 v7, 0x4

    if-ne v5, v7, :cond_f

    :goto_5
    if-eqz p2, :cond_e

    add-int/2addr v1, v6

    invoke-interface {p1, v1}, Lg9/m;->skipFully(I)V

    goto :goto_6

    :cond_e
    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    :goto_6
    iput v4, p0, Ln9/f;->k:I

    return v8

    :cond_f
    :goto_7
    add-int/lit8 v9, v9, -0x4

    invoke-interface {p1, v9}, Lg9/m;->advancePeekPosition(I)V

    goto :goto_3
.end method


# virtual methods
.method public b(Lg9/n;)V
    .locals 2

    iput-object p1, p0, Ln9/f;->h:Lg9/n;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lg9/n;->track(II)Lg9/e0;

    move-result-object p1

    iput-object p1, p0, Ln9/f;->i:Lg9/e0;

    iput-object p1, p0, Ln9/f;->j:Lg9/e0;

    iget-object p1, p0, Ln9/f;->h:Lg9/n;

    invoke-interface {p1}, Lg9/n;->endTracks()V

    return-void
.end method

.method public c(Lg9/m;Lg9/a0;)I
    .locals 4

    invoke-direct {p0}, Ln9/f;->f()V

    invoke-direct {p0, p1}, Ln9/f;->s(Lg9/m;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Ln9/f;->q:Ln9/g;

    instance-of p2, p2, Ln9/b;

    if-eqz p2, :cond_0

    iget-wide v0, p0, Ln9/f;->n:J

    invoke-direct {p0, v0, v1}, Ln9/f;->h(J)J

    move-result-wide v0

    iget-object p2, p0, Ln9/f;->q:Ln9/g;

    invoke-interface {p2}, Lg9/b0;->getDurationUs()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_0

    iget-object p2, p0, Ln9/f;->q:Ln9/g;

    check-cast p2, Ln9/b;

    invoke-virtual {p2, v0, v1}, Ln9/b;->d(J)V

    iget-object p2, p0, Ln9/f;->h:Lg9/n;

    iget-object v0, p0, Ln9/f;->q:Ln9/g;

    invoke-interface {p2, v0}, Lg9/n;->d(Lg9/b0;)V

    :cond_0
    return p1
.end method

.method public d(Lg9/m;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ln9/f;->u(Lg9/m;Z)Z

    move-result p1

    return p1
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln9/f;->r:Z

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Ln9/f;->k:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ln9/f;->m:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ln9/f;->n:J

    iput p1, p0, Ln9/f;->p:I

    iput-wide p3, p0, Ln9/f;->t:J

    iget-object p1, p0, Ln9/f;->q:Ln9/g;

    instance-of p2, p1, Ln9/b;

    if-eqz p2, :cond_0

    check-cast p1, Ln9/b;

    invoke-virtual {p1, p3, p4}, Ln9/b;->b(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln9/f;->s:Z

    iget-object p1, p0, Ln9/f;->g:Lg9/e0;

    iput-object p1, p0, Ln9/f;->j:Lg9/e0;

    :cond_0
    return-void
.end method
