.class public final Lcom/transsion/home/activity/OperateActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;

# interfaces
.implements Lcom/transsion/home/preload/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lgl/d;",
        ">;",
        "Lcom/transsion/home/preload/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0005J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/home/activity/OperateActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lgl/d;",
        "Lcom/transsion/home/preload/a;",
        "<init>",
        "()V",
        "",
        "g0",
        "f0",
        "()Lgl/d;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/os/Bundle;)V",
        "",
        "e0",
        "()I",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "onDestroy",
        "Lcom/transsion/home/preload/b;",
        "d",
        "()Lcom/transsion/home/preload/b;",
        "a",
        "I",
        "tabId",
        "b",
        "Ljava/lang/String;",
        "tabCode",
        "c",
        "title",
        "Lcom/transsion/home/preload/b;",
        "xmlPreload",
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

.field private d:Lcom/transsion/home/preload/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->c:Ljava/lang/String;

    return-void
.end method

.method private final g0()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgl/d;

    iget-object v0, v0, Lgl/d;->c:Lcom/tn/lib/view/TitleLayout;

    iget-object v1, p0, Lcom/transsion/home/activity/OperateActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    sget-object v1, Loh/h;->a:Loh/h;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Loh/h;->d(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    sget v1, Lcom/tn/lib/widget/R$color;->transparent:I

    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/TitleLayout;->setViewLineVisible(Z)Lcom/tn/lib/view/TitleLayout;

    return-void
.end method


# virtual methods
.method public d()Lcom/transsion/home/preload/b;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->d:Lcom/transsion/home/preload/b;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;

    invoke-direct {v0, p0}, Lcom/transsion/home/preload/MainXMLPreloadControlImp;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->d:Lcom/transsion/home/preload/b;

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->d:Lcom/transsion/home/preload/b;

    return-object v0
.end method

.method public final e0()I
    .locals 3

    sget-object v0, Loh/h;->a:Loh/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Loh/h;->d(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public f0()Lgl/d;
    .locals 2

    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lgl/d;->c(Landroid/view/LayoutInflater;)Lgl/d;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v1, p0, Lcom/transsion/home/activity/OperateActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/home/activity/OperateActivity;->f0()Lgl/d;

    move-result-object v0

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/home/activity/OperateActivity;->g0()V

    sget-object p1, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v0, p0, Lcom/transsion/home/activity/OperateActivity;->a:I

    iget-object v1, p0, Lcom/transsion/home/activity/OperateActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->b(ILjava/lang/String;)Lcom/transsion/home/fragment/tab/SubTabFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v0

    sget v1, Lcom/transsion/home/R$id;->operate_page_container:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/w;->j()I

    return-void
.end method

.method public isStatusDark()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->d:Lcom/transsion/home/preload/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/home/preload/b;->reset()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->d:Lcom/transsion/home/preload/b;

    return-void
.end method
