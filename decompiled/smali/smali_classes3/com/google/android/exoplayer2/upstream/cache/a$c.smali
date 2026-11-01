.class public final Lcom/google/android/exoplayer2/upstream/cache/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private b:Lcom/google/android/exoplayer2/upstream/k$a;

.field private c:Lcom/google/android/exoplayer2/upstream/i$a;

.field private d:Lcom/google/android/exoplayer2/upstream/cache/g;

.field private e:Z

.field private f:Lcom/google/android/exoplayer2/upstream/k$a;

.field private g:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/g;->a:Lcom/google/android/exoplayer2/upstream/cache/g;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->d:Lcom/google/android/exoplayer2/upstream/cache/g;

    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/upstream/k;II)Lcom/google/android/exoplayer2/upstream/cache/a;
    .locals 12

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->e:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->c:Lcom/google/android/exoplayer2/upstream/i$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/i$a;->createDataSink()Lcom/google/android/exoplayer2/upstream/i;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->createDataSink()Lcom/google/android/exoplayer2/upstream/i;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->d:Lcom/google/android/exoplayer2/upstream/cache/g;

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->g:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    move-object v3, p1

    move v7, p2

    move v9, p3

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/a;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/i;Lcom/google/android/exoplayer2/upstream/cache/g;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/a$b;Lcom/google/android/exoplayer2/upstream/cache/a$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/cache/a;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->f:Lcom/google/android/exoplayer2/upstream/k$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->i:I

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->h:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/a$c;->d(Lcom/google/android/exoplayer2/upstream/k;II)Lcom/google/android/exoplayer2/upstream/cache/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/exoplayer2/upstream/cache/a;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->f:Lcom/google/android/exoplayer2/upstream/k$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->i:I

    or-int/lit8 v1, v1, 0x1

    const/16 v2, -0x3e8

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/a$c;->d(Lcom/google/android/exoplayer2/upstream/k;II)Lcom/google/android/exoplayer2/upstream/cache/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/exoplayer2/upstream/cache/a;
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->i:I

    or-int/lit8 v0, v0, 0x1

    const/16 v1, -0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/a$c;->d(Lcom/google/android/exoplayer2/upstream/k;II)Lcom/google/android/exoplayer2/upstream/cache/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/k;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/a$c;->a()Lcom/google/android/exoplayer2/upstream/cache/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method public f()Lcom/google/android/exoplayer2/upstream/cache/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->d:Lcom/google/android/exoplayer2/upstream/cache/g;

    return-object v0
.end method

.method public g()Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->g:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object v0
.end method

.method public h(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/a$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object p0
.end method

.method public i(Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/upstream/cache/a$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a$c;->f:Lcom/google/android/exoplayer2/upstream/k$a;

    return-object p0
.end method
