.class final Lcom/google/android/exoplayer2/source/c0$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/n;

.field private final c:Lcom/google/android/exoplayer2/upstream/i0;

.field private d:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/n;Lcom/google/android/exoplayer2/upstream/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lt9/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/c0$c;->a:J

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c0$c;->b:Lcom/google/android/exoplayer2/upstream/n;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/i0;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/i0;-><init>(Lcom/google/android/exoplayer2/upstream/k;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/c0$c;)Lcom/google/android/exoplayer2/upstream/i0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/c0$c;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c0$c;->d:[B

    return-object p0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    return-void
.end method

.method public load()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->j()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/i0;->a(Lcom/google/android/exoplayer2/upstream/n;)J

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->f()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->d:[B

    if-nez v1, :cond_0

    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->d:[B

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    array-length v2, v1

    if-ne v0, v2, :cond_1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->d:[B

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/c0$c;->d:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/i0;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/k;)V

    return-void

    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c0$c;->c:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/k;)V

    throw v0
.end method
