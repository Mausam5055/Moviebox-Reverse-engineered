.class public final Lcom/cloud/tmc/miniapp/widget/TabBarView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/cloud/tmc/integration/structure/ui/TabBar;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public OooO0OO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/TabBarView$OooO0O0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/TabBarView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO00o:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/TabBarView$OooO0OO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/TabBarView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO0O0:Lkotlin/Lazy;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/cloud/tmc/miniapp/R$layout;->layout_mini_tab_bar:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    sget p2, Lcom/cloud/tmc/miniapp/R$color;->mini_color_transparent:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColorResource(I)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/TabBarView$OooO00o;

    invoke-direct {p2}, Lcom/cloud/tmc/miniapp/widget/TabBarView$OooO00o;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/TabBarView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Float;F)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO00o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tabLayout>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method private final getViewLineTop()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-viewLineTop>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;)I
    .locals 2

    const-string v0, "white"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$color;->default_tab_bar_title_white_color:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string v0, "black"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$color;->default_tab_bar_title_black_color:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "TabBarView"

    const-string v1, "Invalid border style"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final OooO00o(I)Z
    .locals 3

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TabBarView"

    if-nez v0, :cond_0

    const-string p1, "tab not is visible"

    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-ltz p1, :cond_1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "index out of tab count"

    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public hideTabBar(Z)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v0, v3

    aput p1, v0, v1

    const-string p1, "translationY"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/r;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/r;-><init>(Lcom/cloud/tmc/miniapp/widget/TabBarView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :goto_0
    return v1
.end method

.method public isShow()Z
    .locals 2

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeTabBarBadge(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO00o(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    instance-of v2, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_3
    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final setCommonresId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTabBarBadge(ILjava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO00o(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    instance-of v2, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->setTabBarBadge(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_3
    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    const/4 v3, 0x0

    if-ge v1, v0, :cond_9

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    instance-of v5, v4, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getTabSelected()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez p2, :cond_4

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getSelectedColor()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v3

    goto :goto_3

    :cond_4
    move-object v2, p2

    goto :goto_3

    :cond_5
    if-nez p1, :cond_7

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getColor()Ljava/lang/String;

    move-result-object v3

    :cond_6
    if-nez v3, :cond_3

    goto :goto_3

    :cond_7
    move-object v2, p1

    :goto_3
    invoke-virtual {v4, v2}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    if-nez p3, :cond_c

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO0OO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_a
    move-object p1, v3

    :goto_4
    if-nez p1, :cond_b

    move-object p3, v2

    goto :goto_5

    :cond_b
    move-object p3, p1

    :cond_c
    :goto_5
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_d

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    const-string p2, "[TabBarView]: set tab background color error"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getViewLineTop()Landroid/view/View;

    move-result-object p1

    if-nez p4, :cond_f

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO0OO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getBorderStyle()Ljava/lang/String;

    move-result-object p2

    move-object p4, p2

    goto :goto_8

    :cond_e
    move-object p4, v3

    :goto_8
    if-nez p4, :cond_f

    move-object p4, v2

    :cond_f
    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO00o(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setTabs(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V
    .locals 6

    const-string v0, "commonresId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO0OO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "[TabBarView]: same config, setTabs return."

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO0OO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->tabBarCustom()Z

    move-result v0

    const-class v1, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    const-string p2, "Tab bar view does not support customization"

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    const-string p1, "[TabBarView]: Tab bar view does not support customization"

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->tabBarPositionIsTop()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    const-string p2, "Tab bar view does not support top position"

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    const-string p1, "[TabBarView]: Tab bar view does not support top position"

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-gt v3, v2, :cond_6

    const/4 v3, 0x6

    if-ge v2, v3, :cond_6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    new-instance v2, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v2, p3}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->setCommonresId(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1, p2}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v3

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    iget-object v5, v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    iget-object v1, v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v2, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    :try_start_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_5

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p3

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string p3, "[TabBarView]: set tab background color error"

    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getViewLineTop()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getBorderStyle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO00o(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    const-string p2, "Tab bar view numbers is between 2 and 5"

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    const-string p1, "[TabBarView]: Tab bar view is between 2 and 5"

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    const-string p2, "Tab bar view tabs is not null"

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    const-string p1, "[TabBarView]: Tab bar view is not null"

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setUnreadIconVisible(IZ)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO00o(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    instance-of v2, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->setUnreadIconVisible(Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_3
    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public setUnreadVisible(IZ)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO00o(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    instance-of v2, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->setUnreadVisible(Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_3
    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public showTabBar(Z)Z
    .locals 4

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput p1, v0, v3

    aput v1, v0, v2

    const-string p1, "translationY"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return v2
.end method

.method public showTabBarUnreadIcon(ILjava/lang/String;Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "iconPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "page"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO00o(I)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p4, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    instance-of v3, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_5

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance p3, Lcom/cloud/tmc/miniapp/widget/OooO0o;

    invoke-direct {p3, p4, p1}, Lcom/cloud/tmc/miniapp/widget/OooO0o;-><init>(Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    invoke-virtual {p1, p2, v2, p3}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_5
    return-void
.end method

.method public switchCurrentTab(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public updateAllTabs(Ljava/util/List;Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;",
            ">;",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ")Z"
        }
    .end annotation

    const-string v0, "tabs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    const-string v1, "TabBarView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "tab not is visible"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v3

    if-eq v0, v3, :cond_1

    const-string p1, "tab size mismatch with tab count"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    invoke-virtual {p0, v2, v1, p2}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->updateTabItem(ILcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public updateTabItem(ILcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 2

    const-string v0, "tab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO00o(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.cloud.tmc.miniapp.widget.TabBarItemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    invoke-virtual {p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
