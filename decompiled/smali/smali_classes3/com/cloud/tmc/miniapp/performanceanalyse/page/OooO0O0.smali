.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;
.super Ljava/lang/Object;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "14"

    const-string v7, "12"

    const-string v8, "false"

    const-string v9, "appOpenPointData"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "data"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportPageOpenFail #########> appOpenPointData:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", pageOpenPointData:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", data"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    :goto_0
    const-string v11, "openPageResult"

    invoke-virtual {v2, v11, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez v1, :cond_4

    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-gt v5, v6, :cond_15

    move v7, v5

    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_2

    :cond_1
    const-wide/16 v9, 0x0

    :goto_2
    iget-object v15, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_3

    :cond_2
    const-wide/16 v15, 0x0

    :goto_3
    iget-object v13, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o0:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_4

    :cond_3
    const-wide/16 v13, 0x0

    :goto_4
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v13, v4, [J

    aput-wide v9, v13, v3

    aput-wide v15, v13, v5

    invoke-interface {v12, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v7, v6, :cond_15

    add-int/2addr v7, v5

    goto :goto_1

    :cond_4
    iget-object v13, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0xb

    iget-object v14, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iget-object v5, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v5, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v8, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v8, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    iget-object v8, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    iget-object v8, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v21

    sub-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "true"

    :cond_5
    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const-string v5, "isExitInStage"

    invoke-virtual {v2, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    :goto_6
    const/16 v8, 0xc

    if-ge v5, v8, :cond_d

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_7

    :cond_7
    const-wide/16 v9, 0x0

    :goto_7
    iget-object v14, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_8

    :cond_8
    const-wide/16 v14, 0x0

    :goto_8
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o0:Ljava/util/Map;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    goto :goto_9

    :cond_9
    const-wide/16 v20, 0x0

    :goto_9
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v11, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v17, 0x0

    goto :goto_d

    :cond_a
    iget-object v3, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_a

    :cond_b
    const-wide/16 v9, 0x0

    :goto_a
    iget-object v3, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    :goto_b
    const-wide/16 v17, 0x0

    goto :goto_c

    :cond_c
    const-wide/16 v14, 0x0

    goto :goto_b

    :goto_c
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v11, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    new-array v3, v4, [J

    const/16 v19, 0x0

    aput-wide v9, v3, v19

    const/4 v9, 0x1

    aput-wide v14, v3, v9

    invoke-interface {v12, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v5, v9

    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_d
    const-wide/16 v17, 0x0

    if-gt v8, v13, :cond_14

    :goto_e
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    if-nez v5, :cond_10

    const-string v5, "15"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "16"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_e
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_f

    :cond_f
    move-wide/from16 v9, v17

    :goto_f
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_11

    :cond_10
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_10

    :cond_11
    move-wide/from16 v9, v17

    :goto_10
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_11

    :cond_12
    move-wide/from16 v14, v17

    :goto_11
    iget-object v5, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    goto :goto_12

    :cond_13
    move-wide/from16 v20, v17

    :goto_12
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v5, v4, [J

    const/4 v7, 0x0

    aput-wide v9, v5, v7

    const/4 v9, 0x1

    aput-wide v14, v5, v9

    invoke-interface {v12, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v8, v13, :cond_14

    add-int/2addr v8, v9

    goto/16 :goto_e

    :cond_14
    move v6, v13

    :cond_15
    const-string v3, "maxStage"

    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "stageCostTime"

    invoke-static {v11}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "stageRangeTime"

    invoke-static {v12}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "page_path"

    if-eqz v1, :cond_16

    iget-object v4, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    goto :goto_13

    :cond_16
    const/4 v4, 0x0

    :goto_13
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_17

    goto :goto_14

    :cond_17
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    :goto_14
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v3, "mini_page_open"

    invoke-interface {v1, v0, v3, v2}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;Landroid/os/Bundle;Z)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v7, "page_path"

    const-string v8, "14"

    const-string v9, "12"

    const-string v10, ""

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportPageOpenSuccess #########> appOpenPointData:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportPageOpenSuccess #########> pageOpenPointData:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportPageOpenSuccess #########> data:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportPageOpenSuccess #########> isHomePage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :try_start_0
    iget-boolean v11, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    if-eqz v11, :cond_0

    return-void

    :cond_0
    const-string v11, "openPageResult"

    const-string v12, "true"

    invoke-virtual {v2, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_PAGE_FAILED_REASON:Ljava/lang/String;

    invoke-virtual {v2, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "maxStage"

    const/16 v12, 0x11

    invoke-virtual {v2, v11, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "isExitInStage"

    invoke-virtual {v2, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v12, 0x1

    :goto_0
    const/16 v13, 0xc

    const-wide/16 v14, 0x0

    if-ge v12, v13, :cond_7

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v3, :cond_4

    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v14

    :goto_1
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_2

    :cond_2
    move-wide/from16 v18, v14

    :goto_2
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o0:Ljava/util/Map;

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    :cond_3
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v10, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    iget-object v6, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_3

    :cond_5
    move-wide/from16 v16, v14

    :goto_3
    iget-object v6, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_4

    :cond_6
    move-wide/from16 v18, v14

    :goto_4
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v10, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    new-array v6, v5, [J

    aput-wide v16, v6, v4

    const/4 v14, 0x1

    aput-wide v18, v6, v14

    invoke-interface {v11, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v12, v14

    goto :goto_0

    :cond_7
    :goto_6
    const/16 v6, 0x12

    if-ge v13, v6, :cond_e

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_a

    const-string v9, "15"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "16"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_8
    iget-object v9, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_7

    :cond_9
    move-wide/from16 v16, v14

    :goto_7
    iget-object v9, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_9

    :cond_a
    iget-object v9, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_8

    :cond_b
    move-wide/from16 v16, v14

    :goto_8
    iget-object v9, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_9

    :cond_c
    move-wide/from16 v18, v14

    :goto_9
    iget-object v9, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    goto :goto_a

    :cond_d
    move-wide/from16 v20, v14

    :goto_a
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v10, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v5, [J

    aput-wide v16, v9, v4

    const/4 v12, 0x1

    aput-wide v18, v9, v12

    invoke-interface {v11, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v13, v12

    goto :goto_6

    :cond_e
    const-string v3, "stageCostTime"

    invoke-static {v10}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "stageRangeTime"

    invoke-static {v11}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-class v3, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/structure/AppManager;

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_10

    const-class v4, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    const-class v1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v3, "mini_page_open"

    invoke-interface {v1, v0, v3, v2}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    const-string v0, ""

    const-string v1, "data"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordPageStageFail #########> appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    :try_start_0
    sget-object v2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;

    if-nez p1, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;

    if-nez v3, :cond_2

    return v1

    :cond_2
    iget-object v4, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    invoke-virtual {v0, p1, v3, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return v1
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8

    const-string v0, ""

    const-string v1, "stage"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordPageStageEnd #########> stage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    sget-object v4, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;

    if-nez p2, :cond_1

    return v1

    :cond_1
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {p3, v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    iget-object v5, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;

    if-nez v5, :cond_3

    return v1

    :cond_3
    iget-object v6, v5, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v1

    :cond_4
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p3, v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v5, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, v5, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, v5, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    iget-object v2, v5, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v4, v5, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, v5, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    invoke-virtual {p0, p2, v5, p3, p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;Landroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    return v1
.end method

.method public final OooO0O0(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    const-string v0, ""

    const-string v1, "data"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportPageOpenFinish #########> appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    :try_start_0
    sget-object v2, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;

    if-nez p1, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;

    if-nez v3, :cond_2

    return v1

    :cond_2
    iget-object v4, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p2, v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_5
    iget-boolean v0, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    if-eqz v0, :cond_6

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_6
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    invoke-virtual {v0, p1, v3, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;Landroid/os/Bundle;)V

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    return v1
.end method

.method public final OooO0O0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "stage"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "data"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordPageStageStart #########> stage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", appId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_0
    sget-object v7, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0:Ljava/util/Map;

    check-cast v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;

    if-nez v1, :cond_1

    return v3

    :cond_1
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    return v3

    :cond_2
    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v8, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-array v2, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {v2}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v11

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o:Ljava/util/Map;

    const-string v1, "pageId"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;

    const-string v2, "pagePath"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v16, 0x0

    const/4 v15, 0x0

    move-object v8, v1

    move-object v10, v7

    invoke-direct/range {v8 .. v16}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZZ)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO00o;->OooO0o:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;

    if-nez v1, :cond_5

    return v3

    :cond_5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return v3
.end method
