.class public final Lbi/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbi/b;

    invoke-direct {v0}, Lbi/b;-><init>()V

    sput-object v0, Lbi/b;->a:Lbi/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Z
    .locals 5

    sget-object v0, Lbi/k;->a:Lbi/k;

    invoke-virtual {v0}, Lbi/k;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lbi/k;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic c(Lbi/b;Lorg/chromium/net/RequestFinishedInfo;ILjava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move/from16 v9, p7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v9}, Lbi/b;->b(Lorg/chromium/net/RequestFinishedInfo;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public final b(Lorg/chromium/net/RequestFinishedInfo;ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 19

    move-object/from16 v0, p3

    const-string v1, "requestInfo"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "channel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tag"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eqz p6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getFinishedReason()I

    move-result v4

    if-ne v4, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getResponseInfo()Lorg/chromium/net/UrlResponseInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/chromium/net/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    const-string v6, ""

    if-nez v4, :cond_2

    move-object v4, v6

    :cond_2
    sget-object v7, Lbi/e;->J:Lbi/e$a;

    move/from16 v8, p2

    invoke-virtual {v7, v8, v0}, Lbi/e$a;->a(ILjava/lang/String;)Lbi/e;

    move-result-object v7

    invoke-virtual {v7, v1}, Lbi/e;->V(I)V

    invoke-virtual {v7, v4}, Lbi/e;->Z(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getResponseInfo()Lorg/chromium/net/UrlResponseInfo;

    move-result-object v0

    const/16 v4, 0x1e0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    move v8, v0

    goto :goto_1

    :cond_3
    move v8, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    move-result-object v9

    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-direct {v0, v11, v10}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v10, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {v0, v10}, Lkotlin/ranges/RangesKt;->q(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    if-gt v0, v1, :cond_4

    move-object v0, v10

    goto :goto_2

    :cond_4
    move-object v0, v6

    :goto_2
    invoke-virtual {v7, v0}, Lbi/e;->P(Ljava/lang/String;)V

    const/4 v15, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    const-string v12, "requestInfo.annotations"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lokhttp3/Headers;

    if-eqz v13, :cond_5

    goto :goto_3

    :catch_0
    move-exception v0

    move v3, v15

    goto/16 :goto_b

    :cond_6
    move-object v12, v5

    :goto_3
    instance-of v0, v12, Lokhttp3/Headers;

    if-eqz v0, :cond_7

    check-cast v12, Lokhttp3/Headers;

    goto :goto_4

    :cond_7
    move-object v12, v5

    :goto_4
    if-eqz v12, :cond_d

    const-string v0, "isDownload"

    invoke-virtual {v12, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0x54

    if-eq v13, v14, :cond_9

    const v14, 0x36758e

    if-eq v13, v14, :cond_8

    goto :goto_5

    :cond_8
    const-string v13, "true"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_9
    const-string v13, "T"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_5
    move v0, v15

    goto :goto_7

    :cond_b
    :goto_6
    move v0, v11

    :goto_7
    invoke-virtual {v7, v0}, Lbi/e;->l0(I)V

    :cond_c
    const-string v0, "offlineAd"

    invoke-virtual {v12, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "1"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lbi/e;->X(I)V

    goto :goto_8

    :cond_d
    move-object v12, v5

    :goto_8
    if-eqz v12, :cond_e

    const-string v0, "infoeyes-tag"

    invoke-virtual {v12, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_e
    move-object v0, v5

    :goto_9
    if-nez v0, :cond_f

    move-object v0, v3

    :cond_f
    invoke-virtual {v7, v0}, Lbi/e;->O(Ljava/lang/String;)V

    invoke-virtual {v7}, Lbi/e;->G()I

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "?"

    invoke-static {v10, v0, v15, v1, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v13, "?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object v12, v10

    move v3, v15

    move v15, v0

    :try_start_1
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {v10, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v12, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_10
    move v3, v15

    move-object v0, v10

    :goto_a
    invoke-virtual {v7, v0}, Lbi/e;->g0(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v12, "host"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lbi/e;->U(Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lbi/e;->Y(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    :cond_11
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getFinishedReason()I

    move-result v0

    const/16 v10, 0x3fc

    if-nez v0, :cond_27

    invoke-virtual {v7, v11}, Lbi/e;->I(I)V

    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getDnsStart()Ljava/util/Date;

    move-result-object v0

    const-wide/16 v12, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_d

    :cond_12
    move-wide v0, v12

    :goto_d
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getDnsEnd()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    goto :goto_e

    :cond_13
    move-wide v14, v12

    :goto_e
    sub-long/2addr v14, v0

    invoke-virtual {v7, v14, v15}, Lbi/e;->R(J)V

    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSslStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_f

    :cond_14
    move-wide v0, v12

    :goto_f
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSslEnd()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    goto :goto_10

    :cond_15
    move-wide v14, v12

    :goto_10
    sub-long/2addr v14, v0

    invoke-virtual {v7, v14, v15}, Lbi/e;->i0(J)V

    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getConnectStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_11

    :cond_16
    move-wide v0, v12

    :goto_11
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getConnectEnd()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    goto :goto_12

    :cond_17
    move-wide v14, v12

    :goto_12
    sub-long/2addr v14, v0

    invoke-virtual {v7, v14, v15}, Lbi/e;->j0(J)V

    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSendingStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_13

    :cond_18
    move-wide v0, v12

    :goto_13
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSendingEnd()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    goto :goto_14

    :cond_19
    move-wide v14, v12

    :goto_14
    sub-long v0, v14, v0

    invoke-virtual {v7, v0, v1}, Lbi/e;->f0(J)V

    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getResponseStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_15

    :cond_1a
    move-wide v0, v12

    :goto_15
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getRequestEnd()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    move-object/from16 v18, v6

    goto :goto_16

    :cond_1b
    move-object/from16 v18, v6

    move-wide/from16 v16, v12

    :goto_16
    sub-long v5, v16, v0

    invoke-virtual {v7, v5, v6}, Lbi/e;->a0(J)V

    sub-long v4, v0, v14

    invoke-virtual {v7, v4, v5}, Lbi/e;->m0(J)V

    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getReceivedByteCount()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_1c

    move-wide v4, v12

    goto :goto_17

    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_17
    invoke-virtual {v7, v4, v5}, Lbi/e;->e0(J)V

    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSentByteCount()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_1d

    move-wide v4, v12

    goto :goto_18

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_18
    invoke-virtual {v7, v4, v5}, Lbi/e;->b0(J)V

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getResponseInfo()Lorg/chromium/net/UrlResponseInfo;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v2

    goto :goto_19

    :cond_1e
    const/4 v2, 0x0

    :goto_19
    if-eqz v2, :cond_1f

    const-string v4, "Content-Encoding"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_1a

    :cond_1f
    const/4 v4, 0x0

    :goto_1a
    if-eqz v4, :cond_20

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "contentEncoding"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lbi/e;->Q(Ljava/lang/String;)V

    :cond_20
    if-eqz v2, :cond_21

    const-string v4, "server-time"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_21

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1b

    :cond_21
    const/4 v4, 0x0

    :goto_1b
    if-nez v4, :cond_22

    const-string v4, "0"

    :cond_22
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lbi/e;->h0(J)V

    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getTotalTimeMs()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_23

    move-wide v4, v12

    goto :goto_1c

    :cond_23
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1c
    invoke-virtual {v7, v4, v5}, Lbi/e;->c0(J)V

    invoke-virtual {v7}, Lbi/e;->G()I

    move-result v4

    if-ne v4, v11, :cond_30

    if-eqz v2, :cond_24

    const-string v4, "x-response-cdn"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_24

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto :goto_1d

    :cond_24
    const/4 v5, 0x0

    :goto_1d
    if-nez v5, :cond_25

    move-object/from16 v6, v18

    goto :goto_1e

    :cond_25
    move-object v6, v5

    :goto_1e
    invoke-virtual {v7, v6}, Lbi/e;->K(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getRequestStart()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    :cond_26
    sub-long/2addr v0, v12

    invoke-virtual {v7, v0, v1}, Lbi/e;->L(J)V

    invoke-virtual {v7}, Lbi/e;->u()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lbi/e;->J(J)V

    invoke-virtual {v7}, Lbi/e;->y()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-virtual {v7}, Lbi/e;->u()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lbi/e;->M(Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_27
    move-object/from16 v18, v6

    invoke-virtual {v7, v1}, Lbi/e;->I(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getFinishedReason()I

    move-result v0

    if-ne v0, v1, :cond_28

    goto :goto_1f

    :cond_28
    move v11, v3

    :goto_1f
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getException()Lorg/chromium/net/CronetException;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_20

    :cond_29
    const/4 v5, 0x0

    :goto_20
    if-nez v5, :cond_2a

    move-object/from16 v6, v18

    goto :goto_21

    :cond_2a
    move-object v6, v5

    :goto_21
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getException()Lorg/chromium/net/CronetException;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/net/NetworkException;

    if-eqz v0, :cond_2e

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getException()Lorg/chromium/net/CronetException;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.chromium.net.NetworkException"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/chromium/net/NetworkException;

    invoke-direct/range {p0 .. p0}, Lbi/b;->a()Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v1, Lbi/k;->a:Lbi/k;

    invoke-virtual {v1}, Lbi/k;->g()Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v6, "Network disconnect"

    move v8, v10

    goto :goto_23

    :cond_2b
    invoke-virtual {v1}, Lbi/k;->e()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v0, 0x3fd

    const-string v6, "Fake Network"

    :goto_22
    move v8, v0

    goto :goto_23

    :cond_2c
    sget-object v1, Lbi/a;->a:Lbi/a;

    invoke-virtual {v1, v8, v0, v11}, Lbi/a;->b(ILorg/chromium/net/NetworkException;Z)I

    move-result v0

    goto :goto_22

    :cond_2d
    sget-object v1, Lbi/a;->a:Lbi/a;

    invoke-virtual {v1, v8, v0, v11}, Lbi/a;->b(ILorg/chromium/net/NetworkException;Z)I

    move-result v0

    goto :goto_22

    :cond_2e
    if-eqz v11, :cond_2f

    const/16 v4, 0x41a

    :cond_2f
    move v8, v4

    :goto_23
    invoke-virtual {v7, v6}, Lbi/e;->T(Ljava/lang/String;)V

    :cond_30
    :goto_24
    invoke-virtual {v7, v8}, Lbi/e;->S(I)V

    if-nez p5, :cond_33

    const/16 v0, 0x130

    if-ne v8, v0, :cond_31

    return-void

    :cond_31
    if-eqz p7, :cond_32

    if-ne v8, v10, :cond_32

    return-void

    :cond_32
    invoke-static {v7}, Lbi/c;->g(Lbi/e;)V

    :cond_33
    return-void
.end method
