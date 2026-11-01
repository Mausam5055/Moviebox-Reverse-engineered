.class public final Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;
.super Lcom/transsion/shorttv/base/activity/BaseActivity;

# interfaces
.implements Lds/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/shorttv/base/activity/BaseActivity<",
        "Lms/n;",
        ">;",
        "Lds/e;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001fR\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020$0#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;",
        "Lcom/transsion/shorttv/base/activity/BaseActivity;",
        "Lms/n;",
        "Lds/e;",
        "<init>",
        "()V",
        "",
        "d0",
        "c0",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "a0",
        "()Lms/n;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "initView",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "",
        "g",
        "I",
        "tabId",
        "h",
        "Z",
        "showViewPager",
        "i",
        "Ljava/lang/String;",
        "tabCode",
        "j",
        "mFilterJson",
        "",
        "Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;",
        "k",
        "Ljava/util/List;",
        "tabItems",
        "shortTvLib_release"
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
.field public g:I

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field private final k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/shorttv/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->h:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->k:Ljava/util/List;

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->b0(Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final b0(Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->d0()V

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->finish()V

    return-void
.end method

.method private final c0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "back_browse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tabId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p0}, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final d0()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "back_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tabId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p0}, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a0()Lms/n;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lms/n;->c(Landroid/view/LayoutInflater;)Lms/n;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "movie_filter_page"

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->a0()Lms/n;

    move-result-object v0

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lms/n;

    iget-object p1, p1, Lms/n;->c:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvTitleLayout;

    new-instance v0, Lpr/a;

    invoke-direct {v0, p0}, Lpr/a;-><init>(Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvTitleLayout;->setLeftOnclick(Landroid/view/View$OnClickListener;)Lcom/transsion/shorttv/_channel/ui/widget/ShortTvTitleLayout;

    invoke-direct {p0}, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->c0()V

    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_filter:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvTitleLayout;->setTitleText(Ljava/lang/String;)Lcom/transsion/shorttv/_channel/ui/widget/ShortTvTitleLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ltr/b;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p1

    sget v0, Lcom/transsion/shorttv/R$id;->content_layout:I

    sget-object v1, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->A:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$a;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/activity/ShortTvMovieFilterActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$a;->a(ZLjava/lang/String;)Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/w;->j()I

    return-void
.end method

.method public isStatusDark()Z
    .locals 1

    sget-object v0, Lds/g;->a:Lds/g;

    invoke-virtual {v0}, Lds/g;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/transsion/shorttv/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
