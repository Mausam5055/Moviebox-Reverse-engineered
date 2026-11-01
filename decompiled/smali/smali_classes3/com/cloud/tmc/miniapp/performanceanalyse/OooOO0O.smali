.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;,
        Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO0O0;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO0o:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final OooO0o0:Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;


# instance fields
.field public OooO00o:J

.field public OooO0O0:J

.field public OooO0OO:Z

.field public final OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0o:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "PointTrack"

    const-string v2, "tryInitAthena failed!"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final OooO00o(Landroid/os/Bundle;)V
    .locals 8

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "openPageTime"

    const-string v4, "17"

    const-string v5, "openType"

    if-eqz v2, :cond_4

    const-string v1, "app"

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    const-string v6, "18"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_2
    move-wide v5, v1

    :goto_0
    sub-long v5, v1, v5

    const-string v7, "openAppTime"

    invoke-virtual {p1, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    move-wide v4, v1

    :goto_1
    sub-long/2addr v1, v4

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    :cond_4
    const-string v2, "page"

    invoke-virtual {p1, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0OO:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    move-wide v0, v5

    :goto_2
    sub-long/2addr v5, v0

    invoke-virtual {p1, v3, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    :goto_3
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final OooO00o(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {v0, p2}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "queryShortcutExist"

    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v2, v0, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "PointTrack"

    const-string v0, "queryShortcutStatus failed!"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {v1, p1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v2, Lcom/cloud/tmc/integration/model/ForegroundTime;

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/ForegroundTime;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/cloud/tmc/integration/model/ForegroundTime;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;-><init>()V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->setStartTime()V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->resetStartCount()V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->addStartCount()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, v2, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    const-string v0, "PointTrack"

    const-string v1, "startRecordForegroundTime failed!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chainStart -> msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", pagePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "oldChain"

    invoke-static {v7, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v14, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    const-string v6, "appId"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v20, ""

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    move-object v6, v13

    move-object v7, v5

    move-object/from16 v25, v13

    move/from16 v13, v16

    move-object/from16 v26, v14

    move/from16 v14, v17

    move-object/from16 v27, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    invoke-direct/range {v6 .. v21}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object/from16 v27, v15

    :goto_0
    const-string v6, "app"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v15, 0x1

    if-eqz v6, :cond_2

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v15, :cond_1

    goto/16 :goto_d

    :cond_1
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_18

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    if-eqz v2, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto/16 :goto_d

    :cond_2
    const-string v6, "page"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v3, v27

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_d

    :cond_3
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    const/16 v16, 0x0

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    goto :goto_1

    :cond_4
    move-object/from16 v6, v16

    :goto_1
    if-eqz v6, :cond_5

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v15, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    const-string v7, "pagePath"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v13, ""

    const-string v17, ""

    const-string v9, ""

    const-string v12, ""

    move-object v7, v14

    move-object v8, v3

    move-object v15, v14

    move-object/from16 v14, v17

    invoke-direct/range {v7 .. v14}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    :cond_6
    :goto_2
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateRender:Ljava/lang/String;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "<set-?>"

    if-eqz v7, :cond_9

    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->RENDER_ID:Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v9, :cond_7

    iget-object v9, v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v9, :cond_7

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    goto :goto_3

    :cond_7
    move-object/from16 v9, v16

    :goto_3
    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    const-string v10, "renderId"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0:Ljava/lang/String;

    :cond_9
    :goto_4
    const-string v7, "21"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "navigationType"

    if-eqz v7, :cond_b

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v10, :cond_b

    iget-object v10, v10, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v10, :cond_b

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v10, :cond_b

    if-nez v7, :cond_a

    move-object v7, v4

    :cond_a
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v10, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0oO:Ljava/lang/String;

    :cond_b
    if-eqz v6, :cond_c

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    goto :goto_5

    :cond_c
    move-object/from16 v6, v16

    :goto_5
    if-eqz v6, :cond_d

    iget-object v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0OO:Ljava/util/Map;

    if-eqz v7, :cond_d

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_d

    goto :goto_6

    :cond_d
    if-eqz v6, :cond_e

    iget-object v6, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0OO:Ljava/util/Map;

    if-eqz v6, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    :cond_e
    :goto_6
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v6, :cond_f

    iget-object v6, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    goto :goto_7

    :cond_f
    move-object/from16 v6, v16

    :goto_7
    if-nez v6, :cond_15

    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-nez v6, :cond_10

    goto :goto_8

    :cond_10
    iput-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    :goto_8
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-nez v6, :cond_11

    goto :goto_9

    :cond_11
    const-string v7, "pageRandomId"

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12

    move-object v7, v4

    :cond_12
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    :goto_9
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-nez v6, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_a

    :cond_14
    move-object v4, v2

    :goto_a
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    :cond_15
    :goto_b
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    goto :goto_c

    :cond_16
    move-object/from16 v2, v16

    :goto_c
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_17

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    if-eqz v2, :cond_17

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    goto :goto_d

    :cond_17
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_18

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    if-eqz v2, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    nop

    :cond_18
    :goto_d
    return-void
.end method

.method public OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 49

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v0, p4

    const-string v1, "miniapp_start"

    const-string v2, "0"

    const-string v3, "reportPagePath"

    const-string v4, "pagePath"

    const-string v5, "appId"

    const-string v10, "page"

    const-string v11, "pageRandomId"

    const-string v12, "offScreenRender"

    const-string v13, "appDomContentLoadedStatus"

    const-string v14, "appH5ProgressStatus"

    const-string v15, "chainEndData"

    move-object/from16 v17, v1

    const-string v1, "chainStartData"

    move-object/from16 v18, v2

    const-string v2, "false"

    move-object/from16 v19, v3

    const-string v3, "app_launcher_status"

    move-object/from16 v20, v4

    const-string v4, "app"

    move-object/from16 v21, v5

    const-string v5, "2"

    const-string v22, "miniapp_download"

    move-object/from16 v23, v5

    const-string v5, "100"

    move-object/from16 v24, v5

    const-string v5, "chain_id_"

    move-object/from16 v25, v5

    const-string v5, "target"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO0O0;->OooO00o:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v26

    aget v0, v0, v26

    const-string v8, "navigationType"

    move-object/from16 v26, v10

    const-string v10, "zipAppMode"

    move-object/from16 p4, v8

    const-string v8, "zipFrameworkMode"

    move-object/from16 v27, v11

    const-string v11, "downloadAppMode"

    move-object/from16 v28, v12

    const-string v12, "downloadFrameworkMode"

    move-object/from16 v29, v13

    const-string v13, "page_path"

    move-object/from16 v30, v14

    const-string v14, ", reportPagePath:"

    move-object/from16 v31, v10

    const-string v10, ", pagePath:"

    move-object/from16 v32, v8

    const-string v8, ", type:"

    move-object/from16 v33, v11

    const-string v11, "oldChain"

    const-class v34, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    const-string v35, "miniapp_exposure"

    move-object/from16 v36, v12

    const-string v12, "status"

    const-string v37, "miniapp_package_update"

    const/16 v38, -0x1

    const-string v39, "miniapp_click"

    const/16 v40, 0x0

    move-object/from16 v41, v12

    const-string v12, "object_id"

    move-object/from16 v42, v1

    move-object/from16 v43, v2

    const-string v2, ""

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v9, v5

    :goto_1
    const-wide/16 v4, 0x0

    goto/16 :goto_45

    :pswitch_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "get-add-noshow"

    :goto_2
    move-object/from16 v39, v1

    :goto_3
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v44, 0x0

    move-object v9, v5

    :goto_5
    const-wide/16 v4, 0x0

    goto/16 :goto_46

    :pswitch_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "get-add-click"

    goto :goto_2

    :pswitch_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "get-toast-add-ex"

    goto :goto_2

    :pswitch_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "get-add-ex"

    goto :goto_2

    :pswitch_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_offline_click"

    goto :goto_2

    :pswitch_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_offline_app_ex"

    goto :goto_2

    :pswitch_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_offline_ex"

    goto :goto_2

    :pswitch_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "preStrategyFail"

    goto :goto_2

    :pswitch_8
    const-string v0, "27"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3

    :pswitch_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "getPreHtmlHit"

    goto :goto_2

    :pswitch_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "getPreHtml"

    goto :goto_2

    :pswitch_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "preRequestHtmlRet"

    goto :goto_2

    :pswitch_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "preRequestHtml"

    goto :goto_2

    :pswitch_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "addMiniAppToDesktop"

    goto :goto_2

    :pswitch_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "privacy_click"

    goto :goto_2

    :pswitch_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "privacy_ex"

    goto :goto_2

    :pswitch_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_addmc_ex"

    goto :goto_2

    :pswitch_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_addmc_click"

    goto :goto_2

    :pswitch_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_banner_click"

    goto :goto_2

    :pswitch_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "later_banner_ex"

    goto :goto_2

    :pswitch_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "Pinforlater_click"

    goto :goto_2

    :pswitch_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "Pinforlater_ex"

    goto :goto_2

    :pswitch_16
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "mini_open_page_action"

    goto :goto_2

    :pswitch_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_hot_open"

    goto/16 :goto_2

    :pswitch_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_get_odid"

    goto/16 :goto_2

    :pswitch_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_foreground_time"

    goto/16 :goto_2

    :pswitch_1a
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    invoke-virtual {v0, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :pswitch_1b
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    invoke-virtual {v0, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :pswitch_1c
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    invoke-virtual {v0, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0OO(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :pswitch_1d
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    invoke-virtual {v0, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO0O0(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :pswitch_1e
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    invoke-virtual {v0, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :pswitch_1f
    if-eqz v9, :cond_7

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    invoke-virtual {v0, v9, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    goto/16 :goto_3c

    :pswitch_20
    if-eqz v9, :cond_7

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;

    invoke-virtual {v0, v9, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :pswitch_21
    if-eqz v9, :cond_7

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    invoke-virtual {v0, v9, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :pswitch_22
    if-eqz v9, :cond_7

    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;

    invoke-virtual {v0, v9, v7, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/app/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_0

    :pswitch_23
    const-string v0, "907"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_6
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v39, v37

    goto/16 :goto_4

    :pswitch_24
    const-string v0, "906"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    :pswitch_25
    const-string v0, "905"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    :pswitch_26
    const-string v0, "904"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    :pswitch_27
    const-string v0, "903"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    :pswitch_28
    const-string v0, "902"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    :pswitch_29
    const-string v0, "901"

    invoke-virtual {v5, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_6

    :pswitch_2a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_get_package_file"

    goto/16 :goto_2

    :pswitch_2b
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gaId"

    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "privacy_policy_click"

    goto/16 :goto_2

    :pswitch_2c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_log_e"

    goto/16 :goto_2

    :pswitch_2d
    invoke-virtual {v6, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Landroid/os/Bundle;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "mini_h5_onPageFinished"

    goto/16 :goto_2

    :pswitch_2e
    if-eqz v9, :cond_31

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v7, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v24, v15

    sget-object v15, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->REPORT_PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v15, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v37, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v46, v3

    const-string v3, "chainClear -> msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v15, v7

    :cond_b
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0()Ljava/util/Map;

    move-result-object v0

    goto :goto_7

    :cond_c
    move-object/from16 v0, v40

    :goto_7
    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o()Ljava/util/Map;

    move-result-object v2

    goto :goto_8

    :cond_d
    move-object/from16 v2, v40

    :goto_8
    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_e
    move-object/from16 v3, v40

    :goto_9
    if-eqz v0, :cond_10

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_10

    if-eqz v2, :cond_10

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_10

    invoke-static/range {v34 .. v34}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0()Ljava/lang/String;

    move-result-object v40

    :cond_f
    move-object/from16 v2, v40

    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->clear(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    :cond_10
    const-string v3, "203"

    invoke-virtual {v5, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v43

    move-object/from16 v3, v46

    invoke-virtual {v5, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v3, "app_launcher_fail_reason"

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v8, v42

    invoke-static {v8, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    move-object/from16 v10, v24

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v7, 0x2

    new-array v7, v7, [Lkotlin/Pair;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v2, v7, v0

    invoke-static {v7}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo()I

    move-result v0

    move-object/from16 v2, v36

    goto :goto_a

    :cond_11
    move-object/from16 v2, v36

    move/from16 v0, v38

    :goto_a
    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO()I

    move-result v0

    move-object/from16 v3, v33

    goto :goto_b

    :cond_12
    move-object/from16 v3, v33

    move/from16 v0, v38

    :goto_b
    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o()I

    move-result v0

    move-object/from16 v11, v32

    goto :goto_c

    :cond_13
    move-object/from16 v11, v32

    move/from16 v0, v38

    :goto_c
    invoke-virtual {v5, v11, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O()I

    move-result v38

    :cond_14
    move-object/from16 v14, v31

    move/from16 v0, v38

    invoke-virtual {v5, v14, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_d

    :cond_15
    move-object/from16 v7, v30

    goto :goto_e

    :cond_16
    :goto_d
    move-object/from16 v7, v30

    move-object/from16 v0, v37

    :goto_e
    invoke-virtual {v5, v7, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_f

    :cond_17
    move-object/from16 v15, v29

    goto :goto_10

    :cond_18
    :goto_f
    move-object/from16 v15, v29

    move-object/from16 v0, v37

    :goto_10
    invoke-virtual {v5, v15, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO()Z

    move-result v8

    move-object/from16 v0, v28

    goto :goto_11

    :cond_19
    move-object/from16 v0, v28

    const/4 v8, 0x0

    :goto_11
    invoke-virtual {v5, v0, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1a
    move-object/from16 v2, v40

    :goto_12
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo()Ljava/lang/String;

    move-result-object v40

    :cond_1c
    move-object/from16 v2, p4

    move-object/from16 v0, v40

    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const/16 v16, 0x0

    goto/16 :goto_1a

    :cond_1e
    move-object/from16 v10, v24

    move-object/from16 v9, v26

    move-object/from16 v14, v31

    move-object/from16 v11, v32

    move-object/from16 v3, v33

    move-object/from16 v2, v36

    move-object/from16 v8, v42

    move-object/from16 v4, v43

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_1f
    move-object/from16 v0, v40

    :goto_13
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    goto/16 :goto_1c

    :cond_20
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0()Ljava/util/Map;

    move-result-object v0

    goto :goto_14

    :cond_21
    move-object/from16 v0, v40

    :goto_14
    iget-object v9, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v9, :cond_22

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_22

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v9, :cond_22

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO00o()Ljava/util/Map;

    move-result-object v9

    goto :goto_15

    :cond_22
    move-object/from16 v9, v40

    :goto_15
    if-eqz v0, :cond_24

    move-object/from16 v31, v14

    sget-object v14, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v32, v11

    const/4 v11, 0x1

    if-ne v14, v11, :cond_25

    if-eqz v9, :cond_25

    sget-object v14, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    invoke-interface {v9, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-ne v14, v11, :cond_25

    invoke-static/range {v34 .. v34}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0()Ljava/lang/String;

    move-result-object v40

    :cond_23
    move-object/from16 v2, v40

    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->clear(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    goto/16 :goto_1c

    :cond_24
    move-object/from16 v32, v11

    move-object/from16 v31, v14

    :cond_25
    const-string v11, "204"

    invoke-virtual {v5, v12, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "open_page_status"

    invoke-virtual {v5, v11, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string v4, "open_page_fail_reason"

    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v8, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Lkotlin/Pair;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v16, 0x0

    :try_start_4
    aput-object v0, v9, v16

    const/4 v0, 0x1

    aput-object v8, v9, v0

    invoke-static {v9}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_16

    :catchall_1
    const/16 v16, 0x0

    :catchall_2
    :goto_16
    :try_start_5
    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo()I

    move-result v0

    goto :goto_17

    :cond_26
    move/from16 v0, v38

    :goto_17
    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "pageH5ProgressStatus"

    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0OO()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_28

    :cond_27
    move-object/from16 v2, v37

    :cond_28
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pageDomContentLoadedStatus"

    iget-object v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    :cond_29
    move-object/from16 v2, v37

    :cond_2a
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO()I

    move-result v0

    goto :goto_18

    :cond_2b
    move/from16 v0, v38

    :goto_18
    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o()I

    move-result v0

    move-object/from16 v2, v32

    goto :goto_19

    :cond_2c
    move-object/from16 v2, v32

    move/from16 v0, v38

    :goto_19
    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O()I

    move-result v38

    :cond_2d
    move-object/from16 v2, v31

    move/from16 v0, v38

    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0Oo()Ljava/lang/String;

    move-result-object v40

    :cond_2e
    move-object/from16 v2, p4

    move-object/from16 v0, v40

    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    :cond_2f
    :goto_1a
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move-object v9, v5

    move/from16 v1, v16

    move-object/from16 v39, v35

    move-object/from16 v19, v37

    :goto_1b
    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v44, 0x0

    goto/16 :goto_46

    :catchall_3
    :cond_30
    :goto_1c
    return-void

    :cond_31
    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move-object/from16 v19, v2

    move-object v9, v5

    move-object/from16 v3, v35

    :goto_1d
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_47

    :pswitch_2f
    move-object/from16 v37, v2

    const/16 v16, 0x0

    invoke-virtual {v6, v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0(Landroid/os/Bundle;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move-object v9, v5

    move/from16 v1, v16

    move-object/from16 v19, v37

    const/4 v2, 0x1

    goto/16 :goto_1

    :pswitch_30
    move-object/from16 v47, p4

    move-object/from16 v37, v2

    move-object v1, v9

    move-object/from16 v9, v26

    move-object/from16 v0, v28

    move-object/from16 v7, v32

    move-object/from16 v15, v33

    move-object/from16 v2, v36

    const/16 v16, 0x0

    if-eqz v1, :cond_54

    move-object/from16 v32, v7

    :try_start_6
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    move-object/from16 v33, v15

    move-object/from16 v15, v37

    invoke-virtual {v5, v7, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v36, v2

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v5, v2, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v0

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v0, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v46, v3

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->REPORT_PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v3, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v37, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p4, v13

    const-string v13, "chainEnd -> msg:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_32

    move-object v13, v0

    goto :goto_1e

    :cond_32
    move-object v13, v3

    :goto_1e
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_34

    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-object v4, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto :goto_1f

    :cond_33
    const-wide/16 v22, 0x0

    :goto_1f
    sub-long v17, v17, v22

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    :cond_34
    const/4 v9, 0x1

    goto/16 :goto_23

    :cond_35
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_37

    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO00o()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-object v4, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto :goto_20

    :cond_36
    const-wide/16 v22, 0x0

    :goto_20
    sub-long v17, v17, v22

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    :cond_37
    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_38
    move-object/from16 v3, v40

    :goto_21
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_3a

    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-object v4, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto :goto_22

    :cond_39
    const-wide/16 v22, 0x0

    :goto_22
    sub-long v17, v17, v22

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    :cond_3a
    :goto_23
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    :cond_3b
    move-object/from16 v3, v40

    :goto_24
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    move-object/from16 v3, v21

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v20

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, v19

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    move-object/from16 v0, p0

    const-wide/16 v7, 0x0

    move-object v1, v2

    move-object/from16 v19, v37

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v4, p1

    move-object v11, v5

    move v10, v9

    move/from16 v9, v16

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move-object v9, v11

    goto/16 :goto_39

    :cond_3c
    move-object/from16 v15, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v19, v37

    move-object/from16 v48, v5

    move-object v5, v1

    move-object/from16 v1, v48

    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    iget-object v9, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v9, :cond_3d

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object v9

    goto :goto_25

    :cond_3d
    move-object/from16 v9, v40

    :goto_25
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    iget-object v9, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v9, :cond_3f

    invoke-virtual {v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO()Z

    move-result v9

    move-object/from16 v16, v1

    const/4 v1, 0x1

    if-ne v9, v1, :cond_3e

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    move-object/from16 v0, p0

    move-object/from16 v9, v16

    move-object v1, v2

    move-object v2, v3

    move-object v3, v9

    move-object/from16 v4, p1

    move-object v15, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    goto/16 :goto_39

    :cond_3e
    move-object v3, v0

    move-object v15, v5

    move-object/from16 v9, v16

    goto :goto_26

    :cond_3f
    move-object v3, v0

    move-object v9, v1

    move-object v15, v5

    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportApp -> msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v9, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o()V

    const-string v1, "300"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v5, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v25, v8

    goto :goto_27

    :cond_40
    move-object/from16 v8, v25

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_28
    move-object/from16 v1, p4

    goto :goto_29

    :cond_41
    move-object/from16 v8, v25

    goto :goto_28

    :goto_29
    invoke-virtual {v9, v1, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_45

    const-class v1, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_2a

    :cond_42
    move-object/from16 v1, v40

    :goto_2a
    instance-of v4, v1, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    if-eqz v4, :cond_43

    check-cast v1, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    goto :goto_2b

    :cond_43
    move-object/from16 v1, v40

    :goto_2b
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getMStarted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2c

    :cond_44
    move-object/from16 v1, v40

    :goto_2c
    const-string v4, "isForeground"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_45
    const-string v1, "true"

    move-object/from16 v4, v46

    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO()Z

    move-result v5

    move-object/from16 v1, v28

    goto :goto_2d

    :cond_46
    move-object/from16 v1, v28

    const/4 v5, 0x0

    :goto_2d
    invoke-virtual {v9, v1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo()I

    move-result v1

    move-object/from16 v4, v36

    goto :goto_2e

    :cond_47
    move-object/from16 v4, v36

    move/from16 v1, v38

    :goto_2e
    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO()I

    move-result v1

    move-object/from16 v4, v33

    goto :goto_2f

    :cond_48
    move-object/from16 v4, v33

    move/from16 v1, v38

    :goto_2f
    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o()I

    move-result v1

    move-object/from16 v4, v32

    goto :goto_30

    :cond_49
    move-object/from16 v4, v32

    move/from16 v1, v38

    :goto_30
    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O()I

    move-result v38

    :cond_4a
    move-object/from16 v4, v31

    move/from16 v1, v38

    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4b

    goto :goto_32

    :cond_4b
    :goto_31
    move-object/from16 v4, v30

    goto :goto_33

    :cond_4c
    :goto_32
    move-object/from16 v1, v19

    goto :goto_31

    :goto_33
    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4d

    goto :goto_35

    :cond_4d
    :goto_34
    move-object/from16 v4, v29

    goto :goto_36

    :cond_4e
    :goto_35
    move-object/from16 v1, v19

    goto :goto_34

    :goto_36
    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TotalCommunicationTime:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v34 .. v34}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    iget-object v5, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_4f

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0()Ljava/lang/String;

    move-result-object v5

    goto :goto_37

    :cond_4f
    move-object/from16 v5, v40

    :goto_37
    invoke-interface {v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->getTotalTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v9, v1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TotalCommunicationNum:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v34 .. v34}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    iget-object v5, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v5, :cond_50

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_50

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v5, :cond_50

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0()Ljava/lang/String;

    move-result-object v5

    goto :goto_38

    :cond_50
    move-object/from16 v5, v40

    :goto_38
    invoke-interface {v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->getTotalNum(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0Oo()Ljava/lang/String;

    move-result-object v40

    :cond_51
    move-object/from16 v1, v40

    move-object/from16 v3, v47

    invoke-virtual {v9, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-nez v1, :cond_52

    goto :goto_39

    :cond_52
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o(Z)V

    :goto_39
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_time"

    :goto_3a
    move-object/from16 v39, v1

    :goto_3b
    const/4 v1, 0x0

    goto/16 :goto_1b

    :catchall_4
    :cond_53
    return-void

    :cond_54
    move-object/from16 v0, p1

    move-object v15, v1

    move-object v9, v5

    move-object/from16 v19, v37

    :goto_3c
    move-object/from16 v3, v19

    goto/16 :goto_1d

    :pswitch_31
    move-object v15, v9

    move-object v9, v5

    if-eqz v15, :cond_55

    invoke-virtual {v6, v15, v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_55
    return-void

    :pswitch_32
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "600"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_fps"

    goto :goto_3a

    :pswitch_33
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "202"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_3d
    move-object/from16 v39, v35

    goto :goto_3b

    :pswitch_34
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v1, v24

    move-object v9, v5

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    move-object/from16 v2, v41

    invoke-virtual {v9, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_3e
    move-object/from16 v39, v22

    goto :goto_3b

    :pswitch_35
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v41

    move-object v9, v5

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v23

    invoke-virtual {v9, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3e

    :pswitch_36
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v41

    move-object v9, v5

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v18

    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3e

    :pswitch_37
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    move-object v9, v5

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3"

    invoke-virtual {v9, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_3f
    move-object/from16 v39, v17

    goto/16 :goto_3b

    :pswitch_38
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object/from16 v3, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    move-object v9, v5

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3f

    :pswitch_39
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "26"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3a
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "25"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3b
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "24"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3c
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "23"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3d
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "22"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3e
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "21"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_3f
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "20"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_40
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "19"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_41
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "18"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_42
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "17"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_43
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "16"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_44
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "15"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_45
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "14"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_46
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "13"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_47
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "12"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_48
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "11"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_49
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "10"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_4a
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "9"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3b

    :pswitch_4b
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    const-string v1, "200"

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_3d

    :pswitch_4c
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "miniapp_sdkInit"

    goto/16 :goto_3a

    :pswitch_4d
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    sub-long/2addr v1, v3

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_40
    move-wide/from16 v44, v1

    move-object/from16 v39, v19

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto/16 :goto_5

    :pswitch_4e
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    move-object v9, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    sub-long/2addr v1, v3

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_40

    :pswitch_4f
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    move-object v9, v5

    iput-boolean v1, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0OO:Z

    iget-wide v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_56

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    :goto_41
    sub-long/2addr v2, v7

    goto :goto_42

    :cond_56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0:J

    goto :goto_41

    :goto_42
    const-string v7, "201"

    invoke-virtual {v9, v12, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "render_time"

    invoke-virtual {v9, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-wide/from16 v44, v2

    move-object/from16 v39, v35

    const/4 v2, 0x1

    goto/16 :goto_46

    :pswitch_50
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    move-object v9, v5

    const-wide/16 v4, 0x0

    iget-boolean v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0OO:Z

    if-nez v2, :cond_57

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0:J

    :cond_57
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v2, 0x1

    goto :goto_45

    :pswitch_51
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v9, v5

    const-wide/16 v4, 0x0

    iput-boolean v2, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0OO:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0:J

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_45

    :pswitch_52
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v9, v5

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v10, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    sub-long/2addr v7, v10

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_43
    move-wide/from16 v44, v7

    :goto_44
    move-object/from16 v39, v19

    goto :goto_46

    :pswitch_53
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v9, v5

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v10, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    sub-long/2addr v7, v10

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_43

    :pswitch_54
    move-object/from16 v19, v2

    move-object v0, v7

    move-object v15, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v9, v5

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o:J

    iput-wide v4, v6, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0O0:J

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_45
    move-wide/from16 v44, v4

    goto :goto_44

    :goto_46
    move-object/from16 v3, v39

    move-wide/from16 v7, v44

    :goto_47
    if-eqz v15, :cond_58

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_58

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-\u4fe1\u606f:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_48

    :cond_58
    move-object/from16 v10, v19

    :goto_48
    cmp-long v4, v7, v4

    if-lez v4, :cond_59

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-\u8017\u65f6:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_59
    if-lez v4, :cond_5a

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_RENDER_T1:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    move-object/from16 v7, p2

    if-ne v7, v5, :cond_5b

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "-"

    const-string v13, ""

    const/4 v14, 0x0

    move-object v11, v10

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    goto :goto_49

    :cond_5a
    move-object/from16 v7, p2

    :cond_5b
    :goto_49
    if-eqz v0, :cond_5c

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->getDes()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4a
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4b

    :cond_5c
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->getDes()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4a

    :goto_4b
    const-class v8, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {v8}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    const-class v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->getData()Ljava/util/HashMap;

    move-result-object v10

    if-eqz v10, :cond_60

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    const-string v11, "it.entries"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5d
    :goto_4c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_5e

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    const-string v13, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v12, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_5e
    instance-of v12, v12, Ljava/lang/Long;

    if-eqz v12, :cond_5d

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    const-string v13, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v9, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_4c

    :cond_5f
    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_60
    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v8, v0, v3, v9}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v4, :cond_61

    move v1, v2

    :cond_61
    const-string v0, "TmcPerferenceAnalyse"

    invoke-static {v0, v5, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/a;->a(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportPage -> appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pagePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", miniappId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reportPagePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oldChain"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO00o(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "PointTrack"

    const-string v3, "tryInitAthena failed!"

    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "object_id"

    const-string v2, "300"

    invoke-virtual {p3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v2, "chain_id_"

    if-eqz v1, :cond_0

    :try_start_3
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0Oo:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {p3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_0
    const-string v1, "page_path"

    invoke-virtual {p3, v1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "open_page_status"

    const-string v1, "true"

    invoke-virtual {p3, p5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x0

    if-eqz p4, :cond_4

    const-class v1, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {v1, p4}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object p4

    goto :goto_2

    :cond_1
    move-object p4, p5

    :goto_2
    instance-of v1, p4, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    if-eqz v1, :cond_2

    check-cast p4, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    goto :goto_3

    :cond_2
    move-object p4, p5

    :goto_3
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getMStarted()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    goto :goto_4

    :cond_3
    move-object p4, p5

    :goto_4
    const-string v1, "isForeground"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p4, "downloadFrameworkMode"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    const/4 v3, -0x1

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "pageH5ProgressStatus"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v4, ""

    if-eqz v1, :cond_6

    :try_start_4
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v1, :cond_6

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0:Ljava/lang/String;

    if-nez v1, :cond_7

    :cond_6
    move-object v1, v4

    :cond_7
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "pageDomContentLoadedStatus"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v1, :cond_9

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    move-object v4, v1

    :cond_9
    :goto_6
    invoke-virtual {p3, p4, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "downloadAppMode"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_a

    iget v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    goto :goto_7

    :cond_a
    move v1, v3

    :goto_7
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "zipFrameworkMode"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_b

    iget v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    goto :goto_8

    :cond_b
    move v1, v3

    :goto_8
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "zipAppMode"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_c

    iget v3, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    :cond_c
    invoke-virtual {p3, p4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TotalCommunicationTime:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v3, :cond_d

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0:Ljava/lang/String;

    goto :goto_9

    :cond_d
    move-object v3, p5

    :goto_9
    invoke-interface {v1, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->getTotalTime(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p3, p4, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object p4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TotalCommunicationNum:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v1, :cond_e

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0O0:Ljava/lang/String;

    goto :goto_a

    :cond_e
    move-object v1, p5

    :goto_a
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->getTotalNum(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, p4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "navigationType"

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz p1, :cond_f

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz p1, :cond_f

    iget-object p5, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0oO:Ljava/lang/String;

    :cond_f
    invoke-virtual {p3, p4, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-void
.end method

.method public final OooO0O0(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v3, "app"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "<set-?>"

    if-eqz v3, :cond_7

    :try_start_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v1, :cond_9

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_FRAMEWORK_MODE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_FRAMEWORK_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DOWNLOAD_APP_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    goto/16 :goto_1

    :cond_2
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->ZIP_FRAMEWORK_MODE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->ZIP_FRAMEWORK_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    goto/16 :goto_1

    :cond_3
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->ZIP_APP_MODE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->ZIP_APP_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    goto/16 :goto_1

    :cond_4
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "bundle.getString(APP_H5_PROGRESS_STATUS, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "bundle.getString(APP_DOMCONTENTLOADED_STATUS, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_OFF_SCREEN_RENDER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_OFF_SCREEN_RENDER:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    goto :goto_1

    :cond_7
    const-string v3, "page"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    if-eqz v2, :cond_9

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;

    if-eqz v1, :cond_9

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "bundle.getString(PAGE_H5_PROGRESS_STATUS, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o0:Ljava/lang/String;

    goto :goto_1

    :cond_8
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "bundle.getString(PAGE_DOMCONTENTLOADED_STATUS, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;->OooO0o:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chainInsert fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method
