.class public final Lw1/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/a;


# instance fields
.field private final a:Landroidx/media3/datasource/a;

.field private b:J

.field private c:Landroid/net/Uri;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/a;

    iput-object p1, p0, Lw1/l;->a:Landroidx/media3/datasource/a;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lw1/l;->c:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lw1/l;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lw1/h;)J
    .locals 2

    iget-object v0, p1, Lw1/h;->a:Landroid/net/Uri;

    iput-object v0, p0, Lw1/l;->c:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lw1/l;->d:Ljava/util/Map;

    :try_start_0
    iget-object v0, p0, Lw1/l;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/a;->a(Lw1/h;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lw1/l;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lw1/l;->c:Landroid/net/Uri;

    :cond_0
    invoke-virtual {p0}, Lw1/l;->getResponseHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lw1/l;->d:Ljava/util/Map;

    return-wide v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lw1/l;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lw1/l;->c:Landroid/net/Uri;

    :cond_1
    invoke-virtual {p0}, Lw1/l;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lw1/l;->d:Ljava/util/Map;

    throw p1
.end method

.method public c(Lw1/n;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lw1/l;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lw1/l;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0}, Landroidx/media3/datasource/a;->close()V

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lw1/l;->b:J

    return-wide v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lw1/l;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lw1/l;->d:Ljava/util/Map;

    return-object v0
.end method

.method public g()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lw1/l;->b:J

    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lw1/l;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0}, Landroidx/media3/datasource/a;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lw1/l;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0}, Landroidx/media3/datasource/a;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lw1/l;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/j;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Lw1/l;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lw1/l;->b:J

    :cond_0
    return p1
.end method
