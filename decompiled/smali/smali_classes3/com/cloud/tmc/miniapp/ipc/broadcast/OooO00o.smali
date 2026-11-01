.class public final Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "miniGaid"

    :try_start_0
    const-string v1, "miniProcessId"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->updateMiniPid(I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->getDataSyncCallback()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "miniInitProcess"

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;->onSyncData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    const-string v0, "MiniBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiniBroadcastReceiver -> reportDataToPs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "miniGaid"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->getDataSyncCallback()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppDataSyncCallback;->onSyncData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v0

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiniBroadcastReceiver -> onReceive:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiniBroadcastReceiver"

    invoke-static {p2, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_6

    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v1, "com.cloud.tmc.miniapp.process_id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Landroid/os/Bundle;)V

    goto/16 :goto_5

    :cond_8
    const-string v2, "com.cloud.tmc.miniapp.addhome_success"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "miniAddHomeSuccess"

    if-eqz v3, :cond_9

    invoke-virtual {p0, v4, p1}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_5

    :cond_9
    const-string v3, "com.cloud.tmc.miniapp.start_time"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "miniAppStartTime"

    if-eqz v5, :cond_a

    invoke-virtual {p0, v6, p1}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_a
    const-string v5, "com.cloud.tmc.miniapp.use_time"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "miniAppUseTime"

    if-eqz v7, :cond_b

    invoke-virtual {p0, v8, p1}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_b
    const-string p1, "com.cloud.tmc.miniapp.report_cache"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    :try_start_1
    const-string p1, "reportCachedata"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/model/CacheReportBean;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/CacheReportBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/CacheReportBean;->getData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Landroid/os/Bundle;)V

    goto :goto_4

    :cond_d
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/CacheReportBean;->getData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_e
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/CacheReportBean;->getData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, v6, p2}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_f
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/CacheReportBean;->getData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, v8, p2}, Lcom/cloud/tmc/miniapp/ipc/broadcast/OooO00o;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    :cond_10
    :goto_5
    return-void
.end method
