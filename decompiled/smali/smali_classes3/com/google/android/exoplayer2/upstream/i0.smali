.class public final Lcom/google/android/exoplayer2/upstream/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/k;

.field private b:J

.field private c:Landroid/net/Uri;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/k;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/i0;->a:Lcom/google/android/exoplayer2/upstream/k;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/i0;->c:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/i0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/n;)J
    .locals 2

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/n;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->c:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/k;->a(Lcom/google/android/exoplayer2/upstream/n;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/i0;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/i0;->c:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/i0;->getResponseHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/i0;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k;->close()V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/k;->e(Lcom/google/android/exoplayer2/upstream/k0;)V

    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->b:J

    return-wide v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->d:Ljava/util/Map;

    return-object v0
.end method

.method public j()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->b:J

    return-void
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/g;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/i0;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/i0;->b:J

    :cond_0
    return p1
.end method
