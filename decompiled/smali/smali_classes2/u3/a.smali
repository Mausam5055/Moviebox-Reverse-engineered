.class public final Lu3/a;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private final b:Ll2/o0;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/j0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object v0, p0, Lu3/a;->a:Landroidx/media3/common/util/j0;

    new-instance v0, Ll2/o0;

    const/4 v1, -0x1

    const-string v2, "image/webp"

    invoke-direct {v0, v1, v1, v2}, Ll2/o0;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lu3/a;->b:Ll2/o0;

    return-void
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 1

    iget-object v0, p0, Lu3/a;->b:Ll2/o0;

    invoke-virtual {v0, p1}, Ll2/o0;->b(Ll2/t;)V

    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 1

    iget-object v0, p0, Lu3/a;->b:Ll2/o0;

    invoke-virtual {v0, p1, p2}, Ll2/o0;->c(Ll2/s;Ll2/l0;)I

    move-result p1

    return p1
.end method

.method public d(Ll2/s;)Z
    .locals 7

    iget-object v0, p0, Lu3/a;->a:Landroidx/media3/common/util/j0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v0, p0, Lu3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ll2/s;->peekFully([BII)V

    iget-object v0, p0, Lu3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v3

    const-wide/32 v5, 0x52494646

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-interface {p1, v1}, Ll2/s;->advancePeekPosition(I)V

    iget-object v0, p0, Lu3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v0, p0, Lu3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Ll2/s;->peekFully([BII)V

    iget-object p1, p0, Lu3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v0

    const-wide/32 v3, 0x57454250

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
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

    iget-object v0, p0, Lu3/a;->b:Ll2/o0;

    invoke-virtual {v0, p1, p2, p3, p4}, Ll2/o0;->seek(JJ)V

    return-void
.end method
