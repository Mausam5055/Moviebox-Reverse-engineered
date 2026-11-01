.class public final Lcom/transsion/startup/pref/consume/AppStartReport;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/startup/pref/consume/AppStartReport;

.field private static b:Z

.field private static c:Z

.field private static final d:Ljava/util/Map;

.field private static final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/startup/pref/consume/AppStartReport;

    invoke-direct {v0}, Lcom/transsion/startup/pref/consume/AppStartReport;-><init>()V

    sput-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->a:Lcom/transsion/startup/pref/consume/AppStartReport;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->e:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(JLjava/lang/String;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/startup/pref/consume/AppStartReport;->h(JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(Lcom/transsion/startup/pref/consume/AppStartReport;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/pref/consume/AppStartReport;->g()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->e:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic e(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/startup/pref/consume/AppStartReport;->b:Z

    return-void
.end method

.method private final g()Ljava/util/Map;
    .locals 28

    const-string v0, "trending_render"

    const-string v1, "trending_create"

    const-string v2, "ad_rendering"

    const-string v3, "ad_end"

    const-string v4, "ad_loading"

    const-string v5, "splash_resume"

    const-string v6, "splash_start"

    const-string v7, "app_start"

    const-string v8, "trending_end"

    const-string v9, "main_create"

    const-string v10, "app_end"

    :try_start_0
    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sget-object v13, Lcom/transsion/startup/pref/consume/AppStartReport;->d:Ljava/util/Map;

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/transsion/startup/pref/consume/AppStartDotState;

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/transsion/startup/pref/consume/AppStartDotState;

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/transsion/startup/pref/consume/AppStartDotState;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/transsion/startup/pref/consume/AppStartDotState;

    const-string v17, "cold"

    const-wide/16 v18, 0x0

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide v20

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide v22

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide v22

    :goto_0
    sub-long v20, v20, v22

    goto :goto_1

    :cond_1
    move-wide/from16 v20, v18

    :goto_1
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    move-wide/from16 v22, v18

    :goto_2
    cmp-long v15, v22, v18

    const-string v11, "warm"

    if-lez v15, :cond_4

    const-wide/16 v23, 0x2710

    cmp-long v15, v20, v23

    if-gtz v15, :cond_4

    cmp-long v15, v20, v18

    if-gtz v15, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v15, v17

    goto :goto_4

    :cond_4
    :goto_3
    move-object v15, v11

    :goto_4
    :try_start_1
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v8

    const-string v8, "0"

    move-object/from16 v23, v0

    const-string v0, "act_app_gap"

    if-eqz v11, :cond_7

    if-eqz v13, :cond_6

    :try_start_2
    invoke-virtual {v13}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide v20

    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide v24

    goto :goto_5

    :cond_5
    invoke-virtual {v13}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide v24

    :goto_5
    sub-long v20, v20, v24

    goto :goto_6

    :cond_6
    move-wide/from16 v20, v18

    :goto_6
    invoke-interface {v12, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_7
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide v24

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide v26

    goto :goto_7

    :cond_8
    invoke-virtual {v13}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide v26

    :goto_7
    sub-long v24, v24, v26

    goto :goto_8

    :cond_9
    move-wide/from16 v24, v18

    :goto_8
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v20, v24

    :goto_9
    cmp-long v0, v20, v18

    if-gtz v0, :cond_a

    const/4 v11, 0x0

    return-object v11

    :cond_a
    const-string v0, "total_time"

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    sget-object v11, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    invoke-virtual {v11}, Lcom/transsion/baselib/report/h;->e()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    invoke-interface {v12, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lih/b;->a:Lih/b;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v11

    const-string v13, "getApp(...)"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lih/b;->k(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    const-string v11, "mem_size"

    move-object v13, v1

    move-object v15, v2

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "low_memory"

    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    invoke-virtual {v0}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide/from16 v1, v18

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmy/f;

    invoke-virtual {v11}, Lmy/f;->a()J

    move-result-wide v20

    add-long v1, v1, v20

    goto :goto_a

    :cond_b
    const-string v0, "available"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cpu_size"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/transsion/startup/pref/consume/AppStartReport;->c:Z

    if-eqz v0, :cond_c

    const-string v1, "first_open"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide v18

    :cond_d
    move-wide/from16 v0, v18

    new-instance v2, Lcom/transsion/startup/pref/consume/a;

    invoke-direct {v2, v0, v1}, Lcom/transsion/startup/pref/consume/a;-><init>(J)V

    invoke-interface {v12, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v15

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v23

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v17

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/transsion/startup/pref/consume/AppStartReport;->e:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trace_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    :cond_e
    return-object v12

    :goto_c
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->a:Lcom/transsion/startup/pref/consume/AppStartReport;

    const-string v1, "error error error --- failed to obtain device information"

    invoke-direct {v0, v1}, Lcom/transsion/startup/pref/consume/AppStartReport;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_f
    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private static final h(JLjava/lang/String;)J
    .locals 1

    const-string v0, "dot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/startup/pref/consume/AppStartDotState;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method

.method private final i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "zxb_log_dot"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final f(Lcom/transsion/startup/pref/consume/AppStartDotState;)V
    .locals 3

    const-string v0, "dot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/transsion/startup/pref/consume/AppStartReport;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main_create"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "first_open"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/startup/pref/consume/AppStartReport;->c:Z

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "trending_end"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/startup/pref/consume/AppStartReport;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 7

    sget-boolean v0, Lcom/transsion/startup/pref/consume/AppStartReport;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/startup/pref/consume/AppStartReport$report$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/transsion/startup/pref/consume/AppStartReport$report$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/startup/pref/consume/AppStartReport;->b:Z

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/transsion/startup/pref/consume/AppStartReport;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->e:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
