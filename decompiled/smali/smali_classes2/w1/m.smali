.class public final Lw1/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/a;


# instance fields
.field private final a:Landroidx/media3/datasource/a;

.field private final b:Lw1/d;

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a;Lw1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/a;

    iput-object p1, p0, Lw1/m;->a:Landroidx/media3/datasource/a;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/d;

    iput-object p1, p0, Lw1/m;->b:Lw1/d;

    return-void
.end method


# virtual methods
.method public a(Lw1/h;)J
    .locals 8

    iget-object v0, p0, Lw1/m;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/a;->a(Lw1/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lw1/m;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v4, p1, Lw1/h;->h:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2, v3, v0, v1}, Lw1/h;->f(JJ)Lw1/h;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lw1/m;->c:Z

    iget-object v0, p0, Lw1/m;->b:Lw1/d;

    invoke-interface {v0, p1}, Lw1/d;->a(Lw1/h;)V

    iget-wide v0, p0, Lw1/m;->d:J

    return-wide v0
.end method

.method public c(Lw1/n;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lw1/m;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    return-void
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lw1/m;->a:Landroidx/media3/datasource/a;

    invoke-interface {v1}, Landroidx/media3/datasource/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lw1/m;->c:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lw1/m;->c:Z

    iget-object v0, p0, Lw1/m;->b:Lw1/d;

    invoke-interface {v0}, Lw1/d;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lw1/m;->c:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lw1/m;->c:Z

    iget-object v0, p0, Lw1/m;->b:Lw1/d;

    invoke-interface {v0}, Lw1/d;->close()V

    :cond_1
    throw v1
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lw1/m;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0}, Landroidx/media3/datasource/a;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lw1/m;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0}, Landroidx/media3/datasource/a;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 4

    iget-wide v0, p0, Lw1/m;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lw1/m;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/j;->read([BII)I

    move-result p3

    if-lez p3, :cond_1

    iget-object v0, p0, Lw1/m;->b:Lw1/d;

    invoke-interface {v0, p1, p2, p3}, Lw1/d;->write([BII)V

    iget-wide p1, p0, Lw1/m;->d:J

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lw1/m;->d:J

    :cond_1
    return p3
.end method
