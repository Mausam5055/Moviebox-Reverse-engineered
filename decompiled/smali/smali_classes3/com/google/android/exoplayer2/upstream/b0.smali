.class public final Lcom/google/android/exoplayer2/upstream/b0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/b0$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/n;

.field public final c:I

.field private final d:Lcom/google/android/exoplayer2/upstream/i0;

.field private final e:Lcom/google/android/exoplayer2/upstream/b0$a;

.field private volatile f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/b0$a;)V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/n$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/n$b;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/upstream/n$b;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/n$b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/upstream/n$b;->b(I)Lcom/google/android/exoplayer2/upstream/n$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/n$b;->a()Lcom/google/android/exoplayer2/upstream/n;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/upstream/b0;-><init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;ILcom/google/android/exoplayer2/upstream/b0$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;ILcom/google/android/exoplayer2/upstream/b0$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/i0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/i0;-><init>(Lcom/google/android/exoplayer2/upstream/k;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/b0;->b:Lcom/google/android/exoplayer2/upstream/n;

    iput p3, p0, Lcom/google/android/exoplayer2/upstream/b0;->c:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/b0;->e:Lcom/google/android/exoplayer2/upstream/b0$a;

    invoke-static {}, Lt9/h;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/b0;->a:J

    return-void
.end method

.method public static e(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/b0$a;Lcom/google/android/exoplayer2/upstream/n;I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/b0;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/exoplayer2/upstream/b0;-><init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;ILcom/google/android/exoplayer2/upstream/b0$a;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/b0;->load()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/b0;->c()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final cancelLoad()V
    .locals 0

    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->h()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final load()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/i0;->j()V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/b0;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/l;->h()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/b0;->d:Lcom/google/android/exoplayer2/upstream/i0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/i0;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/b0;->e:Lcom/google/android/exoplayer2/upstream/b0$a;

    invoke-interface {v2, v1, v0}, Lcom/google/android/exoplayer2/upstream/b0$a;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/b0;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    throw v1
.end method
