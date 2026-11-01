.class public final Lcom/cloud/tmc/miniapp/utils/toast/style/NoHasBgStateToastStyle;
.super Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;Z)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x78

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v3

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x28

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v3

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->createIconView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->createTextView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method
