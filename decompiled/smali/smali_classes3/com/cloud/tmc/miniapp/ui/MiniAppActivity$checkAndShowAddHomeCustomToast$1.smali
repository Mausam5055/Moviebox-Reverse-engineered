.class final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->checkAndShowAddHomeCustomToast(IJJLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $closeAddHomeDelayTime:J

.field public final synthetic $iconUrl:Ljava/lang/String;

.field public final synthetic $showToastMessage:Ljava/lang/String;

.field public final synthetic $showType:I

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->$showType:I

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->$showToastMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->$iconUrl:Ljava/lang/String;

    iput-wide p5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->$closeAddHomeDelayTime:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->invoke$lambda$3$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->invoke$lambda$1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->invoke$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic d(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->invoke$lambda$1$lambda$0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getPvAddHomeCustom1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getPvAddHomeCustom1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    move-result-object p1

    new-instance p2, Lcom/cloud/tmc/miniapp/ui/f0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/ui/f0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getPvAddHomeCustom1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final invoke$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getPvAddHomeCustom2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getPvAddHomeCustom2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    move-result-object p1

    new-instance p2, Lcom/cloud/tmc/miniapp/ui/g0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/ui/g0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z

    return-void
.end method

.method private static final invoke$lambda$3$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getPvAddHomeCustom2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->$showType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getPvAddHomeCustom2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->$showToastMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->$iconUrl:Ljava/lang/String;

    iget-wide v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->$closeAddHomeDelayTime:J

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/h0;

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/ui/h0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$getPvAddHomeCustom1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->$showToastMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->$iconUrl:Ljava/lang/String;

    iget-wide v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->$closeAddHomeDelayTime:J

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/i0;

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/ui/i0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
