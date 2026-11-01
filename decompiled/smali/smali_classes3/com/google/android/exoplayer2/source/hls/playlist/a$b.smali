.class Lcom/google/android/exoplayer2/source/hls/playlist/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/hls/playlist/a;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/a;Lcom/google/android/exoplayer2/source/hls/playlist/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/a;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->y(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/z$c;Z)Z
    .locals 7

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    invoke-static {p3}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->z(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Lcom/google/android/exoplayer2/source/hls/playlist/d;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    invoke-static {p3}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->r(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Lcom/google/android/exoplayer2/source/hls/playlist/e;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/source/hls/playlist/e;

    iget-object p3, p3, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    move v3, v0

    move v4, v3

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->A(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/playlist/a$c;

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/hls/playlist/a$c;->d(Lcom/google/android/exoplayer2/source/hls/playlist/a$c;)J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/google/android/exoplayer2/upstream/z$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->r(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Lcom/google/android/exoplayer2/source/hls/playlist/e;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p3, v2, v0, v1, v4}, Lcom/google/android/exoplayer2/upstream/z$a;-><init>(IIII)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->D(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Lcom/google/android/exoplayer2/upstream/z;

    move-result-object v1

    invoke-interface {v1, p3, p2}, Lcom/google/android/exoplayer2/upstream/z;->d(Lcom/google/android/exoplayer2/upstream/z$a;Lcom/google/android/exoplayer2/upstream/z$c;)Lcom/google/android/exoplayer2/upstream/z$b;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p3, p2, Lcom/google/android/exoplayer2/upstream/z$b;->a:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/a$b;->a:Lcom/google/android/exoplayer2/source/hls/playlist/a;

    invoke-static {p3}, Lcom/google/android/exoplayer2/source/hls/playlist/a;->A(Lcom/google/android/exoplayer2/source/hls/playlist/a;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/playlist/a$c;

    if-eqz p1, :cond_2

    iget-wide p2, p2, Lcom/google/android/exoplayer2/upstream/z$b;->b:J

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/playlist/a$c;->b(Lcom/google/android/exoplayer2/source/hls/playlist/a$c;J)Z

    :cond_2
    return v0
.end method
