.class public final Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lgl/k;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 !2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lgl/k;",
        "<init>",
        "()V",
        "",
        "h0",
        "g0",
        "d0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "c0",
        "(Landroid/view/LayoutInflater;)Lgl/k;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "lazyLoadData",
        "onResume",
        "",
        "a",
        "I",
        "tabId",
        "",
        "b",
        "Ljava/lang/String;",
        "tabCode",
        "c",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment$a;

.field public static final d:I


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->c:Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId$a;->e()I

    move-result v0

    iput v0, p0, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->a:I

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->f0(Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->e0(Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;Landroid/view/View;)V

    return-void
.end method

.method private final d0()V
    .locals 3

    sget-object v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->z:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;

    invoke-virtual {v0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;->a()Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v1

    sget v2, Lcom/transsion/home/R$id;->bottom_op_container:I

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/w;->i()I

    return-void
.end method

.method private static final e0(Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;Landroid/view/View;)V
    .locals 2

    sget-object p1, Lyj/a;->a:Lyj/a$a;

    const-class v0, Lyj/b;

    invoke-virtual {p1, v0}, Lyj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyj/b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lyj/b;->c(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->h0()V

    return-void
.end method

.method private static final f0(Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "/commercial/playstore"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->g0()V

    return-void
.end method

.method private final g0()V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "app_center"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object v2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v3, p0, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->a:I

    invoke-virtual {v2, v3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/transsion/baselib/helper/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final h0()V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "search"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hot_search_word"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object v2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v3, p0, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->a:I

    invoke-virtual {v2, v3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/transsion/baselib/helper/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public c0(Landroid/view/LayoutInflater;)Lgl/k;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lgl/k;->c(Landroid/view/LayoutInflater;)Lgl/k;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->c0(Landroid/view/LayoutInflater;)Lgl/k;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "tab_id"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->a:I

    :goto_0
    iput p1, p0, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->a:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "tab_code"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;->d0()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/k;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lgl/k;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    :cond_2
    const-string p1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/k;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lgl/k;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_3

    new-instance p2, Lml/a;

    invoke-direct {p2, p0}, Lml/a;-><init>(Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/k;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lgl/k;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_4

    new-instance p2, Lml/b;

    invoke-direct {p2, p0}, Lml/b;-><init>(Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-class p2, Lcom/transsion/commercializationapi/IPsLinkApi;

    invoke-static {p2, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercializationapi/IPsLinkApi;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/transsion/commercializationapi/IPsLinkApi;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lrl/a;->a:Lrl/a;

    invoke-virtual {p1}, Lrl/a;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/k;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lgl/k;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_6

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logPause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logResume()V

    :cond_1
    :goto_0
    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/activity/k;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onResume()V

    return-void
.end method
