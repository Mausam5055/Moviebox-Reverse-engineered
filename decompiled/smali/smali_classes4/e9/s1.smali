.class public final Le9/s1;
.super Ljava/lang/Object;

# interfaces
.implements Le9/c;
.implements Le9/t1$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le9/s1$b;,
        Le9/s1$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private final a:Landroid/content/Context;

.field private final b:Le9/t1;

.field private final c:Landroid/media/metrics/PlaybackSession;

.field private final d:J

.field private final e:Lcom/google/android/exoplayer2/k3$d;

.field private final f:Lcom/google/android/exoplayer2/k3$b;

.field private final g:Ljava/util/HashMap;

.field private final h:Ljava/util/HashMap;

.field private i:Ljava/lang/String;

.field private j:Landroid/media/metrics/PlaybackMetrics$Builder;

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/google/android/exoplayer2/PlaybackException;

.field private o:Le9/s1$b;

.field private p:Le9/s1$b;

.field private q:Le9/s1$b;

.field private r:Lcom/google/android/exoplayer2/o1;

.field private s:Lcom/google/android/exoplayer2/o1;

.field private t:Lcom/google/android/exoplayer2/o1;

.field private u:Z

.field private v:I

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le9/s1;->a:Landroid/content/Context;

    iput-object p2, p0, Le9/s1;->c:Landroid/media/metrics/PlaybackSession;

    new-instance p1, Lcom/google/android/exoplayer2/k3$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/k3$d;-><init>()V

    iput-object p1, p0, Le9/s1;->e:Lcom/google/android/exoplayer2/k3$d;

    new-instance p1, Lcom/google/android/exoplayer2/k3$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/k3$b;-><init>()V

    iput-object p1, p0, Le9/s1;->f:Lcom/google/android/exoplayer2/k3$b;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le9/s1;->h:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le9/s1;->g:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Le9/s1;->d:J

    const/4 p1, 0x0

    iput p1, p0, Le9/s1;->l:I

    iput p1, p0, Le9/s1;->m:I

    new-instance p1, Le9/r1;

    invoke-direct {p1}, Le9/r1;-><init>()V

    iput-object p1, p0, Le9/s1;->b:Le9/t1;

    invoke-interface {p1, p0}, Le9/t1;->g(Le9/t1$a;)V

    return-void
.end method

.method private A0(Le9/s1$b;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Le9/s1$b;->c:Ljava/lang/String;

    iget-object v0, p0, Le9/s1;->b:Le9/t1;

    invoke-interface {v0}, Le9/t1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static B0(Landroid/content/Context;)Le9/s1;
    .locals 2

    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ly1/r3;->a(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Le9/s1;

    invoke-static {v0}, Ly1/s3;->a(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Le9/s1;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method private C0()V
    .locals 7

    iget-object v0, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Le9/s1;->A:Z

    if-eqz v2, :cond_3

    iget v2, p0, Le9/s1;->z:I

    invoke-static {v0, v2}, Ly1/w2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Le9/s1;->x:I

    invoke-static {v0, v2}, Ly1/x2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Le9/s1;->y:I

    invoke-static {v0, v2}, Ly1/y2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Le9/s1;->g:Ljava/util/HashMap;

    iget-object v2, p0, Le9/s1;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-static {v2, v5, v6}, Ly1/z2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Le9/s1;->h:Ljava/util/HashMap;

    iget-object v2, p0, Le9/s1;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-static {v2, v5, v6}, Ly1/a3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v2, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v2, v0}, Ly1/b3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Le9/s1;->c:Landroid/media/metrics/PlaybackSession;

    iget-object v2, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v2}, Ly1/d3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Ly1/l3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Le9/s1;->i:Ljava/lang/String;

    iput v1, p0, Le9/s1;->z:I

    iput v1, p0, Le9/s1;->x:I

    iput v1, p0, Le9/s1;->y:I

    iput-object v0, p0, Le9/s1;->r:Lcom/google/android/exoplayer2/o1;

    iput-object v0, p0, Le9/s1;->s:Lcom/google/android/exoplayer2/o1;

    iput-object v0, p0, Le9/s1;->t:Lcom/google/android/exoplayer2/o1;

    iput-boolean v1, p0, Le9/s1;->A:Z

    return-void
.end method

.method private static D0(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/p0;->V(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x1b

    return p0

    :pswitch_0
    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x19

    return p0

    :pswitch_2
    const/16 p0, 0x1c

    return p0

    :pswitch_3
    const/16 p0, 0x18

    return p0

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static E0(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/r4;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/p3$a;

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/p3$a;->a:I

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p3$a;->e(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p3$a;->b(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/o1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static F0(Lcom/google/android/exoplayer2/drm/DrmInitData;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    sget-object v2, Lcom/google/android/exoplayer2/l;->d:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/l;->e:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/l;->c:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static G0(Lcom/google/android/exoplayer2/PlaybackException;Landroid/content/Context;Z)Le9/s1$a;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance p0, Le9/s1$a;

    const/16 p1, 0x14

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    goto :goto_1

    :cond_2
    move v0, v2

    move v3, v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    instance-of v5, v4, Ljava/io/IOException;

    const/4 v6, 0x3

    const/16 v7, 0x12

    const/16 v8, 0x17

    if-eqz v5, :cond_17

    instance-of v0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v0, :cond_3

    check-cast v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget p0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    new-instance p1, Le9/s1$a;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Le9/s1$a;-><init>(II)V

    return-object p1

    :cond_3
    instance-of v0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    if-nez v0, :cond_15

    instance-of v0, v4, Lcom/google/android/exoplayer2/ParserException;

    if-eqz v0, :cond_4

    goto/16 :goto_3

    :cond_4
    instance-of p2, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-nez p2, :cond_10

    instance-of v0, v4, Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    if-eqz v0, :cond_5

    goto/16 :goto_2

    :cond_5
    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 p1, 0x3ea

    const/16 p2, 0x15

    if-ne p0, p1, :cond_6

    new-instance p0, Le9/s1$a;

    invoke-direct {p0, p2, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_6
    instance-of p0, v4, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    if-eqz p0, :cond_d

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    sget p1, Lcom/google/android/exoplayer2/util/p0;->a:I

    if-lt p1, p2, :cond_7

    instance-of p2, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz p2, :cond_7

    check-cast p0, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {p0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/p0;->W(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Le9/s1;->D0(I)I

    move-result p1

    new-instance p2, Le9/s1$a;

    invoke-direct {p2, p1, p0}, Le9/s1$a;-><init>(II)V

    return-object p2

    :cond_7
    if-lt p1, v8, :cond_8

    instance-of p2, p0, Landroid/media/MediaDrmResetException;

    if-eqz p2, :cond_8

    new-instance p0, Le9/s1$a;

    const/16 p1, 0x1b

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_8
    if-lt p1, v7, :cond_9

    instance-of p2, p0, Landroid/media/NotProvisionedException;

    if-eqz p2, :cond_9

    new-instance p0, Le9/s1$a;

    const/16 p1, 0x18

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_9
    if-lt p1, v7, :cond_a

    instance-of p1, p0, Landroid/media/DeniedByServerException;

    if-eqz p1, :cond_a

    new-instance p0, Le9/s1$a;

    const/16 p1, 0x1d

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_a
    instance-of p1, p0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    if-eqz p1, :cond_b

    new-instance p0, Le9/s1$a;

    invoke-direct {p0, v8, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_b
    instance-of p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz p0, :cond_c

    new-instance p0, Le9/s1$a;

    const/16 p1, 0x1c

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_c
    new-instance p0, Le9/s1$a;

    const/16 p1, 0x1e

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_d
    instance-of p0, v4, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    if-eqz p0, :cond_f

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_f

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    sget p1, Lcom/google/android/exoplayer2/util/p0;->a:I

    if-lt p1, p2, :cond_e

    instance-of p1, p0, Landroid/system/ErrnoException;

    if-eqz p1, :cond_e

    check-cast p0, Landroid/system/ErrnoException;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    sget p1, Landroid/system/OsConstants;->EACCES:I

    if-ne p0, p1, :cond_e

    new-instance p0, Le9/s1$a;

    const/16 p1, 0x20

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_e
    new-instance p0, Le9/s1$a;

    const/16 p1, 0x1f

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_f
    new-instance p0, Le9/s1$a;

    const/16 p1, 0x9

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_10
    :goto_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z;->d(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/z;->f()I

    move-result p0

    if-ne p0, v1, :cond_11

    new-instance p0, Le9/s1$a;

    invoke-direct {p0, v6, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_12

    new-instance p0, Le9/s1$a;

    const/4 p1, 0x6

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_12
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_13

    new-instance p0, Le9/s1$a;

    const/4 p1, 0x7

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_13
    if-eqz p2, :cond_14

    check-cast v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget p0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    if-ne p0, v1, :cond_14

    new-instance p0, Le9/s1$a;

    const/4 p1, 0x4

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_14
    new-instance p0, Le9/s1$a;

    const/16 p1, 0x8

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_15
    :goto_3
    new-instance p0, Le9/s1$a;

    if-eqz p2, :cond_16

    const/16 p1, 0xa

    goto :goto_4

    :cond_16
    const/16 p1, 0xb

    :goto_4
    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_17
    if-eqz v3, :cond_19

    if-eqz v0, :cond_18

    if-ne v0, v1, :cond_19

    :cond_18
    new-instance p0, Le9/s1$a;

    const/16 p1, 0x23

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_19
    if-eqz v3, :cond_1a

    if-ne v0, v6, :cond_1a

    new-instance p0, Le9/s1$a;

    const/16 p1, 0xf

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_1a
    if-eqz v3, :cond_1b

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1b

    new-instance p0, Le9/s1$a;

    invoke-direct {p0, v8, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_1b
    instance-of p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz p0, :cond_1c

    check-cast v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/p0;->W(Ljava/lang/String;)I

    move-result p0

    new-instance p1, Le9/s1$a;

    const/16 p2, 0xd

    invoke-direct {p1, p2, p0}, Le9/s1$a;-><init>(II)V

    return-object p1

    :cond_1c
    instance-of p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    const/16 p1, 0xe

    if-eqz p0, :cond_1d

    check-cast v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    iget-object p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;->diagnosticInfo:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/p0;->W(Ljava/lang/String;)I

    move-result p0

    new-instance p2, Le9/s1$a;

    invoke-direct {p2, p1, p0}, Le9/s1$a;-><init>(II)V

    return-object p2

    :cond_1d
    instance-of p0, v4, Ljava/lang/OutOfMemoryError;

    if-eqz p0, :cond_1e

    new-instance p0, Le9/s1$a;

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0

    :cond_1e
    instance-of p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    if-eqz p0, :cond_1f

    check-cast v4, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    iget p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->audioTrackState:I

    new-instance p1, Le9/s1$a;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, Le9/s1$a;-><init>(II)V

    return-object p1

    :cond_1f
    instance-of p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    if-eqz p0, :cond_20

    check-cast v4, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    iget p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->errorCode:I

    new-instance p1, Le9/s1$a;

    invoke-direct {p1, v7, p0}, Le9/s1$a;-><init>(II)V

    return-object p1

    :cond_20
    sget p0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 p1, 0x10

    if-lt p0, p1, :cond_21

    instance-of p0, v4, Landroid/media/MediaCodec$CryptoException;

    if-eqz p0, :cond_21

    check-cast v4, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v4}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Le9/s1;->D0(I)I

    move-result p1

    new-instance p2, Le9/s1$a;

    invoke-direct {p2, p1, p0}, Le9/s1$a;-><init>(II)V

    return-object p2

    :cond_21
    new-instance p0, Le9/s1$a;

    const/16 p1, 0x16

    invoke-direct {p0, p1, v2}, Le9/s1$a;-><init>(II)V

    return-object p0
.end method

.method private static H0(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3

    const-string v0, "-"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/p0;->S0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static J0(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/z;->d(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/z;->f()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :pswitch_9
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static K0(Lcom/google/android/exoplayer2/v1;)I
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/v1$h;->a:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/exoplayer2/v1$h;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/p0;->q0(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0
.end method

.method private static L0(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private M0(Le9/c$b;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Le9/c$b;->d()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Le9/c$b;->b(I)I

    move-result v1

    invoke-virtual {p1, v1}, Le9/c$b;->c(I)Le9/c$a;

    move-result-object v2

    if-nez v1, :cond_0

    iget-object v1, p0, Le9/s1;->b:Le9/t1;

    invoke-interface {v1, v2}, Le9/t1;->d(Le9/c$a;)V

    goto :goto_1

    :cond_0
    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Le9/s1;->b:Le9/t1;

    iget v3, p0, Le9/s1;->k:I

    invoke-interface {v1, v2, v3}, Le9/t1;->c(Le9/c$a;I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Le9/s1;->b:Le9/t1;

    invoke-interface {v1, v2}, Le9/t1;->b(Le9/c$a;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private N0(J)V
    .locals 4

    iget-object v0, p0, Le9/s1;->a:Landroid/content/Context;

    invoke-static {v0}, Le9/s1;->J0(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Le9/s1;->m:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Le9/s1;->m:I

    iget-object v1, p0, Le9/s1;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Ly1/g2;->a()Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v2

    invoke-static {v2, v0}, Ly1/j2;->a(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v0

    iget-wide v2, p0, Le9/s1;->d:J

    sub-long/2addr p1, v2

    invoke-static {v0, p1, p2}, Ly1/k2;->a(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object p1

    invoke-static {p1}, Ly1/l2;->a(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    move-result-object p1

    invoke-static {v1, p1}, Ly1/i3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    :cond_0
    return-void
.end method

.method private O0(J)V
    .locals 7

    iget-object v0, p0, Le9/s1;->n:Lcom/google/android/exoplayer2/PlaybackException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Le9/s1;->a:Landroid/content/Context;

    iget v2, p0, Le9/s1;->v:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Le9/s1;->G0(Lcom/google/android/exoplayer2/PlaybackException;Landroid/content/Context;Z)Le9/s1$a;

    move-result-object v1

    iget-object v2, p0, Le9/s1;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Ly1/c3;->a()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v3

    iget-wide v5, p0, Le9/s1;->d:J

    sub-long/2addr p1, v5

    invoke-static {v3, p1, p2}, Ly1/q2;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    iget p2, v1, Le9/s1$a;->a:I

    invoke-static {p1, p2}, Ly1/s2;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    iget p2, v1, Le9/s1$a;->b:I

    invoke-static {p1, p2}, Ly1/t2;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    invoke-static {p1, v0}, Ly1/u2;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    invoke-static {p1}, Ly1/v2;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object p1

    invoke-static {v2, p1}, Ly1/j3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    iput-boolean v4, p0, Le9/s1;->A:Z

    const/4 p1, 0x0

    iput-object p1, p0, Le9/s1;->n:Lcom/google/android/exoplayer2/PlaybackException;

    return-void
.end method

.method private P0(Lcom/google/android/exoplayer2/o2;Le9/c$b;J)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iput-boolean v2, p0, Le9/s1;->u:Z

    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->c()Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Le9/s1;->w:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Le9/c$b;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iput-boolean v1, p0, Le9/s1;->w:Z

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Le9/s1;->X0(Lcom/google/android/exoplayer2/o2;)I

    move-result p1

    iget p2, p0, Le9/s1;->l:I

    if-eq p2, p1, :cond_3

    iput p1, p0, Le9/s1;->l:I

    iput-boolean v1, p0, Le9/s1;->A:Z

    iget-object p1, p0, Le9/s1;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Ly1/n3;->a()Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object p2

    iget v0, p0, Le9/s1;->l:I

    invoke-static {p2, v0}, Ly1/e3;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object p2

    iget-wide v0, p0, Le9/s1;->d:J

    sub-long/2addr p3, v0

    invoke-static {p2, p3, p4}, Ly1/f3;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object p2

    invoke-static {p2}, Ly1/g3;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    move-result-object p2

    invoke-static {p1, p2}, Ly1/k3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_3
    return-void
.end method

.method private Q0(Lcom/google/android/exoplayer2/o2;Le9/c$b;J)V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Le9/c$b;->a(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getCurrentTracks()Lcom/google/android/exoplayer2/p3;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/p3;->c(I)Z

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/p3;->c(I)Z

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/p3;->c(I)Z

    move-result p1

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    invoke-direct {p0, p3, p4, v1, v2}, Le9/s1;->V0(JLcom/google/android/exoplayer2/o1;I)V

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, p3, p4, v1, v2}, Le9/s1;->R0(JLcom/google/android/exoplayer2/o1;I)V

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0, p3, p4, v1, v2}, Le9/s1;->T0(JLcom/google/android/exoplayer2/o1;I)V

    :cond_3
    iget-object p1, p0, Le9/s1;->o:Le9/s1$b;

    invoke-direct {p0, p1}, Le9/s1;->A0(Le9/s1$b;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le9/s1;->o:Le9/s1$b;

    iget-object p2, p1, Le9/s1$b;->a:Lcom/google/android/exoplayer2/o1;

    iget v0, p2, Lcom/google/android/exoplayer2/o1;->r:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget p1, p1, Le9/s1$b;->b:I

    invoke-direct {p0, p3, p4, p2, p1}, Le9/s1;->V0(JLcom/google/android/exoplayer2/o1;I)V

    iput-object v1, p0, Le9/s1;->o:Le9/s1$b;

    :cond_4
    iget-object p1, p0, Le9/s1;->p:Le9/s1$b;

    invoke-direct {p0, p1}, Le9/s1;->A0(Le9/s1$b;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le9/s1;->p:Le9/s1$b;

    iget-object p2, p1, Le9/s1$b;->a:Lcom/google/android/exoplayer2/o1;

    iget p1, p1, Le9/s1$b;->b:I

    invoke-direct {p0, p3, p4, p2, p1}, Le9/s1;->R0(JLcom/google/android/exoplayer2/o1;I)V

    iput-object v1, p0, Le9/s1;->p:Le9/s1$b;

    :cond_5
    iget-object p1, p0, Le9/s1;->q:Le9/s1$b;

    invoke-direct {p0, p1}, Le9/s1;->A0(Le9/s1$b;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Le9/s1;->q:Le9/s1$b;

    iget-object p2, p1, Le9/s1$b;->a:Lcom/google/android/exoplayer2/o1;

    iget p1, p1, Le9/s1$b;->b:I

    invoke-direct {p0, p3, p4, p2, p1}, Le9/s1;->T0(JLcom/google/android/exoplayer2/o1;I)V

    iput-object v1, p0, Le9/s1;->q:Le9/s1$b;

    :cond_6
    return-void
.end method

.method private R0(JLcom/google/android/exoplayer2/o1;I)V
    .locals 6

    iget-object v0, p0, Le9/s1;->s:Lcom/google/android/exoplayer2/o1;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le9/s1;->s:Lcom/google/android/exoplayer2/o1;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v5, p4

    iput-object p3, p0, Le9/s1;->s:Lcom/google/android/exoplayer2/o1;

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Le9/s1;->W0(IJLcom/google/android/exoplayer2/o1;I)V

    return-void
.end method

.method private S0(Lcom/google/android/exoplayer2/o2;Le9/c$b;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Le9/c$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Le9/c$b;->c(I)Le9/c$a;

    move-result-object v0

    iget-object v1, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v1, :cond_0

    iget-object v1, v0, Le9/c$a;->b:Lcom/google/android/exoplayer2/k3;

    iget-object v0, v0, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    invoke-direct {p0, v1, v0}, Le9/s1;->U0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Le9/c$b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getCurrentTracks()Lcom/google/android/exoplayer2/p3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p3;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Le9/s1;->E0(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ly1/m2;->a(Ljava/lang/Object;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v0

    invoke-static {p1}, Le9/s1;->F0(Lcom/google/android/exoplayer2/drm/DrmInitData;)I

    move-result p1

    invoke-static {v0, p1}, Ly1/n2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_1
    const/16 p1, 0x3f3

    invoke-virtual {p2, p1}, Le9/c$b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Le9/s1;->z:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le9/s1;->z:I

    :cond_2
    return-void
.end method

.method private T0(JLcom/google/android/exoplayer2/o1;I)V
    .locals 6

    iget-object v0, p0, Le9/s1;->t:Lcom/google/android/exoplayer2/o1;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le9/s1;->t:Lcom/google/android/exoplayer2/o1;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v5, p4

    iput-object p3, p0, Le9/s1;->t:Lcom/google/android/exoplayer2/o1;

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Le9/s1;->W0(IJLcom/google/android/exoplayer2/o1;I)V

    return-void
.end method

.method private U0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;)V
    .locals 5

    iget-object v0, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Le9/s1;->f:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/exoplayer2/k3;->j(ILcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    iget-object p2, p0, Le9/s1;->f:Lcom/google/android/exoplayer2/k3$b;

    iget p2, p2, Lcom/google/android/exoplayer2/k3$b;->c:I

    iget-object v1, p0, Le9/s1;->e:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    iget-object p1, p0, Le9/s1;->e:Lcom/google/android/exoplayer2/k3$d;

    iget-object p1, p1, Lcom/google/android/exoplayer2/k3$d;->c:Lcom/google/android/exoplayer2/v1;

    invoke-static {p1}, Le9/s1;->K0(Lcom/google/android/exoplayer2/v1;)I

    move-result p1

    invoke-static {v0, p1}, Ly1/m3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p1, p0, Le9/s1;->e:Lcom/google/android/exoplayer2/k3$d;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/k3$d;->n:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_2

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/k3$d;->l:Z

    if-nez p2, :cond_2

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/k3$d;->i:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3$d;->i()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Le9/s1;->e:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3$d;->g()J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Ly1/o3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_2
    iget-object p1, p0, Le9/s1;->e:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3$d;->i()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    move p1, p2

    :goto_0
    invoke-static {v0, p1}, Ly1/p3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-boolean p2, p0, Le9/s1;->A:Z

    return-void
.end method

.method private V0(JLcom/google/android/exoplayer2/o1;I)V
    .locals 6

    iget-object v0, p0, Le9/s1;->r:Lcom/google/android/exoplayer2/o1;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le9/s1;->r:Lcom/google/android/exoplayer2/o1;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v5, p4

    iput-object p3, p0, Le9/s1;->r:Lcom/google/android/exoplayer2/o1;

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Le9/s1;->W0(IJLcom/google/android/exoplayer2/o1;I)V

    return-void
.end method

.method private W0(IJLcom/google/android/exoplayer2/o1;I)V
    .locals 2

    invoke-static {p1}, Ly1/v1;->a(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    iget-wide v0, p0, Le9/s1;->d:J

    sub-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Ly1/t3;->a(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_9

    invoke-static {p1, p2}, Ly1/y1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-static {p5}, Le9/s1;->L0(I)I

    move-result p3

    invoke-static {p1, p3}, Ly1/a2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p3, p4, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-static {p1, p3}, Ly1/b2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_0
    iget-object p3, p4, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-static {p1, p3}, Ly1/c2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_1
    iget-object p3, p4, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-static {p1, p3}, Ly1/d2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_2
    iget p3, p4, Lcom/google/android/exoplayer2/o1;->h:I

    const/4 p5, -0x1

    if-eq p3, p5, :cond_3

    invoke-static {p1, p3}, Ly1/e2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_3
    iget p3, p4, Lcom/google/android/exoplayer2/o1;->q:I

    if-eq p3, p5, :cond_4

    invoke-static {p1, p3}, Ly1/f2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_4
    iget p3, p4, Lcom/google/android/exoplayer2/o1;->r:I

    if-eq p3, p5, :cond_5

    invoke-static {p1, p3}, Ly1/h2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_5
    iget p3, p4, Lcom/google/android/exoplayer2/o1;->y:I

    if-eq p3, p5, :cond_6

    invoke-static {p1, p3}, Ly1/i2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_6
    iget p3, p4, Lcom/google/android/exoplayer2/o1;->z:I

    if-eq p3, p5, :cond_7

    invoke-static {p1, p3}, Ly1/u3;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_7
    iget-object p3, p4, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    if-eqz p3, :cond_8

    invoke-static {p3}, Le9/s1;->H0(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p5}, Ly1/v3;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p3, :cond_8

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p3}, Ly1/w1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_8
    iget p3, p4, Lcom/google/android/exoplayer2/o1;->s:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_a

    invoke-static {p1, p3}, Ly1/x1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_0

    :cond_9
    const/4 p3, 0x0

    invoke-static {p1, p3}, Ly1/y1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_a
    :goto_0
    iput-boolean p2, p0, Le9/s1;->A:Z

    iget-object p2, p0, Le9/s1;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {p1}, Ly1/z1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-static {p2, p1}, Ly1/q3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method private X0(Lcom/google/android/exoplayer2/o2;)I
    .locals 3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getPlaybackState()I

    move-result v0

    iget-boolean v1, p0, Le9/s1;->u:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    iget-boolean v1, p0, Le9/s1;->w:Z

    if-eqz v1, :cond_1

    const/16 p1, 0xd

    return p1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 p1, 0xb

    return p1

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    iget v0, p0, Le9/s1;->l:I

    if-eqz v0, :cond_6

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x7

    return p1

    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->j()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xa

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    :goto_0
    return p1

    :cond_6
    :goto_1
    return v2

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->j()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 v2, 0x9

    :cond_9
    return v2

    :cond_a
    const/4 p1, 0x1

    if-ne v0, p1, :cond_b

    iget p1, p0, Le9/s1;->l:I

    if-eqz p1, :cond_b

    const/16 p1, 0xc

    return p1

    :cond_b
    iget p1, p0, Le9/s1;->l:I

    return p1
.end method


# virtual methods
.method public synthetic A(Le9/c$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le9/b;->T(Le9/c;Le9/c$a;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic B(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->h(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    return-void
.end method

.method public synthetic C(Le9/c$a;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le9/b;->b(Le9/c;Le9/c$a;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic D(Le9/c$a;ILcom/google/android/exoplayer2/o1;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->r(Le9/c;Le9/c$a;ILcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method public synthetic E(Le9/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Le9/b;->x(Le9/c;Le9/c$a;)V

    return-void
.end method

.method public synthetic F(Le9/c$a;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Le9/b;->k(Le9/c;Le9/c$a;IJJ)V

    return-void
.end method

.method public synthetic G(Le9/c$a;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le9/b;->j0(Le9/c;Le9/c$a;JI)V

    return-void
.end method

.method public synthetic H(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->i0(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public I(Lcom/google/android/exoplayer2/o2;Le9/c$b;)V
    .locals 2

    invoke-virtual {p2}, Le9/c$b;->d()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Le9/s1;->M0(Le9/c$b;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Le9/s1;->S0(Lcom/google/android/exoplayer2/o2;Le9/c$b;)V

    invoke-direct {p0, v0, v1}, Le9/s1;->O0(J)V

    invoke-direct {p0, p1, p2, v0, v1}, Le9/s1;->Q0(Lcom/google/android/exoplayer2/o2;Le9/c$b;J)V

    invoke-direct {p0, v0, v1}, Le9/s1;->N0(J)V

    invoke-direct {p0, p1, p2, v0, v1}, Le9/s1;->P0(Lcom/google/android/exoplayer2/o2;Le9/c$b;J)V

    const/16 p1, 0x404

    invoke-virtual {p2, p1}, Le9/c$b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le9/s1;->b:Le9/t1;

    invoke-virtual {p2, p1}, Le9/c$b;->c(I)Le9/c$a;

    move-result-object p1

    invoke-interface {v0, p1}, Le9/t1;->e(Le9/c$a;)V

    :cond_1
    return-void
.end method

.method public I0()Landroid/media/metrics/LogSessionId;
    .locals 1

    iget-object v0, p0, Le9/s1;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0}, Ly1/h3;->a(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J(Le9/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Le9/b;->v(Le9/c;Le9/c$a;)V

    return-void
.end method

.method public synthetic K(Le9/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->U(Le9/c;Le9/c$a;I)V

    return-void
.end method

.method public synthetic L(Le9/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Le9/b;->W(Le9/c;Le9/c$a;)V

    return-void
.end method

.method public M(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    iput-object p2, p0, Le9/s1;->n:Lcom/google/android/exoplayer2/PlaybackException;

    return-void
.end method

.method public synthetic N(Le9/c$a;ILcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->p(Le9/c;Le9/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public synthetic O(Le9/c$a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->D(Le9/c;Le9/c$a;Z)V

    return-void
.end method

.method public synthetic P(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->e(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public Q(Le9/c$a;Ljava/lang/String;Z)V
    .locals 0

    iget-object p1, p1, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lt9/j;->b()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Le9/s1;->i:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Le9/s1;->C0()V

    :cond_2
    :goto_0
    iget-object p1, p0, Le9/s1;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Le9/s1;->h:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic R(Le9/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->S(Le9/c;Le9/c$a;I)V

    return-void
.end method

.method public S(Le9/c$a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt9/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Le9/s1;->C0()V

    iput-object p2, p0, Le9/s1;->i:Ljava/lang/String;

    invoke-static {}, Ly1/r2;->a()Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v0, "ExoPlayerLib"

    invoke-static {p2, v0}, Ly1/o2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v0, "2.18.1"

    invoke-static {p2, v0}, Ly1/p2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Le9/s1;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p2, p1, Le9/c$a;->b:Lcom/google/android/exoplayer2/k3;

    iget-object p1, p1, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    invoke-direct {p0, p2, p1}, Le9/s1;->U0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;)V

    return-void
.end method

.method public synthetic T(Le9/c$a;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->n0(Le9/c;Le9/c$a;F)V

    return-void
.end method

.method public U(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    iget p1, p0, Le9/s1;->x:I

    iget v0, p2, Lcom/google/android/exoplayer2/decoder/e;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Le9/s1;->x:I

    iget p1, p0, Le9/s1;->y:I

    iget p2, p2, Lcom/google/android/exoplayer2/decoder/e;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Le9/s1;->y:I

    return-void
.end method

.method public synthetic V(Le9/c$a;Lcom/google/android/exoplayer2/p3;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->c0(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/p3;)V

    return-void
.end method

.method public synthetic W(Le9/c$a;IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le9/b;->B(Le9/c;Le9/c$a;IJ)V

    return-void
.end method

.method public synthetic X(Le9/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Le9/b;->V(Le9/c;Le9/c$a;)V

    return-void
.end method

.method public synthetic Y(Le9/c$a;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le9/b;->f0(Le9/c;Le9/c$a;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic Z(Le9/c$a;ILjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Le9/b;->q(Le9/c;Le9/c$a;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic a(Le9/c$a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->h0(Le9/c;Le9/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public a0(Le9/c$a;IJJ)V
    .locals 5

    iget-object p5, p1, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    if-eqz p5, :cond_2

    iget-object p6, p0, Le9/s1;->b:Le9/t1;

    iget-object p1, p1, Le9/c$a;->b:Lcom/google/android/exoplayer2/k3;

    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p6, p1, p5}, Le9/t1;->f(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Le9/s1;->h:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    iget-object p6, p0, Le9/s1;->g:Ljava/util/HashMap;

    invoke-virtual {p6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    iget-object v0, p0, Le9/s1;->h:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    if-nez p5, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    add-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Le9/s1;->g:Ljava/util/HashMap;

    if-nez p6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    int-to-long p4, p2

    add-long/2addr v1, p4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public synthetic b(Le9/c$a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->H(Le9/c;Le9/c$a;Z)V

    return-void
.end method

.method public synthetic b0(Le9/c$a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->Y(Le9/c;Le9/c$a;Z)V

    return-void
.end method

.method public synthetic c(Le9/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->O(Le9/c;Le9/c$a;I)V

    return-void
.end method

.method public synthetic c0(Le9/c$a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->C(Le9/c;Le9/c$a;Z)V

    return-void
.end method

.method public synthetic d(Le9/c$a;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->G(Le9/c;Le9/c$a;Lt9/h;Lt9/i;)V

    return-void
.end method

.method public synthetic d0(Le9/c$a;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->t(Le9/c;Le9/c$a;IZ)V

    return-void
.end method

.method public synthetic e(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->l0(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    return-void
.end method

.method public synthetic e0(Le9/c$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Le9/b;->c(Le9/c;Le9/c$a;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic f(Le9/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Le9/b;->w(Le9/c;Le9/c$a;)V

    return-void
.end method

.method public synthetic f0(Le9/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Le9/b;->u(Le9/c;Le9/c$a;)V

    return-void
.end method

.method public synthetic g(Le9/c$a;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->L(Le9/c;Le9/c$a;ZI)V

    return-void
.end method

.method public synthetic g0(Le9/c$a;ILcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->o(Le9/c;Le9/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public synthetic h(Le9/c$a;Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->J(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method public synthetic h0(Le9/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Le9/b;->Q(Le9/c;Le9/c$a;)V

    return-void
.end method

.method public synthetic i(Le9/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->K(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic i0(Le9/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->a0(Le9/c;Le9/c$a;I)V

    return-void
.end method

.method public synthetic j(Le9/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->z(Le9/c;Le9/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic j0(Le9/c$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Le9/b;->g0(Le9/c;Le9/c$a;Ljava/lang/String;JJ)V

    return-void
.end method

.method public k(Le9/c$a;Lcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    iput-boolean p1, p0, Le9/s1;->u:Z

    :cond_0
    iput p4, p0, Le9/s1;->k:I

    return-void
.end method

.method public synthetic k0(Le9/c$a;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->n(Le9/c;Le9/c$a;Ljava/util/List;)V

    return-void
.end method

.method public synthetic l(Le9/c$a;Lcom/google/android/exoplayer2/r;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->s(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/r;)V

    return-void
.end method

.method public synthetic l0(Le9/c$a;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->X(Le9/c;Le9/c$a;Z)V

    return-void
.end method

.method public synthetic m(Le9/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->y(Le9/c;Le9/c$a;I)V

    return-void
.end method

.method public synthetic m0(Le9/c$a;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->i(Le9/c;Le9/c$a;J)V

    return-void
.end method

.method public synthetic n(Le9/c$a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->d(Le9/c;Le9/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic n0(Le9/c$a;Lt9/i;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->d0(Le9/c;Le9/c$a;Lt9/i;)V

    return-void
.end method

.method public synthetic o(Le9/c$a;Lcom/google/android/exoplayer2/v1;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->I(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/v1;I)V

    return-void
.end method

.method public synthetic o0(Le9/c$a;Lcom/google/android/exoplayer2/o1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->k0(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method public synthetic p(Le9/c$a;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->F(Le9/c;Le9/c$a;Lt9/h;Lt9/i;)V

    return-void
.end method

.method public synthetic p0(Le9/c$a;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->b0(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public q(Le9/c$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic q0(Le9/c$a;Lcom/google/android/exoplayer2/n2;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->M(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method public synthetic r(Le9/c$a;Lba/f;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->m(Le9/c;Le9/c$a;Lba/f;)V

    return-void
.end method

.method public synthetic r0(Le9/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->e0(Le9/c;Le9/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic s(Le9/c$a;Lcom/google/android/exoplayer2/o2$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->l(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/o2$b;)V

    return-void
.end method

.method public synthetic s0(Le9/c$a;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->N(Le9/c;Le9/c$a;I)V

    return-void
.end method

.method public synthetic t(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->f(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public synthetic t0(Le9/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Le9/b;->A(Le9/c;Le9/c$a;)V

    return-void
.end method

.method public u(Le9/c$a;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V
    .locals 0

    iget p1, p3, Lt9/i;->a:I

    iput p1, p0, Le9/s1;->v:I

    return-void
.end method

.method public synthetic u0(Le9/c$a;IIIF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Le9/b;->m0(Le9/c;Le9/c$a;IIIF)V

    return-void
.end method

.method public synthetic v(Le9/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->a(Le9/c;Le9/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public v0(Le9/c$a;Lcom/google/android/exoplayer2/video/y;)V
    .locals 3

    iget-object p1, p0, Le9/s1;->o:Le9/s1$b;

    if-eqz p1, :cond_0

    iget-object v0, p1, Le9/s1$b;->a:Lcom/google/android/exoplayer2/o1;

    iget v1, v0, Lcom/google/android/exoplayer2/o1;->r:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p2, Lcom/google/android/exoplayer2/video/y;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->j0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget p2, p2, Lcom/google/android/exoplayer2/video/y;->b:I

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/o1$b;->Q(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p2

    new-instance v0, Le9/s1$b;

    iget v1, p1, Le9/s1$b;->b:I

    iget-object p1, p1, Le9/s1$b;->c:Ljava/lang/String;

    invoke-direct {v0, p2, v1, p1}, Le9/s1$b;-><init>(Lcom/google/android/exoplayer2/o1;ILjava/lang/String;)V

    iput-object v0, p0, Le9/s1;->o:Le9/s1$b;

    :cond_0
    return-void
.end method

.method public synthetic w(Le9/c$a;Lcom/google/android/exoplayer2/o1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->g(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method public synthetic w0(Le9/c$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->j(Le9/c;Le9/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public x(Le9/c$a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic x0(Le9/c$a;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->Z(Le9/c;Le9/c$a;II)V

    return-void
.end method

.method public synthetic y(Le9/c$a;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->R(Le9/c;Le9/c$a;ZI)V

    return-void
.end method

.method public synthetic y0(Le9/c$a;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/b;->E(Le9/c;Le9/c$a;Lt9/h;Lt9/i;)V

    return-void
.end method

.method public z(Le9/c$a;Lt9/i;)V
    .locals 5

    iget-object v0, p1, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Le9/s1$b;

    iget-object v1, p2, Lt9/i;->c:Lcom/google/android/exoplayer2/o1;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/o1;

    iget v2, p2, Lt9/i;->d:I

    iget-object v3, p0, Le9/s1;->b:Le9/t1;

    iget-object v4, p1, Le9/c$a;->b:Lcom/google/android/exoplayer2/k3;

    iget-object p1, p1, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {v3, v4, p1}, Le9/t1;->f(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Le9/s1$b;-><init>(Lcom/google/android/exoplayer2/o1;ILjava/lang/String;)V

    iget p1, p2, Lt9/i;->b:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Le9/s1;->q:Le9/s1$b;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Le9/s1;->p:Le9/s1$b;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Le9/s1;->o:Le9/s1$b;

    :goto_0
    return-void
.end method

.method public synthetic z0(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/b;->P(Le9/c;Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method
