.class public final Lq9/b;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/l;


# static fields
.field public static final d:Lg9/r;


# instance fields
.field private final a:Lq9/c;

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq9/a;

    invoke-direct {v0}, Lq9/a;-><init>()V

    sput-object v0, Lq9/b;->d:Lg9/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq9/c;

    invoke-direct {v0}, Lq9/c;-><init>()V

    iput-object v0, p0, Lq9/b;->a:Lq9/c;

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object v0, p0, Lq9/b;->b:Lcom/google/android/exoplayer2/util/d0;

    return-void
.end method

.method public static synthetic a()[Lg9/l;
    .locals 1

    invoke-static {}, Lq9/b;->e()[Lg9/l;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic e()[Lg9/l;
    .locals 3

    new-instance v0, Lq9/b;

    invoke-direct {v0}, Lq9/b;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lg9/l;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public b(Lg9/n;)V
    .locals 4

    iget-object v0, p0, Lq9/b;->a:Lq9/c;

    new-instance v1, Lq9/i0$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lq9/i0$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lq9/c;->c(Lg9/n;Lq9/i0$d;)V

    invoke-interface {p1}, Lg9/n;->endTracks()V

    new-instance v0, Lg9/b0$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lg9/b0$b;-><init>(J)V

    invoke-interface {p1, v0}, Lg9/n;->d(Lg9/b0;)V

    return-void
.end method

.method public c(Lg9/m;Lg9/a0;)I
    .locals 4

    iget-object p2, p0, Lq9/b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object p2

    const/16 v0, 0xae2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lg9/m;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Lq9/b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object p2, p0, Lq9/b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/d0;->O(I)V

    iget-boolean p1, p0, Lq9/b;->c:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lq9/b;->a:Lq9/c;

    const-wide/16 v2, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v2, v3, p2}, Lq9/c;->b(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq9/b;->c:Z

    :cond_1
    iget-object p1, p0, Lq9/b;->a:Lq9/c;

    iget-object p2, p0, Lq9/b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1, p2}, Lq9/c;->a(Lcom/google/android/exoplayer2/util/d0;)V

    return v1
.end method

.method public d(Lg9/m;)Z
    .locals 7

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v4

    invoke-interface {p1, v4, v2, v1}, Lg9/m;->peekFully([BII)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->G()I

    move-result v4

    const v5, 0x494433

    if-eq v4, v5, :cond_4

    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    invoke-interface {p1, v3}, Lg9/m;->advancePeekPosition(I)V

    move v1, v2

    move v4, v3

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {p1, v5, v2, v6}, Lg9/m;->peekFully([BII)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v5

    const/16 v6, 0xb77

    if-eq v5, v6, :cond_1

    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    :cond_0
    invoke-interface {p1, v4}, Lg9/m;->advancePeekPosition(I)V

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v6, 0x4

    if-lt v1, v6, :cond_2

    return v5

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/b;->f([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, -0x6

    invoke-interface {p1, v5}, Lg9/m;->advancePeekPosition(I)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->C()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    invoke-interface {p1, v4}, Lg9/m;->advancePeekPosition(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq9/b;->c:Z

    iget-object p1, p0, Lq9/b;->a:Lq9/c;

    invoke-virtual {p1}, Lq9/c;->seek()V

    return-void
.end method
