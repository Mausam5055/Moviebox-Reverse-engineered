.class public final Lcom/cloud/tmc/miniapp/utils/toast/style/AddHomeSuccessToastStyle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->mini_toast_add_home_success_layout:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_text_add_home_msg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const-string v0, "inflate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getGravity()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getHorizontalMargin(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)F

    move-result v0

    return v0
.end method

.method public getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;

    return-object v0
.end method

.method public getVerticalMargin()F
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getVerticalMargin(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)F

    move-result v0

    return v0
.end method

.method public getXOffset()I
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getXOffset(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)I

    move-result v0

    return v0
.end method

.method public getYOffset()I
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getYOffset(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)I

    move-result v0

    return v0
.end method
