.class public final Lcom/tn/tranpay/fragment/PayLoadingFragment;
.super Landroidx/fragment/app/DialogFragment;

# interfaces
.implements Lcom/tn/tranpay/report/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/fragment/PayLoadingFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 N2\u00020\u00012\u00020\u0002:\u00012B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J+\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u0019\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0004J\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u001b\u0010%\u001a\u00020\u00052\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00050#\u00a2\u0006\u0004\u0008%\u0010&J-\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010(\u001a\u00020\'2\u0008\u0010*\u001a\u0004\u0018\u00010)2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008,\u0010-J!\u0010/\u001a\u00020\u00052\u0006\u0010.\u001a\u00020+2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008/\u00100R\u001b\u00106\u001a\u0002018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u001e\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R*\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010@\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010&R\u0014\u0010J\u001a\u00020G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u001d\u0010M\u001a\u0004\u0018\u00010\u001b8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008K\u00103\u001a\u0004\u0008L\u0010\u001d\u00a8\u0006O"
    }
    d2 = {
        "Lcom/tn/tranpay/fragment/PayLoadingFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "Lcom/tn/tranpay/report/b;",
        "<init>",
        "()V",
        "",
        "e0",
        "logResume",
        "logPause",
        "showLoading",
        "hideLoading",
        "",
        "billingResponseCode",
        "",
        "message",
        "serverCode",
        "f0",
        "(ILjava/lang/String;Ljava/lang/String;)V",
        "i0",
        "o0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "onStart",
        "onPause",
        "Lcom/tn/tranpay/report/c;",
        "j0",
        "()Lcom/tn/tranpay/report/c;",
        "onResume",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "Lkotlin/Function0;",
        "listener",
        "n0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/tn/tranpay/BillingParams;",
        "a",
        "Lkotlin/Lazy;",
        "h0",
        "()Lcom/tn/tranpay/BillingParams;",
        "params",
        "Landroid/widget/ProgressBar;",
        "b",
        "Landroid/widget/ProgressBar;",
        "loadingView",
        "Lcom/tn/tranpay/d;",
        "c",
        "Lcom/tn/tranpay/d;",
        "callback",
        "d",
        "Lkotlin/jvm/functions/Function0;",
        "onDismissListener",
        "e",
        "getOnBackListener",
        "()Lkotlin/jvm/functions/Function0;",
        "m0",
        "onBackListener",
        "Lcom/tn/tranpay/viewmodel/PaymentViewModel;",
        "f",
        "Lcom/tn/tranpay/viewmodel/PaymentViewModel;",
        "viewModel",
        "g",
        "getLogViewConfig",
        "logViewConfig",
        "h",
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


# static fields
.field public static final h:Lcom/tn/tranpay/fragment/PayLoadingFragment$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Landroid/widget/ProgressBar;

.field private c:Lcom/tn/tranpay/d;

.field private d:Lkotlin/jvm/functions/Function0;

.field private e:Lkotlin/jvm/functions/Function0;

.field private final f:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

.field private final g:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tn/tranpay/fragment/PayLoadingFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tn/tranpay/fragment/PayLoadingFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->h:Lcom/tn/tranpay/fragment/PayLoadingFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/tn/tranpay/fragment/PayLoadingFragment$params$2;

    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment$params$2;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    invoke-direct {v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;-><init>()V

    iput-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    new-instance v0, Lcom/tn/tranpay/fragment/PayLoadingFragment$logViewConfig$2;

    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment$logViewConfig$2;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic X(Lcom/tn/tranpay/fragment/PayLoadingFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->k0(Lcom/tn/tranpay/fragment/PayLoadingFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Y(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->l0(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    return-void
.end method

.method public static final synthetic Z(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;
    .locals 0

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->h0()Lcom/tn/tranpay/BillingParams;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a0(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;
    .locals 0

    iget-object p0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    return-object p0
.end method

.method public static final synthetic b0(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->hideLoading()V

    return-void
.end method

.method public static final synthetic c0(Lcom/tn/tranpay/fragment/PayLoadingFragment;Lcom/tn/tranpay/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->c:Lcom/tn/tranpay/d;

    return-void
.end method

.method public static final synthetic d0(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->o0()V

    return-void
.end method

.method private final e0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v2, "window.attributes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private final f0(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/tn/tranpay/b;->c:Lcom/tn/tranpay/b$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tn/tranpay/b$a;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/tn/tranpay/b;

    move-result-object v0

    sget-object v1, Lai/a;->a:Lai/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading error, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", serverCode: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-static {v1, p1, p3, p2, p3}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->c:Lcom/tn/tranpay/d;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0, p3}, Lcom/tn/tranpay/d;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V

    :cond_0
    iput-object p3, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->c:Lcom/tn/tranpay/d;

    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/tn/tranpay/report/c;->j(Z)V

    :goto_0
    sget-object p1, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->h0()Lcom/tn/tranpay/BillingParams;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tn/tranpay/BillingParams;->getOrderDesc()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->h0()Lcom/tn/tranpay/BillingParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/tranpay/BillingParams;->getPayByLocalCurrency()Z

    move-result v0

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->h0()Lcom/tn/tranpay/BillingParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tn/tranpay/BillingParams;->getTxnId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/tn/tranpay/report/h;->j(ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->i0()V

    return-void
.end method

.method static synthetic g0(Lcom/tn/tranpay/fragment/PayLoadingFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f0(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final h0()Lcom/tn/tranpay/BillingParams;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tn/tranpay/BillingParams;

    return-object v0
.end method

.method private final hideLoading()V
    .locals 2

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->b:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final i0()V
    .locals 0

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->hideLoading()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final k0(Lcom/tn/tranpay/fragment/PayLoadingFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->e:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move v0, p2

    :cond_0
    return v0
.end method

.method private static final l0(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->e:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final logPause()V
    .locals 0

    invoke-static {p0}, Lcom/tn/tranpay/report/b$a;->b(Lcom/tn/tranpay/report/b;)V

    return-void
.end method

.method private final logResume()V
    .locals 0

    invoke-static {p0}, Lcom/tn/tranpay/report/b$a;->c(Lcom/tn/tranpay/report/b;)V

    return-void
.end method

.method private final o0()V
    .locals 4

    sget-object v0, Lcom/tn/tranpay/fragment/PayFragment;->i:Lcom/tn/tranpay/fragment/PayFragment$a;

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->h0()Lcom/tn/tranpay/BillingParams;

    move-result-object v1

    iget-object v2, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    invoke-virtual {v2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->q()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tn/tranpay/bean/LoadConfigContent;

    iget-object v3, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->c:Lcom/tn/tranpay/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tn/tranpay/fragment/PayFragment$a;->a(Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/bean/LoadConfigContent;Lcom/tn/tranpay/d;)Lcom/tn/tranpay/fragment/PayFragment;

    move-result-object v0

    new-instance v1, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;

    invoke-direct {v1, p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    invoke-virtual {v0, v1}, Lcom/tn/tranpay/fragment/PayFragment;->w0(Lcom/tn/tranpay/fragment/PayFragment$b;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "pay_fragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final showLoading()V
    .locals 2

    sget-object v0, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    invoke-virtual {v0}, Lcom/tn/tranpay/e$a;->b()Lcom/tn/tranpay/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/tranpay/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->b:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->b:Landroid/widget/ProgressBar;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getLogViewConfig()Lcom/tn/tranpay/report/c;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tn/tranpay/report/c;

    return-object v0
.end method

.method public j0()Lcom/tn/tranpay/report/c;
    .locals 5

    new-instance v0, Lcom/tn/tranpay/report/c;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "cashier_page"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/tn/tranpay/report/c;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final m0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final n0(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tn/tranpay/fragment/d;

    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/d;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/tn/tranpay/fragment/a;->a(Landroid/app/Dialog;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/tn/tranpay/fragment/e;

    invoke-direct {v1, p0}, Lcom/tn/tranpay/fragment/e;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/t;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/tn/lib/tranpay/R$layout;->tran_fragment_loading_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->d:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->logPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->logResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    sget-object v0, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    invoke-virtual {v0}, Lcom/tn/tranpay/e$a;->b()Lcom/tn/tranpay/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/tranpay/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v2, "it.attributes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p2, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    invoke-virtual {p2}, Lcom/tn/tranpay/e$a;->b()Lcom/tn/tranpay/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/tranpay/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sget v1, Lcom/tn/lib/tranpay/R$style;->loading_empty_dialog:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    :cond_0
    sget v0, Lcom/tn/lib/tranpay/R$id;->loading_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->b:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/tn/tranpay/e$a;->b()Lcom/tn/tranpay/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tn/tranpay/e;->d()I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->e0()V

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->showLoading()V

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment;->f:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    invoke-virtual {p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->q()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object p2

    new-instance v0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    new-instance v1, Lcom/tn/tranpay/fragment/PayLoadingFragment$b;

    invoke-direct {v1, v0}, Lcom/tn/tranpay/fragment/PayLoadingFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
