.class public abstract Landroidx/media3/exoplayer/util/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/util/d$b;,
        Landroidx/media3/exoplayer/util/d$d;,
        Landroidx/media3/exoplayer/util/d$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static c:Z = false

.field private static d:J = 0x0L

.field private static e:Ljava/lang/String; = "time.android.com"

.field private static f:I = 0x3e8

.field private static g:J = -0x7fffffffffffffffL

.field private static h:J = -0x7fffffffffffffffL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/util/d;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/util/d;->b:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/util/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/util/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Landroidx/media3/exoplayer/util/d;->c:Z

    return v0
.end method

.method static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Landroidx/media3/exoplayer/util/d;->c:Z

    return p0
.end method

.method static synthetic e()J
    .locals 2

    invoke-static {}, Landroidx/media3/exoplayer/util/d;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(J)J
    .locals 0

    sput-wide p0, Landroidx/media3/exoplayer/util/d;->h:J

    return-wide p0
.end method

.method static synthetic g(J)J
    .locals 0

    sput-wide p0, Landroidx/media3/exoplayer/util/d;->d:J

    return-wide p0
.end method

.method private static h(BBIJ)V
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SNTP: Untrusted mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    const/16 p0, 0xf

    if-gt p2, p0, :cond_3

    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "SNTP: Zero transmitTime"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SNTP: Untrusted stratum: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "SNTP: Unsynchronized server"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i()J
    .locals 3

    sget-object v0, Landroidx/media3/exoplayer/util/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroidx/media3/exoplayer/util/d;->c:Z

    if-eqz v1, :cond_0

    sget-wide v1, Landroidx/media3/exoplayer/util/d;->d:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    monitor-exit v0

    return-wide v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/util/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/media3/exoplayer/util/d;->e:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static k()I
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/util/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/exoplayer/util/d;->f:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static l(Landroidx/media3/exoplayer/upstream/Loader;Landroidx/media3/exoplayer/util/d$b;)V
    .locals 2

    invoke-static {}, Landroidx/media3/exoplayer/util/d;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/exoplayer/util/d$b;->onInitialized()V

    :cond_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Landroidx/media3/exoplayer/upstream/Loader;

    const-string v0, "SntpClient"

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/util/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/util/d$d;-><init>(Landroidx/media3/exoplayer/util/d$a;)V

    new-instance v1, Landroidx/media3/exoplayer/util/d$c;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/util/d$c;-><init>(Landroidx/media3/exoplayer/util/d$b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/upstream/Loader;->m(Landroidx/media3/exoplayer/upstream/Loader$d;Landroidx/media3/exoplayer/upstream/Loader$b;I)J

    return-void
.end method

.method public static m()Z
    .locals 5

    sget-object v0, Landroidx/media3/exoplayer/util/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Landroidx/media3/exoplayer/util/d;->h:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    sget-wide v1, Landroidx/media3/exoplayer/util/d;->g:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Landroidx/media3/exoplayer/util/d;->h:J

    sub-long/2addr v1, v3

    sget-boolean v3, Landroidx/media3/exoplayer/util/d;->c:Z

    if-eqz v3, :cond_0

    sget-wide v3, Landroidx/media3/exoplayer/util/d;->g:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroidx/media3/exoplayer/util/d;->c:Z

    :cond_1
    sget-boolean v1, Landroidx/media3/exoplayer/util/d;->c:Z

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static n()J
    .locals 15

    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    :try_start_0
    invoke-static {}, Landroidx/media3/exoplayer/util/d;->k()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-static {}, Landroidx/media3/exoplayer/util/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v0, 0x0

    move-object v5, v0

    move v6, v4

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_1

    aget-object v0, v2, v6

    const/16 v8, 0x30

    new-array v9, v8, [B

    new-instance v10, Ljava/net/DatagramPacket;

    const/16 v11, 0x7b

    invoke-direct {v10, v9, v8, v0, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v0, 0x1b

    aput-byte v0, v9, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/16 v0, 0x28

    invoke-static {v9, v0, v11, v12}, Landroidx/media3/exoplayer/util/d;->q([BIJ)V

    invoke-virtual {v1, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v10, Ljava/net/DatagramPacket;

    invoke-direct {v10, v9, v8}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v10}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v5, v2, v13

    add-long/2addr v11, v5

    aget-byte v4, v9, v4

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    and-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    const/4 v6, 0x1

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x18

    invoke-static {v9, v7}, Landroidx/media3/exoplayer/util/d;->p([BI)J

    move-result-wide v7

    const/16 v10, 0x20

    invoke-static {v9, v10}, Landroidx/media3/exoplayer/util/d;->p([BI)J

    move-result-wide v13

    invoke-static {v9, v0}, Landroidx/media3/exoplayer/util/d;->p([BI)J

    move-result-wide v9

    invoke-static {v5, v4, v6, v9, v10}, Landroidx/media3/exoplayer/util/d;->h(BBIJ)V

    sub-long/2addr v13, v7

    sub-long/2addr v9, v11

    add-long/2addr v13, v9

    const-wide/16 v4, 0x2

    div-long/2addr v13, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-long/2addr v11, v13

    sub-long/2addr v11, v2

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    return-wide v11

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v8, v0

    if-nez v5, :cond_0

    move-object v5, v8

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v7, 0x1

    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    invoke-static {v5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketTimeoutException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
.end method

.method private static o([BI)J
    .locals 5

    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p1, v0, 0x80

    const/16 v3, 0x80

    if-ne p1, v3, :cond_0

    and-int/lit8 p1, v0, 0x7f

    add-int/lit16 v0, p1, 0x80

    :cond_0
    and-int/lit16 p1, v1, 0x80

    if-ne p1, v3, :cond_1

    and-int/lit8 p1, v1, 0x7f

    add-int/lit16 v1, p1, 0x80

    :cond_1
    and-int/lit16 p1, v2, 0x80

    if-ne p1, v3, :cond_2

    and-int/lit8 p1, v2, 0x7f

    add-int/lit16 v2, p1, 0x80

    :cond_2
    and-int/lit16 p1, p0, 0x80

    if-ne p1, v3, :cond_3

    and-int/lit8 p0, p0, 0x7f

    add-int/2addr p0, v3

    :cond_3
    int-to-long v3, v0

    const/16 p1, 0x18

    shl-long/2addr v3, p1

    int-to-long v0, v1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    int-to-long v0, v2

    const/16 p1, 0x8

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    int-to-long p0, p0

    add-long/2addr v3, p0

    return-wide v3
.end method

.method private static p([BI)J
    .locals 5

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/util/d;->o([BI)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/util/d;->o([BI)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    cmp-long v4, p0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr p0, v2

    const-wide v2, 0x100000000L

    div-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static q([BIJ)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    add-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    mul-long v4, v2, v0

    sub-long/2addr p2, v4

    const-wide v4, 0x83aa7e80L

    add-long/2addr v2, v4

    add-int/lit8 v4, p1, 0x1

    const/16 v5, 0x18

    shr-long v6, v2, v5

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p0, p1

    add-int/lit8 v6, p1, 0x2

    const/16 v7, 0x10

    shr-long v8, v2, v7

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, p0, v4

    add-int/lit8 v4, p1, 0x3

    const/16 v8, 0x8

    shr-long v9, v2, v8

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, p0, v6

    add-int/lit8 v6, p1, 0x4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v4

    const-wide v2, 0x100000000L

    mul-long/2addr p2, v2

    div-long/2addr p2, v0

    add-int/lit8 v0, p1, 0x5

    shr-long v1, p2, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v6

    add-int/lit8 v1, p1, 0x6

    shr-long v2, p2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 p1, p1, 0x7

    shr-long/2addr p2, v8

    long-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p0, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p2, v0

    double-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method
