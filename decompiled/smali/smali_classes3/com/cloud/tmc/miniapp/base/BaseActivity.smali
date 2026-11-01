.class public abstract Lcom/cloud/tmc/miniapp/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/ActivityAction;
.implements Lcom/cloud/tmc/miniapp/action/ClickAction;
.implements Lcom/cloud/tmc/miniapp/action/HandlerAction;
.implements Lcom/cloud/tmc/miniapp/action/KeyboardAction;
.implements Lcom/cloud/tmc/miniapp/action/BundleAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final activityCallbacks$delegate:Lkotlin/Lazy;

.field private dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

.field private dialogCount:I

.field private initDataChannel:I

.field private mResumed:Z

.field private mStarted:Z

.field private savedInstance:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    sget-object v0, Lcom/cloud/tmc/miniapp/base/BaseActivity$activityCallbacks$2;->INSTANCE:Lcom/cloud/tmc/miniapp/base/BaseActivity$activityCallbacks$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->activityCallbacks$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mStarted:Z

    return-void
.end method

.method public static synthetic R(Lcom/cloud/tmc/miniapp/base/BaseActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initSoftKeyboard$lambda$2(Lcom/cloud/tmc/miniapp/base/BaseActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->fitsSystemWindows$lambda$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->showLoadingDialog$lambda$0(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;)V

    return-void
.end method

.method private static final fitsSystemWindows$lambda$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object p1

    const-string v0, "insets.getInsets(WindowI\u2026Compat.Type.systemBars())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p1, Lz0/c;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget p1, p1, Lz0/c;->d:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private final getActivityCallbacks()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->activityCallbacks$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method private static final initSoftKeyboard$lambda$2(Lcom/cloud/tmc/miniapp/base/BaseActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private final isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    instance-of v0, p1, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    filled-new-array {v1, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method

.method public static synthetic showLoadingDialog$default(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showLoadingDialog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final showLoadingDialog$lambda$0(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    if-lez v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/o000OOo;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/o000OOo;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/o000OOo;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->create()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v1, :cond_2

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_wait_message:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :cond_2
    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz p1, :cond_5

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_wait_message:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    :cond_5
    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    sget p1, Lcom/cloud/tmc/miniapp/R$string;->dialog_loading_tv:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public fitsSystemWindows()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniapp/base/a;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/base/a;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/ActivityAction$DefaultImpls;->getActivity(Lcom/cloud/tmc/miniapp/action/ActivityAction;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getBoolean(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getBoolean(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getDouble(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getDouble(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getFloat(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getFloat(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->getHandler(Lcom/cloud/tmc/miniapp/action/HandlerAction;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final getInitDataChannel()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initDataChannel:I

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getInt(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getInt(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getIntegerArrayList(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public abstract getLayoutId()I
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getLong(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getLong(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getMResumed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mResumed:Z

    return v0
.end method

.method public final getMStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mStarted:Z

    return v0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getParcelable(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public final getSavedInstance()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->savedInstance:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getSerializable(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/BundleAction$DefaultImpls;->getStringArrayList(Lcom/cloud/tmc/miniapp/action/BundleAction;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public hideKeyboard(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->hideKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    :cond_1
    iget v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public abstract hideStatusLoading()V
.end method

.method public initActivity()V
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initLayout()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "enableQuickMode"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->showStatusLoading()V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initView()V

    iput v1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initDataChannel:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initData()V

    return-void
.end method

.method public abstract initData()V
.end method

.method public initLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getLayoutId()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->fitsSystemWindows()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initSoftKeyboard()V

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->setStatusBarLightMode(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public initSoftKeyboard()V
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/tmc/miniapp/base/c;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/base/c;-><init>(Lcom/cloud/tmc/miniapp/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public abstract initView()V
.end method

.method public isShowDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getActivityCallbacks()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2, p3}, Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;->onActivityResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getActivityCallbacks()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->onClick(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->savedInstance:Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    sget-object p1, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "globalMiniAppLifcecyclListener callback onCreate fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initActivity()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "globalMiniAppLifcecyclListener callback onDestroy fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->removeCallbacks()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideLoadingDialog()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "globalMiniAppLifcecyclListener callback onPause fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "globalMiniAppLifcecyclListener callback onResume fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mResumed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "BaseActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "globalMiniAppLifcecyclListener callback onStart fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "globalMiniAppLifcecyclListener callback onStop fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mStarted:Z

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->post(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postAtTime(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;JLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public removeCallbacks()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacksAndMessages(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;)V

    return-void
.end method

.method public final setInitDataChannel(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->initDataChannel:I

    return-void
.end method

.method public final setMResumed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mResumed:Z

    return-void
.end method

.method public final setMStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->mStarted:Z

    return-void
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[Landroid/view/View;)V

    return-void
.end method

.method public varargs setOnClickListener([I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[I)V

    return-void
.end method

.method public varargs setOnClickListener([Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[Landroid/view/View;)V

    return-void
.end method

.method public final setSavedInstance(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->savedInstance:Landroid/os/Bundle;

    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->showKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    return-void
.end method

.method public final showLoadingDialog()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->showLoadingDialog$default(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public showLoadingDialog(Ljava/lang/String;)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialogCount:I

    new-instance v0, Lcom/cloud/tmc/miniapp/base/b;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/base/b;-><init>(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract showStatusLoading()V
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideKeyboard(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;)V
    .locals 5

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getActivityCallbacks()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;)V

    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;)V

    return-void
.end method

.method public toggleSoftInput(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->toggleSoftInput(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    return-void
.end method

.method public final updateLoadingContent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseActivity;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->tv_wait_message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
