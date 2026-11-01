.class public final Landroidx/media3/datasource/cache/SimpleCache;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/cache/Cache;


# static fields
.field private static final l:Ljava/util/HashSet;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Landroidx/media3/datasource/cache/b;

.field private final c:Landroidx/media3/datasource/cache/k;

.field private final d:Landroidx/media3/datasource/cache/d;

.field private final e:Ljava/util/HashMap;

.field private final f:Ljava/util/Random;

.field private final g:Z

.field private h:J

.field private i:J

.field private j:Z

.field private k:Landroidx/media3/datasource/cache/Cache$CacheException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/media3/datasource/cache/SimpleCache;->l:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Landroidx/media3/datasource/cache/b;Landroidx/media3/datasource/cache/k;Landroidx/media3/datasource/cache/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/datasource/cache/SimpleCache;->t(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    iput-object p2, p0, Landroidx/media3/datasource/cache/SimpleCache;->b:Landroidx/media3/datasource/cache/b;

    iput-object p3, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    iput-object p4, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/d;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->e:Ljava/util/HashMap;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->f:Ljava/util/Random;

    invoke-interface {p2}, Landroidx/media3/datasource/cache/b;->a()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->g:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->h:J

    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    new-instance p2, Landroidx/media3/datasource/cache/SimpleCache$1;

    const-string p3, "ExoPlayer:SimpleCacheInit"

    invoke-direct {p2, p0, p3, p1}, Landroidx/media3/datasource/cache/SimpleCache$1;-><init>(Landroidx/media3/datasource/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Another SimpleCache instance uses the folder: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/File;Landroidx/media3/datasource/cache/b;Lv1/a;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/datasource/cache/SimpleCache;-><init>(Ljava/io/File;Landroidx/media3/datasource/cache/b;Lv1/a;[BZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroidx/media3/datasource/cache/b;Lv1/a;[BZZ)V
    .locals 7

    new-instance v6, Landroidx/media3/datasource/cache/k;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/cache/k;-><init>(Lv1/a;Ljava/io/File;[BZZ)V

    if-eqz p3, :cond_0

    if-nez p6, :cond_0

    new-instance p4, Landroidx/media3/datasource/cache/d;

    invoke-direct {p4, p3}, Landroidx/media3/datasource/cache/d;-><init>(Lv1/a;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v6, p4}, Landroidx/media3/datasource/cache/SimpleCache;-><init>(Ljava/io/File;Landroidx/media3/datasource/cache/b;Landroidx/media3/datasource/cache/k;Landroidx/media3/datasource/cache/d;)V

    return-void
.end method

.method private A(Ljava/lang/String;Landroidx/media3/datasource/cache/s;)Landroidx/media3/datasource/cache/s;
    .locals 9

    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->g:Z

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p2, Landroidx/media3/datasource/cache/h;->e:Ljava/io/File;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p2, Landroidx/media3/datasource/cache/h;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/d;

    if-eqz v1, :cond_1

    move-wide v5, v7

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/datasource/cache/d;->h(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SimpleCache"

    const-string v1, "Failed to update index with new touch timestamp."

    invoke-static {v0, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {v1, p1}, Landroidx/media3/datasource/cache/k;->f(Ljava/lang/String;)Landroidx/media3/datasource/cache/j;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/cache/j;

    invoke-virtual {p1, p2, v7, v8, v0}, Landroidx/media3/datasource/cache/j;->l(Landroidx/media3/datasource/cache/s;JZ)Landroidx/media3/datasource/cache/s;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroidx/media3/datasource/cache/SimpleCache;->w(Landroidx/media3/datasource/cache/s;Landroidx/media3/datasource/cache/h;)V

    return-object p1
.end method

.method static synthetic i(Landroidx/media3/datasource/cache/SimpleCache;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/datasource/cache/SimpleCache;->q()V

    return-void
.end method

.method static synthetic j(Landroidx/media3/datasource/cache/SimpleCache;)Landroidx/media3/datasource/cache/b;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/SimpleCache;->b:Landroidx/media3/datasource/cache/b;

    return-object p0
.end method

.method private k(Landroidx/media3/datasource/cache/s;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    iget-object v1, p1, Landroidx/media3/datasource/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/cache/k;->k(Ljava/lang/String;)Landroidx/media3/datasource/cache/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/cache/j;->a(Landroidx/media3/datasource/cache/s;)V

    iget-wide v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->i:J

    iget-wide v2, p1, Landroidx/media3/datasource/cache/h;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->i:J

    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/SimpleCache;->u(Landroidx/media3/datasource/cache/s;)V

    return-void
.end method

.method private static m(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create cache directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimpleCache"

    invoke-static {v0, p0}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {v0, p0}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static n(Ljava/io/File;)J
    .locals 5

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".uid"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create UID file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private p(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/s;
    .locals 5

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/cache/k;->f(Ljava/lang/String;)Landroidx/media3/datasource/cache/j;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/media3/datasource/cache/s;->h(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/s;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/media3/datasource/cache/j;->e(JJ)Landroidx/media3/datasource/cache/s;

    move-result-object p1

    iget-boolean v1, p1, Landroidx/media3/datasource/cache/h;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/media3/datasource/cache/h;->e:Ljava/io/File;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v3, p1, Landroidx/media3/datasource/cache/h;->c:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/media3/datasource/cache/SimpleCache;->z()V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private q()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-static {v0}, Landroidx/media3/datasource/cache/SimpleCache;->m(Ljava/io/File;)V
    :try_end_0
    .catch Landroidx/media3/datasource/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->k:Landroidx/media3/datasource/cache/Cache$CacheException;

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "SimpleCache"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to list cache directory files: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {v1, v0}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->k:Landroidx/media3/datasource/cache/Cache$CacheException;

    return-void

    :cond_1
    invoke-static {v0}, Landroidx/media3/datasource/cache/SimpleCache;->s([Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->h:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :try_start_1
    iget-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-static {v2}, Landroidx/media3/datasource/cache/SimpleCache;->n(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->h:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create cache UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {v1, v2, v0}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->k:Landroidx/media3/datasource/cache/Cache$CacheException;

    return-void

    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    iget-wide v3, p0, Landroidx/media3/datasource/cache/SimpleCache;->h:J

    invoke-virtual {v2, v3, v4}, Landroidx/media3/datasource/cache/k;->l(J)V

    iget-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/d;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-wide v4, p0, Landroidx/media3/datasource/cache/SimpleCache;->h:J

    invoke-virtual {v2, v4, v5}, Landroidx/media3/datasource/cache/d;->e(J)V

    iget-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/d;

    invoke-virtual {v2}, Landroidx/media3/datasource/cache/d;->b()Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-direct {p0, v4, v3, v0, v2}, Landroidx/media3/datasource/cache/SimpleCache;->r(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/d;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/datasource/cache/d;->g(Ljava/util/Set;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_3
    iget-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Landroidx/media3/datasource/cache/SimpleCache;->r(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/k;->p()V

    :try_start_3
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/k;->q()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v2, "Storing index file failed"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize cache indices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {v1, v2, v0}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->k:Landroidx/media3/datasource/cache/Cache$CacheException;

    return-void
.end method

.method private r(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 9

    if-eqz p3, :cond_8

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_7

    aget-object v8, p3, v1

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v8, v0, v2, p4}, Landroidx/media3/datasource/cache/SimpleCache;->r(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    goto :goto_3

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v2}, Landroidx/media3/datasource/cache/k;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/c;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    iget-wide v3, v2, Landroidx/media3/datasource/cache/c;->a:J

    iget-wide v5, v2, Landroidx/media3/datasource/cache/c;->b:J

    goto :goto_2

    :cond_4
    const-wide/16 v2, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v4

    move-wide v3, v2

    :goto_2
    iget-object v7, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Landroidx/media3/datasource/cache/s;->f(Ljava/io/File;JJLandroidx/media3/datasource/cache/k;)Landroidx/media3/datasource/cache/s;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Landroidx/media3/datasource/cache/SimpleCache;->k(Landroidx/media3/datasource/cache/s;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_4
    if-nez p2, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    return-void
.end method

.method private static s([Ljava/io/File;)J
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".uid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v3}, Landroidx/media3/datasource/cache/SimpleCache;->x(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed UID file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimpleCache"

    invoke-static {v4, v3}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static declared-synchronized t(Ljava/io/File;)Z
    .locals 2

    const-class v0, Landroidx/media3/datasource/cache/SimpleCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/media3/datasource/cache/SimpleCache;->l:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private u(Landroidx/media3/datasource/cache/s;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->e:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/media3/datasource/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/Cache$a;

    invoke-interface {v2, p0, p1}, Landroidx/media3/datasource/cache/Cache$a;->c(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/h;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->b:Landroidx/media3/datasource/cache/b;

    invoke-interface {v0, p0, p1}, Landroidx/media3/datasource/cache/Cache$a;->c(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/h;)V

    return-void
.end method

.method private v(Landroidx/media3/datasource/cache/h;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->e:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/media3/datasource/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/Cache$a;

    invoke-interface {v2, p0, p1}, Landroidx/media3/datasource/cache/Cache$a;->e(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/h;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->b:Landroidx/media3/datasource/cache/b;

    invoke-interface {v0, p0, p1}, Landroidx/media3/datasource/cache/Cache$a;->e(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/h;)V

    return-void
.end method

.method private w(Landroidx/media3/datasource/cache/s;Landroidx/media3/datasource/cache/h;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->e:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/media3/datasource/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/Cache$a;

    invoke-interface {v2, p0, p1, p2}, Landroidx/media3/datasource/cache/Cache$a;->b(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/h;Landroidx/media3/datasource/cache/h;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->b:Landroidx/media3/datasource/cache/b;

    invoke-interface {v0, p0, p1, p2}, Landroidx/media3/datasource/cache/Cache$a;->b(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/h;Landroidx/media3/datasource/cache/h;)V

    return-void
.end method

.method private static x(Ljava/lang/String;)J
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private y(Landroidx/media3/datasource/cache/h;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    iget-object v1, p1, Landroidx/media3/datasource/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/cache/k;->f(Ljava/lang/String;)Landroidx/media3/datasource/cache/j;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/cache/j;->k(Landroidx/media3/datasource/cache/h;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->i:J

    iget-wide v3, p1, Landroidx/media3/datasource/cache/h;->c:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->i:J

    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/d;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/media3/datasource/cache/h;->e:Ljava/io/File;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/d;

    invoke-virtual {v2, v1}, Landroidx/media3/datasource/cache/d;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove file index entry for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimpleCache"

    invoke-static {v2, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    iget-object v0, v0, Landroidx/media3/datasource/cache/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/media3/datasource/cache/k;->n(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/SimpleCache;->v(Landroidx/media3/datasource/cache/h;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private z()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {v1}, Landroidx/media3/datasource/cache/k;->g()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/j;

    invoke-virtual {v2}, Landroidx/media3/datasource/cache/j;->f()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/datasource/cache/h;

    iget-object v4, v3, Landroidx/media3/datasource/cache/h;->e:Ljava/io/File;

    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, v3, Landroidx/media3/datasource/cache/h;->c:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/h;

    invoke-direct {p0, v2}, Landroidx/media3/datasource/cache/SimpleCache;->y(Landroidx/media3/datasource/cache/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;JJ)J
    .locals 15

    monitor-enter p0

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    add-long v3, p2, p4

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    move-wide/from16 v3, p2

    move-wide v13, v5

    :goto_2
    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    sub-long v11, v1, v3

    move-object v7, p0

    move-object/from16 v8, p1

    move-wide v9, v3

    :try_start_0
    invoke-virtual/range {v7 .. v12}, Landroidx/media3/datasource/cache/SimpleCache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-lez v0, :cond_2

    add-long/2addr v13, v7

    goto :goto_3

    :cond_2
    neg-long v7, v7

    :goto_3
    add-long/2addr v3, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    monitor-exit p0

    return-wide v13
.end method

.method public declared-synchronized b(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/h;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p0}, Landroidx/media3/datasource/cache/SimpleCache;->l()V

    invoke-direct/range {p0 .. p5}, Landroidx/media3/datasource/cache/SimpleCache;->p(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/s;

    move-result-object p4

    iget-boolean p5, p4, Landroidx/media3/datasource/cache/h;->d:Z

    if-eqz p5, :cond_0

    invoke-direct {p0, p1, p4}, Landroidx/media3/datasource/cache/SimpleCache;->A(Ljava/lang/String;Landroidx/media3/datasource/cache/s;)Landroidx/media3/datasource/cache/s;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p5, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {p5, p1}, Landroidx/media3/datasource/cache/k;->k(Ljava/lang/String;)Landroidx/media3/datasource/cache/j;

    move-result-object p1

    iget-wide v0, p4, Landroidx/media3/datasource/cache/h;->c:J

    invoke-virtual {p1, p2, p3, v0, v1}, Landroidx/media3/datasource/cache/j;->j(JJ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-object p4

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p0}, Landroidx/media3/datasource/cache/SimpleCache;->l()V

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/datasource/cache/SimpleCache;->b(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/h;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized d(Ljava/io/File;J)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-static {p1, p2, p3, v0}, Landroidx/media3/datasource/cache/s;->g(Ljava/io/File;JLandroidx/media3/datasource/cache/k;)Landroidx/media3/datasource/cache/s;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/datasource/cache/s;

    iget-object p3, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    iget-object v0, p2, Landroidx/media3/datasource/cache/h;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroidx/media3/datasource/cache/k;->f(Ljava/lang/String;)Landroidx/media3/datasource/cache/j;

    move-result-object p3

    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/datasource/cache/j;

    iget-wide v3, p2, Landroidx/media3/datasource/cache/h;->b:J

    iget-wide v5, p2, Landroidx/media3/datasource/cache/h;->c:J

    invoke-virtual {p3, v3, v4, v5, v6}, Landroidx/media3/datasource/cache/j;->h(JJ)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p3}, Landroidx/media3/datasource/cache/j;->d()Landroidx/media3/datasource/cache/o;

    move-result-object p3

    invoke-static {p3}, Landroidx/media3/datasource/cache/l;->a(Landroidx/media3/datasource/cache/m;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p3, v3, v5

    if-eqz p3, :cond_3

    iget-wide v5, p2, Landroidx/media3/datasource/cache/h;->b:J

    iget-wide v7, p2, Landroidx/media3/datasource/cache/h;->c:J

    add-long/2addr v5, v7

    cmp-long p3, v5, v3

    if-gtz p3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    :cond_3
    iget-object p3, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/d;

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/d;

    iget-wide v2, p2, Landroidx/media3/datasource/cache/h;->c:J

    iget-wide v4, p2, Landroidx/media3/datasource/cache/h;->f:J

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/datasource/cache/d;->h(Ljava/lang/String;JJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    new-instance p2, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Landroidx/media3/datasource/cache/SimpleCache;->k(Landroidx/media3/datasource/cache/s;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {p1}, Landroidx/media3/datasource/cache/k;->q()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    :try_start_7
    new-instance p2, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/cache/SimpleCache;->o(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/h;

    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/SimpleCache;->y(Landroidx/media3/datasource/cache/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized f(Landroidx/media3/datasource/cache/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/SimpleCache;->y(Landroidx/media3/datasource/cache/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized g(Landroidx/media3/datasource/cache/h;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    iget-object v1, p1, Landroidx/media3/datasource/cache/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/cache/k;->f(Ljava/lang/String;)Landroidx/media3/datasource/cache/j;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/j;

    iget-wide v1, p1, Landroidx/media3/datasource/cache/h;->b:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/datasource/cache/j;->m(J)V

    iget-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    iget-object v0, v0, Landroidx/media3/datasource/cache/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/datasource/cache/k;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getCachedLength(Ljava/lang/String;JJ)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    const-wide p4, 0x7fffffffffffffffL

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/cache/k;->f(Ljava/lang/String;)Landroidx/media3/datasource/cache/j;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/media3/datasource/cache/j;->c(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    neg-long p1, p4

    :goto_0
    monitor-exit p0

    return-wide p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/m;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/cache/k;->h(Ljava/lang/String;)Landroidx/media3/datasource/cache/m;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized h(Ljava/lang/String;Landroidx/media3/datasource/cache/n;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p0}, Landroidx/media3/datasource/cache/SimpleCache;->l()V

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/datasource/cache/k;->d(Ljava/lang/String;Landroidx/media3/datasource/cache/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {p1}, Landroidx/media3/datasource/cache/k;->q()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->k:Landroidx/media3/datasource/cache/Cache$CacheException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized o(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/cache/k;->f(Ljava/lang/String;)Landroidx/media3/datasource/cache/j;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/media3/datasource/cache/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroidx/media3/datasource/cache/j;->f()Ljava/util/TreeSet;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p0}, Landroidx/media3/datasource/cache/SimpleCache;->l()V

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/k;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/cache/k;->f(Ljava/lang/String;)Landroidx/media3/datasource/cache/j;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/media3/datasource/cache/j;->h(JJ)Z

    move-result v1

    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-static {v1}, Landroidx/media3/datasource/cache/SimpleCache;->m(Ljava/io/File;)V

    invoke-direct {p0}, Landroidx/media3/datasource/cache/SimpleCache;->z()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->b:Landroidx/media3/datasource/cache/b;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Landroidx/media3/datasource/cache/b;->d(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;JJ)V

    new-instance v2, Ljava/io/File;

    iget-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    iget-object p4, p0, Landroidx/media3/datasource/cache/SimpleCache;->f:Ljava/util/Random;

    const/16 p5, 0xa

    invoke-virtual {p4, p5}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v2}, Landroidx/media3/datasource/cache/SimpleCache;->m(Ljava/io/File;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v3, v0, Landroidx/media3/datasource/cache/j;->a:I

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Landroidx/media3/datasource/cache/s;->j(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
