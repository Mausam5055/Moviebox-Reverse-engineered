.class public final Lcom/transsion/home/activity/FilterActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;

# interfaces
.implements Lcom/transsion/baselib/report/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lth/a;",
        ">;",
        "Lcom/transsion/baselib/report/g;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u0016\u0010&\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010!\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/home/activity/FilterActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lth/a;",
        "Lcom/transsion/baselib/report/g;",
        "<init>",
        "()V",
        "",
        "h0",
        "l0",
        "k0",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "g0",
        "()Lth/a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "initView",
        "retryLoadData",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "",
        "a",
        "I",
        "tabId",
        "b",
        "Ljava/lang/String;",
        "tabCode",
        "c",
        "mFilterJson",
        "d",
        "videoType",
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


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/home/activity/FilterActivity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/home/activity/FilterActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/activity/FilterActivity;->j0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/activity/FilterActivity;->i0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V

    return-void
.end method

.method private final h0()V
    .locals 4

    sget-object v0, Lcom/transsion/home/fragment/filter/FilterFragment;->z:Lcom/transsion/home/fragment/filter/FilterFragment$a;

    iget v1, p0, Lcom/transsion/home/activity/FilterActivity;->a:I

    iget-object v2, p0, Lcom/transsion/home/activity/FilterActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/home/activity/FilterActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/home/fragment/filter/FilterFragment$a;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/transsion/home/fragment/filter/FilterFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v1

    sget v2, Lcom/transsion/home/R$id;->container:I

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/w;->k()V

    return-void
.end method

.method private static final i0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V
    .locals 1

    sget-object p1, Lyj/a;->a:Lyj/a$a;

    const-class v0, Lyj/b;

    invoke-virtual {p1, v0}, Lyj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyj/b;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-interface {p1, v0, p0}, Lyj/b;->d(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static final j0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/activity/FilterActivity;->l0()V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    return-void
.end method

.method private final k0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "back_browse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/home/activity/FilterActivity;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tabId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    invoke-virtual {p0}, Lcom/transsion/home/activity/FilterActivity;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final l0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "back_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/home/activity/FilterActivity;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tabId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    invoke-virtual {p0}, Lcom/transsion/home/activity/FilterActivity;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public g0()Lth/a;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lth/a;->c(Landroid/view/LayoutInflater;)Lth/a;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "home_filter_page"

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/home/activity/FilterActivity;->g0()Lth/a;

    move-result-object v0

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lth/a;

    iget-object p1, p1, Lth/a;->c:Lcom/tn/lib/view/TitleLayout;

    sget v0, Lcom/transsion/home/R$mipmap;->ic_search_movie:I

    new-instance v1, Lbl/a;

    invoke-direct {v1, p0}, Lbl/a;-><init>(Lcom/transsion/home/activity/FilterActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/tn/lib/view/TitleLayout;->setRightView(ILandroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    new-instance v0, Lbl/b;

    invoke-direct {v0, p0}, Lbl/b;-><init>(Lcom/transsion/home/activity/FilterActivity;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setLeftOnclick(Landroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    invoke-direct {p0}, Lcom/transsion/home/activity/FilterActivity;->k0()V

    sget v0, Lcom/transsion/home/R$string;->filter:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    const/4 v0, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/transsion/home/activity/FilterActivity;->h0()V

    return-void
.end method

.method public isStatusDark()Z
    .locals 1

    sget-object v0, Lak/x;->a:Lak/x;

    invoke-virtual {v0}, Lak/x;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    invoke-virtual {p0}, Lcom/transsion/home/activity/FilterActivity;->getPageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhj/b;->l(Z)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public retryLoadData()V
    .locals 0

    return-void
.end method
