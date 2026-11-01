.class public final Ls3/e;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# static fields
.field public static final d:Ll2/x;


# instance fields
.field private final a:Ls3/f;

.field private final b:Landroidx/media3/common/util/j0;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls3/d;

    invoke-direct {v0}, Ls3/d;-><init>()V

    sput-object v0, Ls3/e;->d:Ll2/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls3/f;

    const-string v1, "audio/ac4"

    invoke-direct {v0, v1}, Ls3/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ls3/e;->a:Ls3/f;

    new-instance v0, Landroidx/media3/common/util/j0;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object v0, p0, Ls3/e;->b:Landroidx/media3/common/util/j0;

    return-void
.end method

.method public static synthetic a()[Ll2/r;
    .locals 1

    invoke-static {}, Ls3/e;->g()[Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic g()[Ll2/r;
    .locals 3

    new-instance v0, Ls3/e;

    invoke-direct {v0}, Ls3/e;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ll2/r;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 4

    iget-object v0, p0, Ls3/e;->a:Ls3/f;

    new-instance v1, Ls3/l0$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls3/l0$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Ls3/f;->d(Ll2/t;Ls3/l0$d;)V

    invoke-interface {p1}, Ll2/t;->endTracks()V

    new-instance v0, Ll2/m0$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Ll2/m0$b;-><init>(J)V

    invoke-interface {p1, v0}, Ll2/t;->f(Ll2/m0;)V

    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 4

    iget-object p2, p0, Ls3/e;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    const/16 v0, 0x4000

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Ll2/s;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Ls3/e;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, v1}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p2, p0, Ls3/e;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/j0;->V(I)V

    iget-boolean p1, p0, Ls3/e;->c:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Ls3/e;->a:Ls3/f;

    const-wide/16 v2, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v2, v3, p2}, Ls3/f;->b(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls3/e;->c:Z

    :cond_1
    iget-object p1, p0, Ls3/e;->a:Ls3/f;

    iget-object p2, p0, Ls3/e;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, p2}, Ls3/f;->a(Landroidx/media3/common/util/j0;)V

    return v1
.end method

.method public d(Ll2/s;)Z
    .locals 8

    new-instance v0, Landroidx/media3/common/util/j0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/util/j0;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v4

    invoke-interface {p1, v4, v2, v1}, Ll2/s;->peekFully([BII)V

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->K()I

    move-result v4

    const v5, 0x494433

    if-eq v4, v5, :cond_4

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    invoke-interface {p1, v3}, Ll2/s;->advancePeekPosition(I)V

    move v1, v2

    move v4, v3

    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {p1, v5, v2, v6}, Ll2/s;->peekFully([BII)V

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->P()I

    move-result v5

    const v6, 0xac40

    if-eq v5, v6, :cond_1

    const v6, 0xac41

    if-eq v5, v6, :cond_1

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    :cond_0
    invoke-interface {p1, v4}, Ll2/s;->advancePeekPosition(I)V

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    add-int/2addr v1, v6

    const/4 v7, 0x4

    if-lt v1, v7, :cond_2

    return v6

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v6

    invoke-static {v6, v5}, Ll2/c;->g([BI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, -0x7

    invoke-interface {p1, v5}, Ll2/s;->advancePeekPosition(I)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->G()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    invoke-interface {p1, v4}, Ll2/s;->advancePeekPosition(I)V

    goto :goto_0
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
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ls3/e;->c:Z

    iget-object p1, p0, Ls3/e;->a:Ls3/f;

    invoke-virtual {p1}, Ls3/f;->seek()V

    return-void
.end method
