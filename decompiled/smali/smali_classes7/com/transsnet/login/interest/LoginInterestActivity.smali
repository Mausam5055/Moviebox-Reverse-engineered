.class public final Lcom/transsnet/login/interest/LoginInterestActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lzy/d;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0010R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsnet/login/interest/LoginInterestActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lzy/d;",
        "<init>",
        "()V",
        "",
        "m0",
        "initView",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "i0",
        "()Lzy/d;",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "isChangeStatusBar",
        "Lcom/transsnet/login/interest/LoginInterestViewModel;",
        "a",
        "Lcom/transsnet/login/interest/LoginInterestViewModel;",
        "mLoginInterestViewModel",
        "Lcom/transsnet/login/interest/f;",
        "b",
        "Lcom/transsnet/login/interest/f;",
        "mLoginInterestAdapter",
        "Login_psRelease"
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
.field private a:Lcom/transsnet/login/interest/LoginInterestViewModel;

.field private b:Lcom/transsnet/login/interest/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic e0(Lcom/transsnet/login/interest/LoginInterestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/login/interest/LoginInterestActivity;->j0(Lcom/transsnet/login/interest/LoginInterestActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsnet/login/interest/LoginInterestActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/login/interest/LoginInterestActivity;->n0(Lcom/transsnet/login/interest/LoginInterestActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/transsnet/login/interest/LoginInterestActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/login/interest/LoginInterestActivity;->k0(Lcom/transsnet/login/interest/LoginInterestActivity;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lcom/transsnet/login/interest/LoginInterestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/login/interest/LoginInterestActivity;->l0(Lcom/transsnet/login/interest/LoginInterestActivity;Landroid/view/View;)V

    return-void
.end method

.method private final initView()V
    .locals 4

    sget-object v0, Lvy/d;->a:Lvy/d;

    invoke-virtual {v0}, Lvy/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "login_interest_show"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lzy/d;

    iget-object v0, v0, Lzy/d;->d:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/transsnet/login/interest/a;

    invoke-direct {v1, p0}, Lcom/transsnet/login/interest/a;-><init>(Lcom/transsnet/login/interest/LoginInterestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsnet/login/R$array;->interest:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsnet/login/interest/f;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->K0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/transsnet/login/interest/b;

    invoke-direct {v3, p0}, Lcom/transsnet/login/interest/b;-><init>(Lcom/transsnet/login/interest/LoginInterestActivity;)V

    invoke-direct {v1, v0, v3}, Lcom/transsnet/login/interest/f;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lcom/transsnet/login/interest/LoginInterestActivity;->b:Lcom/transsnet/login/interest/f;

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lzy/d;

    iget-object v0, v0, Lzy/d;->c:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/transsnet/login/interest/c;

    invoke-direct {v1, p0}, Lcom/transsnet/login/interest/c;-><init>(Lcom/transsnet/login/interest/LoginInterestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lzy/d;

    iget-object v0, v0, Lzy/d;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    invoke-virtual {v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/transsnet/login/interest/LoginInterestActivity;->b:Lcom/transsnet/login/interest/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final j0(Lcom/transsnet/login/interest/LoginInterestActivity;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    return-void
.end method

.method private static final k0(Lcom/transsnet/login/interest/LoginInterestActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lzy/d;

    iget-object p0, p0, Lzy/d;->c:Landroidx/appcompat/widget/AppCompatTextView;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final l0(Lcom/transsnet/login/interest/LoginInterestActivity;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsnet/login/interest/LoginInterestActivity;->a:Lcom/transsnet/login/interest/LoginInterestViewModel;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsnet/login/interest/LoginInterestActivity;->b:Lcom/transsnet/login/interest/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsnet/login/interest/f;->h()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/transsnet/login/interest/LoginInterestViewModel;->e(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private final m0()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/transsnet/login/interest/LoginInterestViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/login/interest/LoginInterestViewModel;

    iput-object v0, p0, Lcom/transsnet/login/interest/LoginInterestActivity;->a:Lcom/transsnet/login/interest/LoginInterestViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsnet/login/interest/LoginInterestViewModel;->d()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/transsnet/login/interest/d;

    invoke-direct {v1, p0}, Lcom/transsnet/login/interest/d;-><init>(Lcom/transsnet/login/interest/LoginInterestActivity;)V

    new-instance v2, Lcom/transsnet/login/interest/LoginInterestActivity$a;

    invoke-direct {v2, v1}, Lcom/transsnet/login/interest/LoginInterestActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    return-void
.end method

.method private static final n0(Lcom/transsnet/login/interest/LoginInterestActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsnet/login/interest/LoginInterestActivity;->i0()Lzy/d;

    move-result-object v0

    return-object v0
.end method

.method public i0()Lzy/d;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lzy/d;->c(Landroid/view/LayoutInflater;)Lzy/d;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChangeStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStatusDark()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsnet/login/interest/LoginInterestActivity;->m0()V

    invoke-direct {p0}, Lcom/transsnet/login/interest/LoginInterestActivity;->initView()V

    return-void
.end method
