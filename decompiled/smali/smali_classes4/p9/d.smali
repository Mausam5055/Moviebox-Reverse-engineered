.class public Lp9/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/l;


# static fields
.field public static final d:Lg9/r;


# instance fields
.field private a:Lg9/n;

.field private b:Lp9/i;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp9/c;

    invoke-direct {v0}, Lp9/c;-><init>()V

    sput-object v0, Lp9/d;->d:Lg9/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()[Lg9/l;
    .locals 1

    invoke-static {}, Lp9/d;->e()[Lg9/l;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic e()[Lg9/l;
    .locals 3

    new-instance v0, Lp9/d;

    invoke-direct {v0}, Lp9/d;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lg9/l;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private static f(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/util/d0;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    return-object p0
.end method

.method private g(Lg9/m;)Z
    .locals 5

    new-instance v0, Lp9/f;

    invoke-direct {v0}, Lp9/f;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lp9/f;->a(Lg9/m;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lp9/f;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lp9/f;->i:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, v0}, Lg9/m;->peekFully([BII)V

    invoke-static {v2}, Lp9/d;->f(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/util/d0;

    move-result-object p1

    invoke-static {p1}, Lp9/b;->p(Lcom/google/android/exoplayer2/util/d0;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lp9/b;

    invoke-direct {p1}, Lp9/b;-><init>()V

    iput-object p1, p0, Lp9/d;->b:Lp9/i;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lp9/d;->f(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/util/d0;

    move-result-object p1

    invoke-static {p1}, Lp9/j;->r(Lcom/google/android/exoplayer2/util/d0;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lp9/j;

    invoke-direct {p1}, Lp9/j;-><init>()V

    iput-object p1, p0, Lp9/d;->b:Lp9/i;

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lp9/d;->f(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/util/d0;

    move-result-object p1

    invoke-static {p1}, Lp9/h;->p(Lcom/google/android/exoplayer2/util/d0;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lp9/h;

    invoke-direct {p1}, Lp9/h;-><init>()V

    iput-object p1, p0, Lp9/d;->b:Lp9/i;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public b(Lg9/n;)V
    .locals 0

    iput-object p1, p0, Lp9/d;->a:Lg9/n;

    return-void
.end method

.method public c(Lg9/m;Lg9/a0;)I
    .locals 4

    iget-object v0, p0, Lp9/d;->a:Lg9/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lp9/d;->b:Lp9/i;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lp9/d;->g(Lg9/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    goto :goto_0

    :cond_0
    const-string p1, "Failed to determine bitstream type"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lp9/d;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lp9/d;->a:Lg9/n;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lg9/n;->track(II)Lg9/e0;

    move-result-object v0

    iget-object v1, p0, Lp9/d;->a:Lg9/n;

    invoke-interface {v1}, Lg9/n;->endTracks()V

    iget-object v1, p0, Lp9/d;->b:Lp9/i;

    iget-object v3, p0, Lp9/d;->a:Lg9/n;

    invoke-virtual {v1, v3, v0}, Lp9/i;->d(Lg9/n;Lg9/e0;)V

    iput-boolean v2, p0, Lp9/d;->c:Z

    :cond_2
    iget-object v0, p0, Lp9/d;->b:Lp9/i;

    invoke-virtual {v0, p1, p2}, Lp9/i;->g(Lg9/m;Lg9/a0;)I

    move-result p1

    return p1
.end method

.method public d(Lg9/m;)Z
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lp9/d;->g(Lg9/m;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    iget-object v0, p0, Lp9/d;->b:Lp9/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lp9/i;->m(JJ)V

    :cond_0
    return-void
.end method
