.class final Lcom/google/android/exoplayer2/source/y$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Lcom/google/android/exoplayer2/upstream/a;

.field public d:Lcom/google/android/exoplayer2/source/y$a;


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/y$a;->d(JI)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/a;

    return-object v0
.end method

.method public b()Lcom/google/android/exoplayer2/source/y$a;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/source/y$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/source/y$a;

    return-object v1
.end method

.method public c(Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/source/y$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/source/y$a;

    return-void
.end method

.method public d(JI)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/y$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    return-void
.end method

.method public e(J)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y$a;->a:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    iget p2, p2, Lcom/google/android/exoplayer2/upstream/a;->b:I

    add-int/2addr p1, p2

    return p1
.end method

.method public next()Lcom/google/android/exoplayer2/upstream/b$a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/source/y$a;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
