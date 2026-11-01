.class final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/cloud/tmc/miniapp/dialog/OooOOO0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;->invoke$lambda$3$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final invoke$lambda$3$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_btn:I

    const-string v1, ""

    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_2

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getDialog(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_MORE_EXIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {p1, p0, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->layer_app_brand:I

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_ENTER_DEVELOP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getDialog(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getAppBrandBundle(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/model/AppModel;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p0, v0, p1}, Lcom/cloud/tmc/miniapp/ui/AppBrandProfileActivity$Companion;->launch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;
    .locals 29

    move-object/from16 v1, p0

    new-instance v2, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    iget-object v0, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-direct {v2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v4, "1000886706715795456"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    sget v6, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_message:I

    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_message:I

    invoke-virtual {v2, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x18

    const/4 v11, 0x0

    const-string v5, "message"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    sget v14, Lcom/cloud/tmc/miniapp/R$drawable;->mini_icon_bottom_dialog_btn_notification:I

    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_miniapp_center:I

    invoke-virtual {v2, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x18

    const/16 v19, 0x0

    const-string v13, "message"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    new-instance v12, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    sget v6, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_permission_icon:I

    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_manager_title:I

    invoke-virtual {v2, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x18

    const/4 v11, 0x0

    const-string v5, "permission"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    sget v15, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_feedback:I

    sget v5, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_feedback:I

    invoke-virtual {v2, v5}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x18

    const/16 v20, 0x0

    const-string v14, "feedback"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v4

    invoke-direct/range {v13 .. v20}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    sget v23, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_refresh:I

    sget v6, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_reopen:I

    invoke-virtual {v2, v6}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x18

    const/16 v28, 0x0

    const-string v22, "refreshApp"

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v28}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v12, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    invoke-virtual {v6}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "message"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_1
    check-cast v5, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v5, "BottomDialog"

    invoke-static {v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    iget-object v0, v2, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;

    invoke-direct {v0, v2, v3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2$1$1;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    iput-object v0, v2, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0oo:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/j0;

    invoke-direct {v0, v3}, Lcom/cloud/tmc/miniapp/ui/j0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    sget v3, Lcom/cloud/tmc/miniapp/R$id;->tv_btn:I

    sget v4, Lcom/cloud/tmc/miniapp/R$id;->layer_app_brand:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;->invoke()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    move-result-object v0

    return-object v0
.end method
