.class public final Lak/w;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lak/w;

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lak/w;

    invoke-direct {v0}, Lak/w;-><init>()V

    sput-object v0, Lak/w;->a:Lak/w;

    const-wide/16 v0, -0x1

    sput-wide v0, Lak/w;->b:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private final c(J)J
    .locals 3

    invoke-direct {p0}, Lak/w;->a()J

    move-result-wide v0

    :goto_0
    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    invoke-direct {p0}, Lak/w;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized b()J
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lak/w;->a()J

    move-result-wide v0

    sget-wide v2, Lak/w;->b:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    sget-wide v7, Lak/w;->c:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    const-wide/16 v9, 0xfff

    and-long/2addr v7, v9

    sput-wide v7, Lak/w;->c:J

    cmp-long v4, v7, v5

    if-nez v4, :cond_1

    invoke-direct {p0, v2, v3}, Lak/w;->c(J)J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sput-wide v5, Lak/w;->c:J

    :cond_1
    :goto_0
    sput-wide v0, Lak/w;->b:J

    const-wide v2, 0x18cc251f400L

    sub-long/2addr v0, v2

    const/16 v2, 0x16

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    sget-wide v2, Lak/w;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7cfb\u7edf\u65f6\u949f\u56de\u62e8\uff0c\u62d2\u7edd\u751f\u6210 ID\uff08lastTimestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", now="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\uff09"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
