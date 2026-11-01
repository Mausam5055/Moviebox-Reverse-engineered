.class public final Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/cloud/tmc/integration/structure/ui/TitleBar;


# instance fields
.field public final OooO:Lkotlin/Lazy;

.field public OooO00o:Landroid/view/View$OnClickListener;

.field public OooO0O0:Landroid/view/View$OnClickListener;

.field public OooO0OO:Landroid/view/View$OnClickListener;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public final OooO0oO:Lkotlin/Lazy;

.field public final OooO0oo:Lkotlin/Lazy;

.field public OooOO0:I

.field public OooOO0O:Z

.field public OooOO0o:I

.field public OooOOO:Lcom/cloud/tmc/miniapp/widget/AddScreenView;

.field public OooOOO0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0Oo:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOO0O;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0o0:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0OO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0o:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0oO:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOO0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0oo:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOOO0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO:Lkotlin/Lazy;

    const/4 p2, 0x1

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0o:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/cloud/tmc/miniapp/R$layout;->layout_mini_app_title_bar:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/d;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/d;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "TitleBarView"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object p1

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO00o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->setOnLeftClickListener(Lkotlin/jvm/functions/Function0;)V

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0O0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->setOnRightClickListener(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO00o()V

    return-void
.end method

.method public static final synthetic OooO00o(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)Lcom/cloud/tmc/miniapp/widget/CapsuleView;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object p0

    return-object p0
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO00o:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0O0:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0OO:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-capsule>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    return-object v0
.end method

.method private final getFlHome()Landroid/widget/FrameLayout;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-flHome>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getFlMenuContainer()Landroid/widget/FrameLayout;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-flMenuContainer>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getIvAddScreen()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivAddScreen>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getIvHome()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivHome>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getTvAppTitle()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvAppTitle>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final OooO00o()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0o:I

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setThemeMode(I)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->getStatusHeight()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/constants/IntegrationConstants;->INSTANCE:Lcom/cloud/tmc/integration/constants/IntegrationConstants;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/constants/IntegrationConstants;->getDefaultNavigationBarBackgroundColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "[ImmersiveTitleBarView]: error"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public attachPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->addScreenView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/AddScreenView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->getStatusHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_100:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_m_100:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/c;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/c;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO:Lcom/cloud/tmc/miniapp/widget/AddScreenView;

    return-void
.end method

.method public getAddScreenVisibility()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO:Lcom/cloud/tmc/miniapp/widget/AddScreenView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getHomeAction()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isTransparent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0O:Z

    return v0
.end method

.method public setAddScreenVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0O:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO0:I

    :cond_0
    return-void
.end method

.method public setHomeAction(IZ)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0o:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setThemeMode(I)V

    :cond_0
    return-void
.end method

.method public setHomeVisibility(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getFlHome()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public setOnAddScreenClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0OO:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO00o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnHomeClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0O0:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setThemeMode(I)V
    .locals 5

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0o:I

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO:Lcom/cloud/tmc/miniapp/widget/AddScreenView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO:Lcom/cloud/tmc/miniapp/widget/AddScreenView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/AddScreenView;->setThemeMode(I)V

    :cond_0
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object v0

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    if-ne v2, v3, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v3}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;ILjava/util/HashMap;I)V

    :cond_4
    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->shape_bg_title_bar_no_stroke_black_mode:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_2

    :cond_6
    sget v4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_immersive_title_bar_back_black_mode:I

    goto :goto_2

    :cond_7
    sget v4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_immersive_title_bar_home_black_mode:I

    :goto_2
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->shape_bg_title_bar_no_stroke_white_mode:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_9

    goto :goto_3

    :cond_9
    sget v4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_back_white_mode:I

    goto :goto_3

    :cond_a
    sget v4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_home_white_mode:I

    :goto_3
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_4
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getTvAppTitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleBarVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0o:I

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setThemeMode(I)V

    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public setTitleColor(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getTvAppTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    sget p1, Lcom/cloud/tmc/miniapp/R$color;->default_navigation_bar_title_white_color:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/cloud/tmc/miniapp/R$color;->default_navigation_bar_title_black_color:I

    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleVisible(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getTvAppTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public setTransparent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0O:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO0:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
