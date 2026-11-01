.class public final Lcom/tn/tranpay/activity/TranPayTransparentActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u0003R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/tn/tranpay/activity/TranPayTransparentActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "onDestroy",
        "",
        "a",
        "Ljava/lang/String;",
        "callbackId",
        "b",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final b:Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->b:Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic R(Lcom/tn/tranpay/activity/TranPayTransparentActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic T()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "pay_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/tn/tranpay/fragment/PayFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tn/tranpay/fragment/PayFragment;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tn/tranpay/fragment/PayFragment;->o0()V

    goto :goto_1

    :cond_1
    sget-object v0, Lai/a;->a:Lai/a;

    const-string v1, "TranPayTransparentActivity: back pressed in loading stage, cancelling"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v0, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayClient;->e()V

    sget-object v0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tn/tranpay/d;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/tn/tranpay/b;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    sget-object p1, Lai/a;->a:Lai/a;

    const-string v0, "TranPayTransparentActivity: onCreate"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_billing_params"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tn/tranpay/BillingParams;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_callback_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tn/tranpay/d;

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    new-instance p1, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;

    invoke-direct {p1, p0, v3}, Lcom/tn/tranpay/activity/TranPayTransparentActivity$b;-><init>(Lcom/tn/tranpay/activity/TranPayTransparentActivity;Lcom/tn/tranpay/d;)V

    sget-object v1, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    invoke-virtual {v1, p0, v0, p1}, Lcom/tn/tranpay/TranPayClient;->d(Landroidx/appcompat/app/AppCompatActivity;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V

    goto :goto_1

    :cond_2
    const-string v0, "TranPayTransparentActivity: callback not found (process may have been killed), finishing immediately"

    invoke-static {p1, v0, v1, v2, v1}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tn/tranpay/d;

    if-eqz v0, :cond_0

    sget-object v1, Lai/a;->a:Lai/a;

    const-string v2, "TranPayTransparentActivity: onDestroy without callback delivery, possible unexpected destruction!"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v1, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    invoke-virtual {v1}, Lcom/tn/tranpay/TranPayClient;->e()V

    new-instance v1, Lcom/tn/tranpay/b;

    const/4 v2, -0x1

    const-string v3, "Payment interrupted"

    invoke-direct {v1, v2, v3}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v4}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    :cond_0
    return-void
.end method
