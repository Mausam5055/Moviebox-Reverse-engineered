.class public final Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lfw/k;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ)\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lfw/k;",
        "<init>",
        "()V",
        "",
        "initView",
        "initData",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "isChangeStatusBar",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "onBackPressed",
        "g0",
        "()Lfw/k;",
        "Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;",
        "a",
        "Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;",
        "profileEditFragment",
        "b",
        "UserCenter_psRelease"
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
.field public static final b:Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;


# instance fields
.field private a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->b:Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->h0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->i0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final h0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    if-nez p0, :cond_0

    const-string p0, "profileEditFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->checkBack()V

    return-void
.end method

.method private static final i0(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    if-nez p0, :cond_0

    const-string p0, "profileEditFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->confirmSubmit()V

    return-void
.end method

.method private final initData()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/transsnet/loginapi/bean/UserInfo;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/transsnet/loginapi/bean/UserInfo;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "kidsProfile"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/kids/KidsProfile;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "getSupportFragmentManager(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v3

    const-string v4, "beginTransaction(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->Companion:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$a;

    invoke-virtual {v4, v0, v2}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$a;->a(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/baselib/kids/KidsProfile;)Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    const-string v2, "profileEditFragment"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    :cond_1
    sget v0, Lcom/transsion/usercenter/R$id;->fl_content:I

    iget-object v4, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    invoke-virtual {v3, v0, v1}, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    invoke-virtual {v3}, Landroidx/fragment/app/w;->j()I

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/k;

    iget-object v0, v0, Lfw/k;->d:Lcom/tn/lib/view/TitleLayout;

    new-instance v1, Lcom/transsion/usercenter/edit/c;

    invoke-direct {v1, p0}, Lcom/transsion/usercenter/edit/c;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;)V

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/TitleLayout;->setLeftOnclick(Landroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    sget v1, Lcom/transsion/publish/R$string;->profile_empty_done:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$color;->main:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    new-instance v4, Lcom/transsion/usercenter/edit/d;

    invoke-direct {v4, p0}, Lcom/transsion/usercenter/edit/d;-><init>(Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/tn/lib/view/TitleLayout;->setRightView(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    sget v1, Lcom/transsion/usercenter/R$string;->profile_edit_profile:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/k;

    iget-object v0, v0, Lfw/k;->c:Landroid/widget/ProgressBar;

    const-string v1, "loadView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method

.method private final initView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public g0()Lfw/k;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lfw/k;->c(Landroid/view/LayoutInflater;)Lfw/k;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->g0()Lfw/k;

    move-result-object v0

    return-object v0
.end method

.method public isChangeStatusBar()Z
    .locals 1

    const/4 v0, 0x0

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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    if-nez v0, :cond_0

    const-string v0, "profileEditFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->checkEditSubmit(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->initView()V

    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->initData()V

    return-void
.end method
