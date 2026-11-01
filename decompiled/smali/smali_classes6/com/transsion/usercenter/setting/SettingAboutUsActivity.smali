.class public final Lcom/transsion/usercenter/setting/SettingAboutUsActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lfw/g1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00128\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/SettingAboutUsActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lfw/g1;",
        "<init>",
        "()V",
        "",
        "initView",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "isStatusDark",
        "()Z",
        "isTranslucent",
        "i0",
        "()Lfw/g1;",
        "onDestroy",
        "",
        "a",
        "I",
        "CLICK_COUNT",
        "b",
        "CLICK_TIME",
        "",
        "c",
        "J",
        "lastClickTime",
        "d",
        "clickCount",
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


# instance fields
.field private final a:I

.field private final b:I

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->a:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->b:I

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;ZLandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->j0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->l0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->k0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->m0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final initView()V
    .locals 15

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/g1;

    iget-object v0, v0, Lfw/g1;->c:Lcom/tn/lib/view/TitleLayout;

    sget v1, Lcom/transsion/usercenter/R$string;->user_setting_About_us:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    sget v0, Lcom/transsion/usercenter/R$string;->login_sign_up_privacy:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/transsion/usercenter/R$string;->login_privacy:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/transsion/usercenter/R$string;->login_user_agreement:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v10, Lcom/transsion/usercenter/setting/SettingAboutUsActivity$a;

    invoke-direct {v10, p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity$a;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)V

    new-instance v11, Lcom/transsion/usercenter/setting/SettingAboutUsActivity$b;

    invoke-direct {v11, p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity$b;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, v1

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eq v3, v13, :cond_0

    move v14, v3

    goto :goto_0

    :cond_0
    move v14, v12

    :goto_0
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, v9

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-eq v0, v13, :cond_1

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v14

    const/16 v3, 0x21

    invoke-virtual {v2, v10, v14, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v11, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/g1;

    iget-object v0, v0, Lfw/g1;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/g1;

    iget-object v0, v0, Lfw/g1;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "lab_enter_password_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    const/4 v12, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/g1;

    iget-object v0, v0, Lfw/g1;->e:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/transsion/usercenter/setting/a;

    invoke-direct {v1, p0, v12}, Lcom/transsion/usercenter/setting/a;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/g1;

    iget-object v0, v0, Lfw/g1;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/transsion/usercenter/setting/b;

    invoke-direct {v1, p0}, Lcom/transsion/usercenter/setting/b;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final j0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;ZLandroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->c:J

    sub-long v2, v0, v2

    iget p2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->b:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    iget p2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput p2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    :goto_0
    iput-wide v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->c:J

    iget p2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    iget v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->a:I

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/transsion/usercenter/laboratory/LaboratoryActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/transsion/usercenter/laboratory/LabPwdDialog;

    invoke-direct {p1}, Lcom/transsion/usercenter/laboratory/LabPwdDialog;-><init>()V

    new-instance p2, Lcom/transsion/usercenter/setting/c;

    invoke-direct {p2, p0}, Lcom/transsion/usercenter/setting/c;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)V

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/laboratory/LabPwdDialog;->r0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/laboratory/LabPwdDialog;

    move-result-object p1

    const-string p2, "labPwd"

    invoke-virtual {p1, p0, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final k0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/usercenter/laboratory/LaboratoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final l0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->c:J

    sub-long v2, v0, v2

    iget p1, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->b:I

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    iget p1, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    :goto_0
    iput-wide v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->c:J

    iget p1, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    iget v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->a:I

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/transsion/usercenter/laboratory/developer/AdDeveloperDialog;

    invoke-direct {p1}, Lcom/transsion/usercenter/laboratory/developer/AdDeveloperDialog;-><init>()V

    new-instance v0, Lcom/transsion/usercenter/setting/d;

    invoke-direct {v0, p0}, Lcom/transsion/usercenter/setting/d;-><init>(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/usercenter/laboratory/developer/AdDeveloperDialog;->r0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/usercenter/laboratory/developer/AdDeveloperDialog;

    move-result-object p1

    const-string v0, "AdDeveloperDialog"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final m0(Lcom/transsion/usercenter/setting/SettingAboutUsActivity;)Lkotlin/Unit;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/usercenter/laboratory/MccActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->i0()Lfw/g1;

    move-result-object v0

    return-object v0
.end method

.method public i0()Lfw/g1;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lfw/g1;->c(Landroid/view/LayoutInflater;)Lfw/g1;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
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

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/usercenter/setting/SettingAboutUsActivity;->d:I

    return-void
.end method
