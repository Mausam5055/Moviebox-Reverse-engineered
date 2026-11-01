.class public abstract Lv9/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/n;

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/o1;

.field public final e:I

.field public final f:Ljava/lang/Object;

.field public final g:J

.field public final h:J

.field protected final i:Lcom/google/android/exoplayer2/upstream/i0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;ILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/i0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/i0;-><init>(Lcom/google/android/exoplayer2/upstream/k;)V

    iput-object v0, p0, Lv9/f;->i:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/n;

    iput-object p1, p0, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    iput p3, p0, Lv9/f;->c:I

    iput-object p4, p0, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iput p5, p0, Lv9/f;->e:I

    iput-object p6, p0, Lv9/f;->f:Ljava/lang/Object;

    iput-wide p7, p0, Lv9/f;->g:J

    iput-wide p9, p0, Lv9/f;->h:J

    invoke-static {}, Lt9/h;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lv9/f;->a:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lv9/f;->i:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 4

    iget-wide v0, p0, Lv9/f;->h:J

    iget-wide v2, p0, Lv9/f;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lv9/f;->i:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lv9/f;->i:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->h()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
