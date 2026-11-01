.class public final Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/payment/lib/strategy/ui/PayWebActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lrn/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0018R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001dR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lrn/a;",
        "<init>",
        "()V",
        "",
        "initView",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "onPause",
        "onStop",
        "onDestroy",
        "onBackPressed",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "g0",
        "()Lrn/a;",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "isChangeStatusBar",
        "",
        "a",
        "Ljava/lang/String;",
        "url",
        "b",
        "pageFrom",
        "Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;",
        "c",
        "Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;",
        "webFragment",
        "d",
        "LibPayment_psRelease"
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
.field public static final d:Lcom/transsion/payment/lib/strategy/ui/PayWebActivity$a;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->d:Lcom/transsion/payment/lib/strategy/ui/PayWebActivity$a;

    const-string v0, "page_from"

    sput-object v0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->e:Ljava/lang/String;

    const-string v0, "url"

    sput-object v0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static final synthetic e0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic f0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private final initView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public g0()Lrn/a;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lrn/a;->c(Landroid/view/LayoutInflater;)Lrn/a;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->g0()Lrn/a;

    move-result-object v0

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

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->c:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->w0()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    if-nez p1, :cond_1

    sget-object p1, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->l:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$a;

    invoke-virtual {p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$a;->a()Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->c:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->c:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->c:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v0

    sget v1, Lcom/transsion/payment/lib/R$id;->container:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/w;->k()V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebActivity;->c:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->newIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onStop()V

    return-void
.end method
