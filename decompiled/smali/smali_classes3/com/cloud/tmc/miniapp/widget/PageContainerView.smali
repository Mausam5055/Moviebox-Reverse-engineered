.class public final Lcom/cloud/tmc/miniapp/widget/PageContainerView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/cloud/tmc/integration/structure/ui/PageContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public attachPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    return-object p0
.end method
