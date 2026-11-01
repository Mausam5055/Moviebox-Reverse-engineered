.class public Lg3/d;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# static fields
.field public static final d:Ll2/x;


# instance fields
.field private a:Ll2/t;

.field private b:Lg3/i;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg3/c;

    invoke-direct {v0}, Lg3/c;-><init>()V

    sput-object v0, Lg3/d;->d:Ll2/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()[Ll2/r;
    .locals 1

    invoke-static {}, Lg3/d;->g()[Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic g()[Ll2/r;
    .locals 3

    new-instance v0, Lg3/d;

    invoke-direct {v0}, Lg3/d;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ll2/r;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private static h(Landroidx/media3/common/util/j0;)Landroidx/media3/common/util/j0;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object p0
.end method

.method private i(Ll2/s;)Z
    .locals 5

    new-instance v0, Lg3/f;

    invoke-direct {v0}, Lg3/f;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg3/f;->a(Ll2/s;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lg3/f;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lg3/f;->i:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Landroidx/media3/common/util/j0;

    invoke-direct {v2, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, v0}, Ll2/s;->peekFully([BII)V

    invoke-static {v2}, Lg3/d;->h(Landroidx/media3/common/util/j0;)Landroidx/media3/common/util/j0;

    move-result-object p1

    invoke-static {p1}, Lg3/b;->p(Landroidx/media3/common/util/j0;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lg3/b;

    invoke-direct {p1}, Lg3/b;-><init>()V

    iput-object p1, p0, Lg3/d;->b:Lg3/i;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lg3/d;->h(Landroidx/media3/common/util/j0;)Landroidx/media3/common/util/j0;

    move-result-object p1

    invoke-static {p1}, Lg3/j;->r(Landroidx/media3/common/util/j0;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lg3/j;

    invoke-direct {p1}, Lg3/j;-><init>()V

    iput-object p1, p0, Lg3/d;->b:Lg3/i;

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lg3/d;->h(Landroidx/media3/common/util/j0;)Landroidx/media3/common/util/j0;

    move-result-object p1

    invoke-static {p1}, Lg3/h;->o(Landroidx/media3/common/util/j0;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lg3/h;

    invoke-direct {p1}, Lg3/h;-><init>()V

    iput-object p1, p0, Lg3/d;->b:Lg3/i;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 0

    iput-object p1, p0, Lg3/d;->a:Ll2/t;

    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 4

    iget-object v0, p0, Lg3/d;->a:Ll2/t;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg3/d;->b:Lg3/i;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lg3/d;->i(Ll2/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    goto :goto_0

    :cond_0
    const-string p1, "Failed to determine bitstream type"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lg3/d;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lg3/d;->a:Ll2/t;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v0

    iget-object v1, p0, Lg3/d;->a:Ll2/t;

    invoke-interface {v1}, Ll2/t;->endTracks()V

    iget-object v1, p0, Lg3/d;->b:Lg3/i;

    iget-object v3, p0, Lg3/d;->a:Ll2/t;

    invoke-virtual {v1, v3, v0}, Lg3/i;->d(Ll2/t;Ll2/s0;)V

    iput-boolean v2, p0, Lg3/d;->c:Z

    :cond_2
    iget-object v0, p0, Lg3/d;->b:Lg3/i;

    invoke-virtual {v0, p1, p2}, Lg3/i;->g(Ll2/s;Ll2/l0;)I

    move-result p1

    return p1
.end method

.method public d(Ll2/s;)Z
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lg3/d;->i(Ll2/s;)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic e()Ll2/r;
    .locals 1

    invoke-static {p0}, Ll2/q;->b(Ll2/r;)Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ll2/q;->a(Ll2/r;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    iget-object v0, p0, Lg3/d;->b:Lg3/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lg3/i;->m(JJ)V

    :cond_0
    return-void
.end method
