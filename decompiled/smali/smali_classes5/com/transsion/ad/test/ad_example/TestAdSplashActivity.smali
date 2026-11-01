.class public final Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;
.super Lcom/transsion/ad/test/TestBaseActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CustomSplashScreen"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0005*\u0001\u0015\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;",
        "Lcom/transsion/ad/test/TestBaseActivity;",
        "<init>",
        "()V",
        "",
        "getLogTag",
        "()Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "Lcom/transsion/ad/bidding/splash/b;",
        "a",
        "Lcom/transsion/ad/bidding/splash/b;",
        "splashManager",
        "Lji/a0;",
        "b",
        "Lji/a0;",
        "binding",
        "com/transsion/ad/test/ad_example/TestAdSplashActivity$a",
        "c",
        "Lcom/transsion/ad/test/ad_example/TestAdSplashActivity$a;",
        "splashListener",
        "lib_ad_gpRelease"
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
.field private a:Lcom/transsion/ad/bidding/splash/b;

.field private b:Lji/a0;

.field private final c:Lcom/transsion/ad/test/ad_example/TestAdSplashActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/test/TestBaseActivity;-><init>()V

    new-instance v0, Lcom/transsion/ad/test/ad_example/TestAdSplashActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_example/TestAdSplashActivity$a;-><init>(Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;)V

    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;->c:Lcom/transsion/ad/test/ad_example/TestAdSplashActivity$a;

    return-void
.end method

.method public static synthetic R(Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;->V(Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic T(Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;)Lcom/transsion/ad/test/ad_example/TestAdSplashActivity$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;->c:Lcom/transsion/ad/test/ad_example/TestAdSplashActivity$a;

    return-object p0
.end method

.method public static final synthetic U(Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;)Lcom/transsion/ad/bidding/splash/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;->a:Lcom/transsion/ad/bidding/splash/b;

    return-object p0
.end method

.method private static final V(Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;Landroid/view/View;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/ad/test/ad_example/TestAdSplashActivity$onCreate$1$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/transsion/ad/test/ad_example/TestAdSplashActivity$onCreate$1$1;-><init>(Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_s"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lji/a0;->c(Landroid/view/LayoutInflater;)Lji/a0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;->b:Lji/a0;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lji/a0;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    new-instance p1, Lcom/transsion/ad/bidding/splash/b;

    invoke-direct {p1}, Lcom/transsion/ad/bidding/splash/b;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;->a:Lcom/transsion/ad/bidding/splash/b;

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;->b:Lji/a0;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lji/a0;->b:Landroid/widget/Button;

    new-instance v0, Lcom/transsion/ad/test/ad_example/d0;

    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_example/d0;-><init>(Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
