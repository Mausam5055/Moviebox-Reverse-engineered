.class public final Lcom/transsion/publish/ui/FilmReviewActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;

# interfaces
.implements Lnp/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lhp/b;",
        ">;",
        "Lnp/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J#\u0010\u000c\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u0019\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J1\u0010\"\u001a\u00020\u00062\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010%\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0005J\u0015\u0010,\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0017\u00a2\u0006\u0004\u0008,\u0010-R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00104\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:\u00a8\u0006;"
    }
    d2 = {
        "Lcom/transsion/publish/ui/FilmReviewActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lhp/b;",
        "Lnp/a;",
        "<init>",
        "()V",
        "",
        "initView",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "Lcom/transsion/publish/api/GroupBean;",
        "groupBean",
        "l0",
        "(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/publish/api/GroupBean;)V",
        "initData",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "h0",
        "()Lhp/b;",
        "onBackPressed",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "isChangeStatusBar",
        "",
        "p0",
        "",
        "p1",
        "p2",
        "p3",
        "onTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "onResume",
        "enable",
        "m0",
        "(Z)V",
        "Lcom/transsion/publish/ui/FilmReviewFragment;",
        "a",
        "Lcom/transsion/publish/ui/FilmReviewFragment;",
        "fragment",
        "b",
        "I",
        "sourceType",
        "c",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "getSubject",
        "()Lcom/transsion/moviedetailapi/bean/Subject;",
        "setSubject",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "Publish_psRelease"
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
.field private a:Lcom/transsion/publish/ui/FilmReviewFragment;

.field private b:I

.field private c:Lcom/transsion/moviedetailapi/bean/Subject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/ui/FilmReviewActivity;->j0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/ui/FilmReviewActivity;->i0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0()V
    .locals 0

    invoke-static {}, Lcom/transsion/publish/ui/FilmReviewActivity;->k0()V

    return-void
.end method

.method private static final i0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->closeAffirm()V

    :cond_0
    return-void
.end method

.method private final initData()V
    .locals 0

    return-void
.end method

.method private final initView()V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lhp/b;

    iget-object v0, v0, Lhp/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    new-instance v1, Lcom/transsion/publish/ui/f;

    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/f;-><init>(Lcom/transsion/publish/ui/FilmReviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/publish/view/CustomPublishHeader;->setOnBackClick(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lhp/b;

    iget-object v0, v0, Lhp/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    new-instance v1, Lcom/transsion/publish/ui/g;

    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/g;-><init>(Lcom/transsion/publish/ui/FilmReviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/publish/view/CustomPublishHeader;->setOnEditClick(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sourceType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->b:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sourceMode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "subject"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Subject"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object v1, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "group"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.transsion.publish.api.GroupBean"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/publish/api/GroupBean;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->b:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-direct {p0, v3, v1}, Lcom/transsion/publish/ui/FilmReviewActivity;->l0(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/publish/api/GroupBean;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lhp/b;

    iget-object v3, v3, Lhp/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    sget v4, Lcom/transsion/publish/R$string;->film_review_title:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/publish/view/CustomPublishHeader;->setTitle(Ljava/lang/String;)V

    :goto_1
    sget-object v3, Lcom/transsion/publish/ui/FilmReviewFragment;->Companion:Lcom/transsion/publish/ui/FilmReviewFragment$a;

    iget v4, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->b:I

    iget-object v5, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/transsion/publish/ui/FilmReviewFragment$a;->a(ILcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/publish/api/GroupBean;)Lcom/transsion/publish/ui/FilmReviewFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v0

    sget v1, Lcom/transsion/publish/R$id;->fl_content:I

    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lhj/b;->k(Z)V

    :cond_3
    return-void
.end method

.method private static final j0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->checkPost()V

    :cond_0
    return-void
.end method

.method private static final k0()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IFloatingApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/room/api/IFloatingApi;->c()V

    :cond_0
    return-void
.end method

.method private final l0(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/publish/api/GroupBean;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lhp/b;

    iget-object v0, v0, Lhp/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/transsion/publish/view/CustomPublishHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lhp/b;

    iget-object p1, p1, Lhp/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    invoke-virtual {p2}, Lcom/transsion/publish/api/GroupBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/publish/api/GroupBean;->getAvatar()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/transsion/publish/view/CustomPublishHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-static {p0, p1}, Lnp/a$a;->a(Lnp/a;Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnp/a$a;->b(Lnp/a;Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "create_post"

    goto :goto_0

    :cond_0
    const-string v0, "create_review"

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/publish/ui/FilmReviewActivity;->h0()Lhp/b;

    move-result-object v0

    return-object v0
.end method

.method public h0()Lhp/b;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lhp/b;->c(Landroid/view/LayoutInflater;)Lhp/b;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChangeStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

.method public final m0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lhp/b;

    iget-object v0, v0, Lhp/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/publish/view/CustomPublishHeader;->setPostEnable(Z)V

    :cond_0
    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    invoke-virtual {p0}, Lcom/transsion/publish/ui/FilmReviewActivity;->getPageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->closeAffirm()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewActivity;->initView()V

    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewActivity;->initData()V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lhp/b;

    iget-object p1, p1, Lhp/b;->b:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/transsion/publish/ui/e;

    invoke-direct {v0}, Lcom/transsion/publish/ui/e;-><init>()V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IFloatingApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/room/api/IFloatingApi;->e()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onResume()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
