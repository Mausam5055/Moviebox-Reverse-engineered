.class public final Lcom/cloud/tmc/integration/utils/ext/PageExtKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0010\u0008\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "checkAlertBeforeUnload",
        "",
        "Lcom/cloud/tmc/integration/structure/Page;",
        "block",
        "Lkotlin/Function0;",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final declared-synchronized checkAlertBeforeUnload(Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function0;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    const-class v1, Lcom/cloud/tmc/integration/utils/ext/PageExtKt;

    monitor-enter v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v3, "miniAppAlertBeforeUnload"

    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/node/ValueStore;->getBooleanValue(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    move-object v3, v2

    :goto_0
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v15, 0x1

    if-eqz v3, :cond_1

    monitor-exit v1

    return v15

    :cond_1
    const/4 v3, 0x0

    if-eqz v0, :cond_7

    :try_start_1
    const-class v4, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    invoke-interface {v0, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface/range {p0 .. p0}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    move-result-object v5

    instance-of v6, v5, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz v6, :cond_3

    move-object v2, v5

    check-cast v2, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    :cond_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v13

    if-nez v13, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "miniAppAlertBeforeUnload"

    invoke-interface {v0, v2, v15}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    const-class v2, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;

    move-object/from16 v3, p1

    invoke-direct {v14, v0, v4, v3}, Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;-><init>(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;Lkotlin/jvm/functions/Function0;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v2

    invoke-interface/range {v4 .. v14}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->showCommonDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/CommonDialogCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v15

    :cond_5
    monitor-exit v1

    return v3

    :cond_6
    :goto_1
    monitor-exit v1

    return v3

    :cond_7
    :goto_2
    monitor-exit v1

    return v3

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static synthetic checkAlertBeforeUnload$default(Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ext/PageExtKt;->checkAlertBeforeUnload(Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method
