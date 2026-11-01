.class public final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;->invoke()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $this_apply:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->$this_apply:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 26

    move-object/from16 v1, p0

    move/from16 v0, p3

    const-string v2, "1000391591855976448"

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->$this_apply:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    iget-object v3, v3, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    return-void

    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x1eda3a31

    const-string v5, "MiniAppActivity"

    const/4 v6, 0x1

    const-string v7, "extraMiniClearAllPages"

    const-string v8, "pages/index/index"

    const-string v9, "query"

    const/4 v10, 0x0

    const-class v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v12, "page"

    const-string v13, ""

    const-string v14, "1000886706715795456"

    if-eq v3, v4, :cond_b

    const v4, -0x132f42ba

    if-eq v3, v4, :cond_9

    const v4, -0xb6a147b

    if-eq v3, v4, :cond_5

    const v2, 0x38eb0007

    if-eq v3, v2, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_5

    :cond_3
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "pages/notification/notification"

    invoke-virtual {v2, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "entrance%3Dlayer"

    invoke-virtual {v2, v9, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0, v14, v13, v2}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CLICK_MESSAGE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v0, v2, v3, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CLICK_MC:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v0, v2, v3, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const-string v2, "120010"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v12, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0, v14, v2, v3}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v3, "miniMsgKvId"

    const-string v4, "miniNewMsgStatus"

    const/4 v6, 0x0

    invoke-interface {v2, v0, v3, v4, v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getDialog(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :goto_1
    invoke-static {v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_5
    const-string v3, "feedback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getDialog(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "feedback_enter"

    invoke-interface {v0, v3, v5, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :try_start_1
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v3, "miniFeedbackId"

    invoke-interface {v0, v3, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-object v4, v2

    iget-object v3, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v2, v10

    :goto_2
    const-string v5, "feedback_miniappId"

    invoke-virtual {v6, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v10

    :cond_8
    invoke-virtual {v2, v10}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "feedback_miniappVersion"

    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    goto/16 :goto_5

    :cond_9
    const-string v2, "refreshApp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_5

    :cond_a
    :try_start_2
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->refresh()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh fail!!,msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_b
    const-string v2, "permission"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_5

    :cond_c
    :try_start_3
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v14, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const-string v15, "1000550440273772544"

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v12, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v19}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_4

    :cond_d
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const-string v21, "1000550440273772544"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const-string v4, "pages/settings/settings"

    invoke-virtual {v2, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v10

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting_miniappId%3D"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, v0

    move-object/from16 v23, v2

    invoke-static/range {v20 .. v25}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    :goto_3
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getDialog(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CLICK_AUTH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v0, v2, v3, v13}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :goto_4
    invoke-static {v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_5
    return-void
.end method
