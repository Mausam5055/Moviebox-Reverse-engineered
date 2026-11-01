.class public final Lcom/cloud/tmc/miniapp/widget/OooO0OO;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public OooO:Lcom/cloud/tmc/integration/structure/Page;

.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

.field public final OooO0o0:Lkotlin/Lazy;

.field public OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

.field public OooO0oo:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

.field public OooOO0:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

.field public OooOO0O:Z

.field public OooOO0o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOO0O;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0O0:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0O0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0OO:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0OO;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0Oo:Lkotlin/Lazy;

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO00o;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o0:Lkotlin/Lazy;

    const-class p2, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "get(\n        IResourceProcessor::class.java\n    )"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/cloud/tmc/miniapp/R$layout;->layout_mini_tab_item:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const-string p1, ""

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic OooO00o(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvRedIcon()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic OooO0O0(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvTabIcon()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    return-object p0
.end method

.method private final getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivBadge>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getIvRed()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivRed>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getIvRedIcon()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivRedIcon>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getIvTabIcon()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivTabIcon>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getTvTabName()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvTabName>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method


# virtual methods
.method public final OooO00o()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 3

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->tabBarPositionIsTop()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvTabIcon()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    goto :goto_3

    :cond_0
    iget-object v0, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iget-object v2, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    :cond_5
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOOO0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    invoke-virtual {p0, v1, v0, p2}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_6
    :goto_2
    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->text:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getTvTabName()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 3

    const-string v0, "tabBarConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oo:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0O:Z

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->tabBarPositionIsTop()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvTabIcon()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p3

    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0O:Z

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v1, p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance p3, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOO0;

    invoke-direct {p3, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    invoke-virtual {p0, v1, v0, p3}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getTvTabName()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p3

    iget-object p2, p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->text:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0O:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getSelectedColor()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getColor()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Ljava/lang/String;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getTvTabName()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "[TabBarItemView]: set tab item text color error"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isURL(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, ".miniapp.transsion.com"

    invoke-static {p1, v3, v1, v2, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    invoke-interface {v1, p1, p2, v2}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    invoke-interface {v1, p1, p2}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    :goto_1
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getPage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO:Lcom/cloud/tmc/integration/structure/Page;

    return-object v0
.end method

.method public final getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    return-object v0
.end method

.method public final getTabBarList()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oo:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    return-object v0
.end method

.method public final getTabSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0O:Z

    return v0
.end method

.method public final setCommonresId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    return-void
.end method

.method public final setPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO:Lcom/cloud/tmc/integration/structure/Page;

    return-void
.end method

.method public final setTabBarBadge(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO00o(Landroid/view/View;)Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;

    const v2, 0x800013

    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0oo:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0OO:F

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0OO()V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO:F

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0:F

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0oO:Z

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvRed()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->setUnreadVisible(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvRedIcon()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->setUnreadIconVisible(Z)V

    :cond_3
    sget-object v0, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, ".*[\\u4e00-\\u9fa5]+.*"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    array-length v0, v0

    if-le v0, v1, :cond_6

    const-string p1, "..."

    :cond_6
    check-cast v2, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;

    iput-object p1, v2, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, v2, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o0:I

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0OO()V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final setTabBarConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    return-void
.end method

.method public final setTabBarList(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oo:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    return-void
.end method

.method public final setTabSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0O:Z

    return-void
.end method

.method public final setUnreadIconVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o()V

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvRedIcon()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final setUnreadVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o()V

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvRed()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method
