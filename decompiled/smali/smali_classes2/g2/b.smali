.class public final Lg2/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/v;


# instance fields
.field private final a:Ll2/x;

.field private b:Ll2/r;

.field private c:Ll2/s;


# direct methods
.method public constructor <init>(Ll2/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/b;->a:Ll2/x;

    return-void
.end method

.method public static synthetic e(Ll2/r;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lg2/b;->f(Ll2/r;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Ll2/r;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ll2/r;->e()Ll2/r;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lg2/b;->b:Ll2/r;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ll2/r;->e()Ll2/r;

    move-result-object v0

    instance-of v1, v0, Le3/f;

    if-eqz v1, :cond_1

    check-cast v0, Le3/f;

    invoke-virtual {v0}, Le3/f;->k()V

    :cond_1
    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lg2/b;->c:Ll2/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ll2/s;->getPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public c(Landroidx/media3/common/j;Landroid/net/Uri;Ljava/util/Map;JJLl2/t;)V
    .locals 7

    new-instance v6, Ll2/j;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Ll2/j;-><init>(Landroidx/media3/common/j;JJ)V

    iput-object v6, p0, Lg2/b;->c:Ll2/s;

    iget-object p1, p0, Lg2/b;->b:Ll2/r;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lg2/b;->a:Ll2/x;

    invoke-interface {p1, p2, p3}, Ll2/x;->c(Landroid/net/Uri;Ljava/util/Map;)[Ll2/r;

    move-result-object p1

    array-length p3, p1

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p3

    array-length p6, p1

    const/4 p7, 0x0

    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    aget-object p1, p1, p7

    iput-object p1, p0, Lg2/b;->b:Ll2/r;

    goto :goto_6

    :cond_1
    array-length p6, p1

    move v1, p7

    :goto_0
    if-ge v1, p6, :cond_7

    aget-object v2, p1, v1

    :try_start_0
    invoke-interface {v2, v6}, Ll2/r;->d(Ll2/s;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Lg2/b;->b:Ll2/r;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-interface {v6}, Ll2/s;->resetPeekPosition()V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ll2/r;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lg2/b;->b:Ll2/r;

    if-nez v2, :cond_4

    invoke-interface {v6}, Ll2/s;->getPosition()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, p7

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v0

    :goto_2
    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-interface {v6}, Ll2/s;->resetPeekPosition()V

    goto :goto_4

    :goto_3
    iget-object p2, p0, Lg2/b;->b:Ll2/r;

    if-nez p2, :cond_5

    invoke-interface {v6}, Ll2/s;->getPosition()J

    move-result-wide p2

    cmp-long p2, p2, p4

    if-nez p2, :cond_6

    :cond_5
    move p7, v0

    :cond_6
    invoke-static {p7}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-interface {v6}, Ll2/s;->resetPeekPosition()V

    throw p1

    :catch_0
    iget-object v2, p0, Lg2/b;->b:Ll2/r;

    if-nez v2, :cond_4

    invoke-interface {v6}, Ll2/s;->getPosition()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-nez v2, :cond_3

    goto :goto_1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    iget-object p4, p0, Lg2/b;->b:Ll2/r;

    if-eqz p4, :cond_8

    :goto_6
    iget-object p1, p0, Lg2/b;->b:Ll2/r;

    invoke-interface {p1, p8}, Ll2/r;->b(Ll2/t;)V

    return-void

    :cond_8
    new-instance p4, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "None of the available extractors ("

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ", "

    invoke-static {p6}, Lcom/google/common/base/g;->h(Ljava/lang/String;)Lcom/google/common/base/g;

    move-result-object p6

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    new-instance p7, Lg2/a;

    invoke-direct {p7}, Lg2/a;-><init>()V

    invoke-static {p1, p7}, Lcom/google/common/collect/Lists;->o(Ljava/util/List;Lcom/google/common/base/f;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/google/common/base/g;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    invoke-direct {p4, p1, p2, p3}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    throw p4
.end method

.method public d(Ll2/l0;)I
    .locals 2

    iget-object v0, p0, Lg2/b;->b:Ll2/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/r;

    iget-object v1, p0, Lg2/b;->c:Ll2/s;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll2/s;

    invoke-interface {v0, v1, p1}, Ll2/r;->c(Ll2/s;Ll2/l0;)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lg2/b;->b:Ll2/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ll2/r;->release()V

    iput-object v1, p0, Lg2/b;->b:Ll2/r;

    :cond_0
    iput-object v1, p0, Lg2/b;->c:Ll2/s;

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    iget-object v0, p0, Lg2/b;->b:Ll2/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/r;

    invoke-interface {v0, p1, p2, p3, p4}, Ll2/r;->seek(JJ)V

    return-void
.end method
