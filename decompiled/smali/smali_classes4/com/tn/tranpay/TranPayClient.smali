.class public final Lcom/tn/tranpay/TranPayClient;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/tn/tranpay/TranPayClient;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tn/tranpay/TranPayClient;

    invoke-direct {v0}, Lcom/tn/tranpay/TranPayClient;-><init>()V

    sput-object v0, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/tn/tranpay/TranPayClient;->b:Z

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lai/a;->a:Lai/a;

    const-string p2, "TranPayClient: launchBillingFlow(context) must be called on the main thread, call ignored"

    invoke-static {p1, p2, v2, v1, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->q()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lai/a;->a:Lai/a;

    const-string p2, "TranPay must be initialized!"

    invoke-static {p1, p2, v2, v1, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance p1, Lcom/tn/tranpay/b;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1, v2}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    return-void

    :cond_1
    sget-object v0, Lcom/tn/tranpay/helper/b;->a:Lcom/tn/tranpay/helper/b;

    invoke-virtual {v0}, Lcom/tn/tranpay/helper/b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lai/a;->a:Lai/a;

    const-string p2, "Network is not available!"

    invoke-static {p1, p2, v2, v1, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance p1, Lcom/tn/tranpay/b;

    const/4 p2, -0x2

    const-string v0, "Network is not available. Please check your network connection."

    invoke-direct {p1, p2, v0}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1, v2}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    return-void

    :cond_2
    sget-boolean v0, Lcom/tn/tranpay/TranPayClient;->b:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lai/a;->a:Lai/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchBillingFlow with context and params is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tn/tranpay/TranPayClient;->b:Z

    sget-object v0, Lcom/tn/tranpay/activity/TranPayTransparentActivity;->b:Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tn/tranpay/activity/TranPayTransparentActivity$a;->a(Landroid/content/Context;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V

    return-void
.end method

.method public final c(Landroidx/appcompat/app/AppCompatActivity;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lai/a;->a:Lai/a;

    const-string p2, "TranPayClient: launchBillingFlow(activity) must be called on the main thread, call ignored"

    invoke-static {p1, p2, v2, v1, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->q()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    sget-object p1, Lai/a;->a:Lai/a;

    const-string p2, "TranPay must be initialized!"

    invoke-static {p1, p2, v2, v1, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance p1, Lcom/tn/tranpay/b;

    invoke-direct {p1, v4, p2}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1, v2}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    return-void

    :cond_1
    sget-object v3, Lcom/tn/tranpay/helper/b;->a:Lcom/tn/tranpay/helper/b;

    invoke-virtual {v3}, Lcom/tn/tranpay/helper/b;->a()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p1, Lai/a;->a:Lai/a;

    const-string p2, "Network is not available!"

    invoke-static {p1, p2, v2, v1, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance p1, Lcom/tn/tranpay/b;

    const/4 p2, -0x2

    const-string v0, "Network is not available. Please check your network connection."

    invoke-direct {p1, p2, v0}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1, v2}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    return-void

    :cond_2
    sget-boolean v3, Lcom/tn/tranpay/TranPayClient;->b:Z

    if-eqz v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    sget-object v3, Lai/a;->a:Lai/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchBillingFlow and params is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2, v1, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lcom/tn/tranpay/fragment/PayLoadingFragment;->h:Lcom/tn/tranpay/fragment/PayLoadingFragment$a;

    invoke-virtual {v3, p2, p3}, Lcom/tn/tranpay/fragment/PayLoadingFragment$a;->a(Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)Lcom/tn/tranpay/fragment/PayLoadingFragment;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v5, "pay_loading_fragment"

    invoke-virtual {v3, p1, v5}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/tn/tranpay/TranPayClient;->b:Z

    sget-object p1, Lcom/tn/tranpay/TranPayClient$launchBillingFlow$1$1;->INSTANCE:Lcom/tn/tranpay/TranPayClient$launchBillingFlow$1$1;

    invoke-virtual {v3, p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->n0(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p2}, Lcom/tn/tranpay/TranPayConfiguration;->D(Lcom/tn/tranpay/BillingParams;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object p2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchBillingFlow(activity) failed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2, v1, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/tn/tranpay/TranPayClient;->b:Z

    new-instance p1, Lcom/tn/tranpay/b;

    const-string p2, "Failed to show payment dialog"

    invoke-direct {p1, v4, p2}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1, v2}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final d(Landroidx/appcompat/app/AppCompatActivity;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lai/a;->a:Lai/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchBillingFlowInternal and params is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->h:Lcom/tn/tranpay/fragment/PayLoadingFragment$a;

    invoke-virtual {v0, p2, p3}, Lcom/tn/tranpay/fragment/PayLoadingFragment$a;->a(Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)Lcom/tn/tranpay/fragment/PayLoadingFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    new-instance v1, Lcom/tn/tranpay/TranPayClient$launchBillingFlowInternal$1$1;

    invoke-direct {v1, p1}, Lcom/tn/tranpay/TranPayClient$launchBillingFlowInternal$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->m0(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "pay_loading_fragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    sget-object p1, Lcom/tn/tranpay/TranPayClient$launchBillingFlowInternal$1$2;->INSTANCE:Lcom/tn/tranpay/TranPayClient$launchBillingFlowInternal$1$2;

    invoke-virtual {v0, p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->n0(Lkotlin/jvm/functions/Function0;)V

    sget-object p1, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/TranPayConfiguration;->D(Lcom/tn/tranpay/BillingParams;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lai/a;->a:Lai/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchBillingFlowInternal failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2, v3, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    invoke-virtual {p1}, Lcom/tn/tranpay/TranPayClient;->e()V

    new-instance p1, Lcom/tn/tranpay/b;

    const/4 p2, -0x1

    const-string v0, "Failed to show payment dialog"

    invoke-direct {p1, p2, v0}, Lcom/tn/tranpay/b;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1, v2}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/tn/tranpay/TranPayClient;->e()V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tn/tranpay/TranPayClient;->b:Z

    return-void
.end method
