.class Lcom/mbridge/msdk/tracker/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/tracker/l;


# instance fields
.field private final a:Lcom/mbridge/msdk/tracker/c;

.field private final b:Lcom/mbridge/msdk/tracker/s;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:[J


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/tracker/c;Lcom/mbridge/msdk/tracker/s;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/g;->a:Lcom/mbridge/msdk/tracker/c;

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/g;->b:Lcom/mbridge/msdk/tracker/s;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/g;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x2

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/g;->d:[J

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/tracker/e;)V
    .locals 5

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/tracker/g;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/g;->d:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, p1, v4

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/g;->d:[J

    const/4 v2, 0x1

    aput-wide v0, p1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TrackManager"

    const-string v1, "notice error"

    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a()[J
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/g;->d:[J

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    :cond_0
    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public b(Lcom/mbridge/msdk/tracker/e;)V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/tracker/i;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/tracker/i;-><init>(Lcom/mbridge/msdk/tracker/e;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/i;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/i;->b(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/e;->f()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/tracker/i;->a(J)V

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/g;->a:Lcom/mbridge/msdk/tracker/c;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/tracker/c;->a(Lcom/mbridge/msdk/tracker/i;)J

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/g;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/s;->k()V

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/g;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/s;->e()V

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/g;->b:Lcom/mbridge/msdk/tracker/s;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/tracker/s;->a(Lcom/mbridge/msdk/tracker/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TrackManager"

    const-string v1, "process error"

    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
