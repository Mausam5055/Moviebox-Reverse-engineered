.class public final Lcom/transsion/home/activity/UGCFilterActivity;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\u0016\u0010!\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001cR\u0016\u0010#\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001c\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/home/activity/UGCFilterActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lth/a;",
        "Lcom/transsion/baselib/report/g;",
        "<init>",
        "()V",
        "",
        "h0",
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
        "e",
        "fromOptId",
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

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/home/activity/UGCFilterActivity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/home/activity/UGCFilterActivity;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/home/activity/UGCFilterActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/home/activity/UGCFilterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/activity/UGCFilterActivity;->i0(Lcom/transsion/home/activity/UGCFilterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/home/activity/UGCFilterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/activity/UGCFilterActivity;->j0(Lcom/transsion/home/activity/UGCFilterActivity;Landroid/view/View;)V

    return-void
.end method

.method private final h0()V
    .locals 7

    sget-object v0, Lak/g;->a:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->E:Lcom/transsion/home/fragment/filter/UGCFilterFragment$a;

    iget v2, p0, Lcom/transsion/home/activity/UGCFilterActivity;->a:I

    iget-object v3, p0, Lcom/transsion/home/activity/UGCFilterActivity;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/home/activity/UGCFilterActivity;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/home/activity/UGCFilterActivity;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/home/activity/UGCFilterActivity;->e:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/home/fragment/filter/UGCFilterFragment$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/home/fragment/filter/FilterFragment;->z:Lcom/transsion/home/fragment/filter/FilterFragment$a;

    iget v1, p0, Lcom/transsion/home/activity/UGCFilterActivity;->a:I

    iget-object v2, p0, Lcom/transsion/home/activity/UGCFilterActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/home/activity/UGCFilterActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/home/fragment/filter/FilterFragment$a;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/transsion/home/fragment/filter/FilterFragment;

    move-result-object v0

    :goto_0
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

.method private static final i0(Lcom/transsion/home/activity/UGCFilterActivity;Landroid/view/View;)V
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

.method private static final j0(Lcom/transsion/home/activity/UGCFilterActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

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

    const-string v0, "/home/ugc_filter"

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/home/activity/UGCFilterActivity;->g0()Lth/a;

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

    new-instance v1, Lbl/e;

    invoke-direct {v1, p0}, Lbl/e;-><init>(Lcom/transsion/home/activity/UGCFilterActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/tn/lib/view/TitleLayout;->setRightView(ILandroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    new-instance v0, Lbl/f;

    invoke-direct {v0, p0}, Lbl/f;-><init>(Lcom/transsion/home/activity/UGCFilterActivity;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setLeftOnclick(Landroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

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

    invoke-direct {p0}, Lcom/transsion/home/activity/UGCFilterActivity;->h0()V

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
