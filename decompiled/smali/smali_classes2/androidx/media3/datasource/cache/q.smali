.class public final Landroidx/media3/datasource/cache/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/cache/b;


# instance fields
.field private final a:J

.field private final b:Ljava/util/TreeSet;

.field private c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/datasource/cache/q;->a:J

    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Landroidx/media3/datasource/cache/p;

    invoke-direct {p2}, Landroidx/media3/datasource/cache/p;-><init>()V

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Landroidx/media3/datasource/cache/q;->b:Ljava/util/TreeSet;

    return-void
.end method

.method public static synthetic f(Landroidx/media3/datasource/cache/h;Landroidx/media3/datasource/cache/h;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/datasource/cache/q;->g(Landroidx/media3/datasource/cache/h;Landroidx/media3/datasource/cache/h;)I

    move-result p0

    return p0
.end method

.method private static g(Landroidx/media3/datasource/cache/h;Landroidx/media3/datasource/cache/h;)I
    .locals 8

    iget-wide v0, p0, Landroidx/media3/datasource/cache/h;->f:J

    iget-wide v2, p1, Landroidx/media3/datasource/cache/h;->f:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/cache/h;->a(Landroidx/media3/datasource/cache/h;)I

    move-result p0

    return p0

    :cond_0
    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private h(Landroidx/media3/datasource/cache/Cache;J)V
    .locals 4

    :goto_0
    iget-wide v0, p0, Landroidx/media3/datasource/cache/q;->c:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroidx/media3/datasource/cache/q;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/cache/q;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/cache/q;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/h;

    invoke-interface {p1, v0}, Landroidx/media3/datasource/cache/Cache;->f(Landroidx/media3/datasource/cache/h;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/h;Landroidx/media3/datasource/cache/h;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/datasource/cache/q;->e(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/h;)V

    invoke-virtual {p0, p1, p3}, Landroidx/media3/datasource/cache/q;->c(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/h;)V

    return-void
.end method

.method public c(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/h;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/datasource/cache/q;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Landroidx/media3/datasource/cache/q;->c:J

    iget-wide v2, p2, Landroidx/media3/datasource/cache/h;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/datasource/cache/q;->c:J

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/datasource/cache/q;->h(Landroidx/media3/datasource/cache/Cache;J)V

    return-void
.end method

.method public d(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0

    const-wide/16 p2, -0x1

    cmp-long p2, p5, p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p5, p6}, Landroidx/media3/datasource/cache/q;->h(Landroidx/media3/datasource/cache/Cache;J)V

    :cond_0
    return-void
.end method

.method public e(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/h;)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/datasource/cache/q;->b:Ljava/util/TreeSet;

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-wide v0, p0, Landroidx/media3/datasource/cache/q;->c:J

    iget-wide p1, p2, Landroidx/media3/datasource/cache/h;->c:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/datasource/cache/q;->c:J

    return-void
.end method

.method public onCacheInitialized()V
    .locals 0

    return-void
.end method
