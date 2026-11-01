.class public final Lcom/google/android/exoplayer2/upstream/e0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/k;

.field private final b:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/k;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/e0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/e0;->b:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iput p3, p0, Lcom/google/android/exoplayer2/upstream/e0;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/n;)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/e0;->b:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/e0;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->c(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/e0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/k;->a(Lcom/google/android/exoplayer2/upstream/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/e0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k;->close()V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/e0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/k;->e(Lcom/google/android/exoplayer2/upstream/k0;)V

    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/e0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/e0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/e0;->b:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/e0;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->c(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/e0;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/g;->read([BII)I

    move-result p1

    return p1
.end method
