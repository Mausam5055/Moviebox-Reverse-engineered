.class public final Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

.field private static b:Z

.field private static c:I

.field private static final d:Lkotlin/Lazy;

.field private static final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    const/16 v0, 0xa

    sput v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->c:I

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper$IS_DEBUG_LOG_MODE$2;->INSTANCE:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper$IS_DEBUG_LOG_MODE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper$fillingTrackingMap$1;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper$fillingTrackingMap$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic C(Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;ILcom/cloud/hisavana/sdk/q3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v11, v0

    goto :goto_0

    :cond_0
    move/from16 v11, p10

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->B(ILcom/cloud/hisavana/sdk/q3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZ)V

    return-void
.end method

.method private static final D(Lcom/cloud/hisavana/sdk/q3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "temp_online_failed_code"

    const-string v4, "$adsDTOs"

    move-object/from16 v5, p4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v4, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-direct {v4, v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->v(Lcom/cloud/hisavana/sdk/q3;I)Landroid/os/Bundle;

    move-result-object v15

    const-string v6, ""

    invoke-virtual {v15, v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-string v7, "s_callback_status"

    invoke-virtual {v15, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "s_req_bidding"

    invoke-virtual {v15, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-direct {v4, v3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->Y(Ljava/lang/String;)V

    if-nez v1, :cond_3

    const-string v1, "0"

    :goto_1
    move-object v9, v1

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_3
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "s_online_failed_reason_v2"

    invoke-virtual {v15, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v1, "s_online_status"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "s_default_status"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "s_offline_status"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "s_ma_d_s"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "s_req_timeout"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "s_ma_d_fr"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v3

    :goto_4
    const/4 v4, 0x4

    if-ne v1, v4, :cond_a

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_5

    :cond_8
    move-object v6, v2

    :goto_5
    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_6

    :cond_9
    move-object v7, v2

    :goto_6
    move-object/from16 v5, p4

    move-wide/from16 v8, p5

    move-object v10, v15

    invoke-static/range {v5 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->H(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    goto :goto_b

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_7

    :cond_b
    move-object v6, v2

    :goto_7
    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/q3;->o()I

    move-result v1

    move v7, v1

    goto :goto_8

    :cond_c
    move v7, v3

    :goto_8
    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_9

    :cond_d
    move-object v12, v2

    :goto_9
    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v0

    move v13, v0

    goto :goto_a

    :cond_e
    move v13, v3

    :goto_a
    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move-wide/from16 v10, p5

    move-object/from16 v14, p8

    move-object v0, v15

    move/from16 v15, p9

    move-object/from16 v16, v0

    invoke-static/range {v5 .. v16}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->k(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_b
    return-void
.end method

.method private static final F(Lcom/cloud/hisavana/sdk/q3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$fetchInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->o(Lcom/cloud/hisavana/sdk/q3;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static final H(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;JZ)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->Y(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->p(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;JLjava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static final J(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->q(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static final L(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "$bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    move-object v1, p0

    :cond_1
    if-eqz v1, :cond_2

    const-string p0, "s_click_chain_list"

    invoke-virtual {p3, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->j(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic O(Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method

.method private static final P(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static final R(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p7, "error_code"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v1, ""

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_1
    move-object p0, v1

    :cond_1
    invoke-virtual {v0, p7, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    :try_start_3
    const-string p0, "trigger_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "s_click_tracking_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getClickid()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ad_creative_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "code_seat_type"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object p7

    if-nez p7, :cond_2

    const/4 p7, -0x1

    goto :goto_2

    :cond_2
    invoke-static {p7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    :goto_2
    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "code_seat_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "show_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "preload_enable"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPreloadEnable()Ljava/lang/Boolean;

    move-result-object p7

    const-string v2, "getPreloadEnable(...)"

    invoke-static {p7, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    invoke-virtual {v0, p0, p7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "preload_status"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPreloadStatus()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_3
    :try_start_4
    const-string p0, "s_cct_load_time"

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_3

    :cond_4
    move-wide p1, v2

    :goto_3
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "s_cct_aborted"

    const/4 p1, 0x0

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_4

    :cond_5
    move p2, p1

    :goto_4
    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "s_cct_warmup"

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_6
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "s_cct_version"

    if-nez p5, :cond_7

    move-object p5, v1

    :cond_7
    invoke-virtual {v0, p0, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "s_cct_launch_time"

    if-eqz p6, :cond_8

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_8
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "s_cct_device"

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->A(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :goto_5
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "SSPTrackingHelper"

    const-string p3, "realTrackingCCTLandingPage"

    invoke-virtual {p1, p2, p3, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method private static final T(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p8, "error_code"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v1, ""

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_1
    move-object p0, v1

    :cond_1
    invoke-virtual {v0, p8, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    :try_start_3
    const-string p0, "trigger_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "s_click_tracking_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getClickid()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ad_creative_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "code_seat_type"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object p8

    if-nez p8, :cond_2

    const/4 p8, -0x1

    goto :goto_2

    :cond_2
    invoke-static {p8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    :goto_2
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "code_seat_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "show_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "preload_enable"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPreloadEnable()Ljava/lang/Boolean;

    move-result-object p8

    const-string v2, "getPreloadEnable(...)"

    invoke-static {p8, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "preload_status"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPreloadStatus()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_3
    :try_start_4
    const-string p0, "s_cct_load_time"

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_3

    :cond_4
    move-wide p1, v2

    :goto_3
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "s_cct_aborted"

    const/4 p1, 0x0

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_4

    :cond_5
    move p2, p1

    :goto_4
    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "s_cct_warmup"

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_6
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "s_cct_version"

    if-nez p5, :cond_7

    move-object p5, v1

    :cond_7
    invoke-virtual {v0, p0, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "s_cct_launch_time"

    if-eqz p6, :cond_8

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_5

    :cond_8
    move-wide p1, v2

    :goto_5
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "s_landing_stay_time"

    if-eqz p7, :cond_9

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_9
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "s_cct_device"

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->z(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :goto_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "SSPTrackingHelper"

    const-string p3, "realTrackingCCTLandingPageExit"

    invoke-virtual {p1, p2, p3, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method private static final V(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/q3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "trigger_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result p0

    const-string p1, "ad_type"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string p0, "event_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "s_track_event_type"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x2

    if-ne p2, p0, :cond_5

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    :cond_3
    const-string p0, ""

    :cond_4
    const-string p1, "error_code"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->n(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static final X(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p8, :cond_0

    invoke-virtual {v0, p8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    :goto_0
    if-eqz p0, :cond_4

    const-string p8, "webId"

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string p8, "url"

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p8, "spendTime"

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getSpendTime()J

    move-result-wide v1

    invoke-virtual {v0, p8, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    const-string p0, "error_code"

    if-eqz p9, :cond_2

    invoke-virtual {p9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p8

    if-nez p8, :cond_3

    :cond_2
    const-string p8, ""

    :cond_3
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_6

    const-string p0, "trigger_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "s_click_tracking_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getClickid()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string p0, "code_seat_type"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object p8

    if-nez p8, :cond_5

    const/4 p8, -0x1

    goto :goto_1

    :cond_5
    invoke-static {p8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    :goto_1
    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "code_seat_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ad_creative_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "show_id"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "preload_enable"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPreloadEnable()Ljava/lang/Boolean;

    move-result-object p8

    const-string p9, "getPreloadEnable(...)"

    invoke-static {p8, p9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p8

    invoke-virtual {v0, p0, p8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "preload_status"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPreloadStatus()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_6
    const/4 p0, 0x1

    if-nez p2, :cond_8

    if-eqz p3, :cond_7

    :try_start_3
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p0

    if-ne p1, p0, :cond_7

    const-string p1, "s_landing_router"

    invoke-static {p3}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p4, :cond_8

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p0

    if-ne p1, p0, :cond_8

    const-string p1, "s_landing_ges_router"

    invoke-static {p4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string p1, "s_landing_complete"

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p6, :cond_a

    invoke-virtual {p6}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_9

    move-object p1, p6

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_a

    const-string p1, "s_landing_stay_time"

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_a
    if-eqz p7, :cond_b

    const-string p1, "s_landing_nav_finish"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->Y(Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    return-void
.end method

.method private final Y(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->P(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->H(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;JZ)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->J(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/q3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->F(Lcom/cloud/hisavana/sdk/q3;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->R(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/q3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->D(Lcom/cloud/hisavana/sdk/q3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic g(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->L(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic h(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->X(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic i(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/q3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->V(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/q3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->T(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V

    return-void
.end method

.method private final r()Z
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final u(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->t()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final v(Lcom/cloud/hisavana/sdk/q3;I)Landroid/os/Bundle;
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/g0;->k(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->w(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->w(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object p1

    :catchall_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method private final w(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "temp_online_without_req"

    :try_start_0
    const-string v1, "s_online_status"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "s_ma_d_s"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "temp_online_failed_code"

    if-ne v1, v3, :cond_3

    :try_start_1
    const-string v0, "s_online_failed_reason_v2"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ONLINE_NEW_REQUEST_TIMEOUT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v1, v5, :cond_0

    const-string v0, "5032"

    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5029_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eq v1, v5, :cond_9

    const-string v1, "s_req_chs"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v7, "2"

    const/4 v8, 0x0

    invoke-static {v1, v7, v4, v3, v8}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-ne v1, v5, :cond_7

    const-string v0, "s_req_timeout"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_5

    if-ne v1, v5, :cond_4

    const-string v0, "5033"

    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "5025"

    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    if-ne v1, v5, :cond_6

    const-string v0, "5030"

    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "5026"

    invoke-static {p1, v6, v0}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_7
    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v6, v1}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/g0;->i(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public final A(ILcom/cloud/hisavana/sdk/q3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 13

    const/16 v11, 0x100

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    invoke-static/range {v0 .. v12}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->C(Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;ILcom/cloud/hisavana/sdk/q3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZILjava/lang/Object;)V

    return-void
.end method

.method public final B(ILcom/cloud/hisavana/sdk/q3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJIZ)V
    .locals 12

    move-object v0, p3

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v11, Lcom/cloud/hisavana/sdk/common/athena/q;

    move-object v0, v11

    move-object v1, p2

    move v2, p1

    move/from16 v3, p9

    move/from16 v4, p10

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/q;-><init>(Lcom/cloud/hisavana/sdk/q3;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v11}, Li7/b;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final E(Lcom/cloud/hisavana/sdk/q3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fetchInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/i;-><init>(Lcom/cloud/hisavana/sdk/q3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final G(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;JZ)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/cloud/hisavana/sdk/common/athena/p;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/p;-><init>(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;JZ)V

    invoke-static {v6}, Li7/b;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final I(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/h;

    invoke-direct {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/h;-><init>(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final K(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/j;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/j;-><init>(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final M(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 8

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->O(Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public final N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 7

    new-instance v6, Lcom/cloud/hisavana/sdk/common/athena/m;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/m;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    invoke-static {v6}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Q(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    .locals 10

    new-instance v9, Lcom/cloud/hisavana/sdk/common/athena/n;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p7

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v7, p3

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/cloud/hisavana/sdk/common/athena/n;-><init>(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Landroid/os/Bundle;)V

    invoke-static {v9}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final S(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    .locals 11

    new-instance v10, Lcom/cloud/hisavana/sdk/common/athena/k;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p8

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/k;-><init>(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)V

    invoke-static {v10}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final U(ILcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/o;

    invoke-direct {v0, p4, p2, p1, p3}, Lcom/cloud/hisavana/sdk/common/athena/o;-><init>(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/q3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;ZZLjava/lang/Long;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    .locals 12

    new-instance v11, Lcom/cloud/hisavana/sdk/common/athena/l;

    move-object v0, v11

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    move/from16 v3, p7

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p9

    move-object/from16 v7, p8

    move/from16 v8, p6

    move-object/from16 v9, p10

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/l;-><init>(Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLjava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Long;ZLandroid/os/Bundle;Ljava/lang/Integer;)V

    invoke-static {v11}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Z(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "is_dev_open"

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->u(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final a0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "is_filling_dev_open"

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->u(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final b0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "is_show_dev_open"

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->u(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/k1;->m()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->isEnableClientSampling()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->r()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v0

    :goto_2
    if-nez v1, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    const-string v3, "SSPTrackingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eventName -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reporting not allowed"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move v0, v1

    :catchall_0
    return v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getABTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getTrackEvent()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p1, p2

    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final m(Lcom/cloud/hisavana/sdk/G;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->s()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final n()J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/k1;->m()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getAdReqInterval()J

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    move-wide v2, v0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o(Lcom/cloud/hisavana/sdk/G;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public final p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_3

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->e:Ljava/util/Map;

    const-string v1, "fillingTrackingMap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v2, "fillingTrackingMap"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p1

    :cond_3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "SSPTrackingHelper"

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "getFillingTrackingBundle: triggerId is empty"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_6

    :cond_4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_6
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method public final q(Lcom/cloud/hisavana/sdk/G;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public final s(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "urlString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "parse(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, ""

    :goto_1
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final t()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/k1;->m()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;->getClientSamplingRatio()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    sget-boolean v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b:Z

    if-nez v1, :cond_2

    sget v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->c:I

    if-eq v1, v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n(Landroid/content/Context;I)Z

    move-result v1

    sput-boolean v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->b:Z

    sput v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->c:I

    :cond_3
    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final x(Ljava/util/List;Lcom/cloud/hisavana/sdk/q3;)V
    .locals 4

    if-eqz p1, :cond_6

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v3

    if-eq v3, v2, :cond_4

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string p2, "s_online_failed_reason_v2"

    const-string v0, "5031"

    invoke-static {p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/util/g0;->h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    :goto_1
    return-void
.end method

.method public final y(ILandroid/os/Bundle;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "s_click_pkg_f_r"

    goto :goto_0

    :cond_1
    const-string p1, "s_click_dp_f_r"

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "s_req_chs"

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/g0;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p2, v1

    :cond_1
    invoke-static {p1, v0, p2}, Lcom/cloud/hisavana/sdk/common/util/g0;->h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
