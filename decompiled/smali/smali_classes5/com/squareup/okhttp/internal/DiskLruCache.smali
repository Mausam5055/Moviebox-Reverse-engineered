.class public final Lcom/squareup/okhttp/internal/DiskLruCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/DiskLruCache$e;,
        Lcom/squareup/okhttp/internal/DiskLruCache$d;,
        Lcom/squareup/okhttp/internal/DiskLruCache$f;
    }
.end annotation


# static fields
.field static final s:Ljava/util/regex/Pattern;

.field private static final t:Lokio/Sink;


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/io/FileSystem;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private g:J

.field private final h:I

.field private i:J

.field private j:Lokio/BufferedSink;

.field private final k:Ljava/util/LinkedHashMap;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private final q:Ljava/util/concurrent/Executor;

.field private final r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/DiskLruCache;->s:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/squareup/okhttp/internal/DiskLruCache$c;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$c;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/DiskLruCache;->t:Lokio/Sink;

    return-void
.end method

.method constructor <init>(Lcom/squareup/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    new-instance v2, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->p:J

    new-instance v0, Lcom/squareup/okhttp/internal/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/DiskLruCache$1;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->r:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->b:Ljava/io/File;

    iput p3, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->f:I

    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->d:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->e:Ljava/io/File;

    iput p4, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    iput-wide p5, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->g:J

    iput-object p7, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->q:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private declared-synchronized V(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$d;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->g0()V

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->v()V

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->y0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/DiskLruCache$e;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->f(Lcom/squareup/okhttp/internal/DiskLruCache$e;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v3, p2

    if-eqz p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->j(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    monitor-exit p0

    return-object v2

    :cond_2
    :try_start_2
    iget-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object p2

    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-interface {p2}, Lokio/BufferedSink;->flush()V

    iget-boolean p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->m:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_3

    monitor-exit p0

    return-object v2

    :cond_3
    if-nez v0, :cond_4

    :try_start_3
    new-instance v0, Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-direct {v0, p0, p1, v2}, Lcom/squareup/okhttp/internal/DiskLruCache$e;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V

    iget-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance p1, Lcom/squareup/okhttp/internal/DiskLruCache$d;

    invoke-direct {p1, p0, v0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache$d;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$e;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->k(Lcom/squareup/okhttp/internal/DiskLruCache$e;Lcom/squareup/okhttp/internal/DiskLruCache$d;)Lcom/squareup/okhttp/internal/DiskLruCache$d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/DiskLruCache;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->n:Z

    return p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/DiskLruCache;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->o:Z

    return p0
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/DiskLruCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->x0()V

    return-void
.end method

.method private h0()Z
    .locals 2

    iget v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic i(Lcom/squareup/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic k(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$d;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/DiskLruCache;->V(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object p0

    return-object p0
.end method

.method private k0()Lokio/BufferedSink;
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/DiskLruCache$a;

    invoke-direct {v1, p0, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$a;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lokio/Sink;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/squareup/okhttp/internal/DiskLruCache;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    return p0
.end method

.method private l0()V
    .locals 8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->j(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :goto_1
    iget v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    if-ge v3, v2, :cond_0

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->b(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->k(Lcom/squareup/okhttp/internal/DiskLruCache$e;Lcom/squareup/okhttp/internal/DiskLruCache$d;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    :goto_2
    iget v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    if-ge v3, v2, :cond_2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->c(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lcom/squareup/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->d(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lcom/squareup/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic m(Lcom/squareup/okhttp/internal/DiskLruCache;)Lcom/squareup/okhttp/internal/io/FileSystem;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    return-object p0
.end method

.method private m0()V
    .locals 9

    const-string v0, ", "

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->o0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    invoke-interface {v1}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->p0()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->k0()Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v1}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    return-void

    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {v1}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic n()Lokio/Sink;
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/internal/DiskLruCache;->t:Lokio/Sink;

    return-object v0
.end method

.method static synthetic o(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/DiskLruCache;->w(Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)V

    return-void
.end method

.method private o0(Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/okhttp/internal/DiskLruCache$e;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    new-instance v5, Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-direct {v5, p0, v4, v6}, Lcom/squareup/okhttp/internal/DiskLruCache$e;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V

    iget-object v7, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->i(Lcom/squareup/okhttp/internal/DiskLruCache$e;Z)Z

    invoke-static {v5, v6}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->k(Lcom/squareup/okhttp/internal/DiskLruCache$e;Lcom/squareup/okhttp/internal/DiskLruCache$d;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    invoke-static {v5, p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->a(Lcom/squareup/okhttp/internal/DiskLruCache$e;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance p1, Lcom/squareup/okhttp/internal/DiskLruCache$d;

    invoke-direct {p1, p0, v5, v6}, Lcom/squareup/okhttp/internal/DiskLruCache$d;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$e;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V

    invoke-static {v5, p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->k(Lcom/squareup/okhttp/internal/DiskLruCache$e;Lcom/squareup/okhttp/internal/DiskLruCache$d;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic p(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->r0(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized p0()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokio/Sink;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    const-string v1, "1"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->f:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->j(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object v4

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    const-string v4, "DIRTY"

    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->e(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    const-string v4, "CLEAN"

    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->e(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->o(Lokio/BufferedSink;)V

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {v0}, Lokio/Sink;->close()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->e:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->d:Ljava/io/File;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->e:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->k0()Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->m:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    invoke-interface {v0}, Lokio/Sink;->close()V

    throw v1

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic q(Lcom/squareup/okhttp/internal/DiskLruCache;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->b:Ljava/io/File;

    return-object p0
.end method

.method static synthetic r(Lcom/squareup/okhttp/internal/DiskLruCache;)Z
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->h0()Z

    move-result p0

    return p0
.end method

.method private r0(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z
    .locals 7

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->j(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->j(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache$d;->d(Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->c(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->b(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[J

    move-result-object v4

    aget-wide v5, v4, v0

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->b(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v0

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->e(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->e(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->h0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->q:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->r:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method static synthetic s(Lcom/squareup/okhttp/internal/DiskLruCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->p0()V

    return-void
.end method

.method static synthetic t(Lcom/squareup/okhttp/internal/DiskLruCache;I)I
    .locals 0

    iput p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    return p1
.end method

.method static synthetic u(Lcom/squareup/okhttp/internal/DiskLruCache;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->m:Z

    return p1
.end method

.method private declared-synchronized v()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized w(Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$d;->b(Lcom/squareup/okhttp/internal/DiskLruCache$d;)Lcom/squareup/okhttp/internal/DiskLruCache$e;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->j(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object v1

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->h(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    if-ge v2, v3, :cond_2

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$d;->c(Lcom/squareup/okhttp/internal/DiskLruCache$d;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->d(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/squareup/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->h:I

    if-ge v1, p1, :cond_5

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->d(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[Ljava/io/File;

    move-result-object p1

    aget-object p1, p1, v1

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    invoke-interface {v2, p1}, Lcom/squareup/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->c(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    invoke-interface {v3, p1, v2}, Lcom/squareup/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->b(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    invoke-interface {p1, v2}, Lcom/squareup/okhttp/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v5

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->b(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    invoke-interface {v2, p1}, Lcom/squareup/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->k(Lcom/squareup/okhttp/internal/DiskLruCache$e;Lcom/squareup/okhttp/internal/DiskLruCache$d;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->h(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_6

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->i(Lcom/squareup/okhttp/internal/DiskLruCache$e;Z)Z

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->e(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->o(Lokio/BufferedSink;)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    if-eqz p2, :cond_7

    iget-wide p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->p:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->p:J

    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->g(Lcom/squareup/okhttp/internal/DiskLruCache$e;J)J

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->e(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->e(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    iget-wide p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->g:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_8

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->h0()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->q:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->r:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static x(Lcom/squareup/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/squareup/okhttp/internal/DiskLruCache;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    if-lez p3, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v1, "OkHttp DiskLruCache"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/g;->s(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v9, Lcom/squareup/okhttp/internal/DiskLruCache;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/DiskLruCache;-><init>(Lcom/squareup/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v9

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private x0()V
    .locals 4

    :goto_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->r0(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private y0(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/squareup/okhttp/internal/DiskLruCache;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public T()V
    .locals 2

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->close()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public U(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$d;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->V(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized Z()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->g0()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/DiskLruCache$e;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/DiskLruCache;->r0(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized a0(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$f;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->g0()V

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->v()V

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->y0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/DiskLruCache$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->h(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->n()Lcom/squareup/okhttp/internal/DiskLruCache$f;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->l:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->h0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->q:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->r:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_3
    :goto_1
    monitor-exit p0

    return-object v1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public c0()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->b:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->o:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/DiskLruCache$e;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->j(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->j(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->x0()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/Sink;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_2
    :try_start_1
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized d0()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->v()V

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->x0()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->j:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized g0()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->e:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->e:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->e:Ljava/io/File;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->a:Lcom/squareup/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->m0()V

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->l0()V

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->n:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/squareup/okhttp/internal/e;->f()Lcom/squareup/okhttp/internal/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->b:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", removing"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/e;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->T()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->o:Z

    :cond_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->p0()V

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->n:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized q0(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->g0()V

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->v()V

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->y0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/DiskLruCache$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->r0(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized u0()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->g0()V

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized v0()Ljava/util/Iterator;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache;->g0()V

    new-instance v0, Lcom/squareup/okhttp/internal/DiskLruCache$b;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/DiskLruCache$b;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
