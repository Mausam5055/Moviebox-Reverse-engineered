.class public final Lcom/transsion/usercenter/kids/AccountSwitchDialog;
.super Lcom/tn/lib/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 12\u00020\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0003J!\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u001d\u0010!\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010*\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010\'R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010-\u00a8\u00062"
    }
    d2 = {
        "Lcom/transsion/usercenter/kids/AccountSwitchDialog;",
        "Lcom/tn/lib/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "p0",
        "Landroid/view/View;",
        "view",
        "i0",
        "(Landroid/view/View;)V",
        "t0",
        "v0",
        "s0",
        "",
        "moduleName",
        "r0",
        "(Ljava/lang/String;)V",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onStart",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/transsnet/loginapi/ILoginApi;",
        "a",
        "Lkotlin/Lazy;",
        "getMLoginApi",
        "()Lcom/transsnet/loginapi/ILoginApi;",
        "mLoginApi",
        "b",
        "Ljava/lang/String;",
        "pageName",
        "",
        "c",
        "Z",
        "recordDismissOnClose",
        "d",
        "isAdultSelected",
        "Landroid/widget/FrameLayout;",
        "e",
        "Landroid/widget/FrameLayout;",
        "ringAdult",
        "f",
        "ringKids",
        "g",
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
.field public static final g:Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->g:Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_account_switch:I

    invoke-direct {p0, v0}, Lcom/tn/lib/dialog/BaseDialog;-><init>(I)V

    new-instance v0, Lpw/b;

    invoke-direct {v0}, Lpw/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->a:Lkotlin/Lazy;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->d:Z

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->q0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->m0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->l0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->j0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->mLoginApi_delegate$lambda$0()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Lcom/transsion/baselib/kids/KidsProfile;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->n0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Lcom/transsion/baselib/kids/KidsProfile;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->o0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->u0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method private final getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method public static synthetic h0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->k0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V

    return-void
.end method

.method private final i0(Landroid/view/View;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget v2, Lcom/transsion/usercenter/R$id;->ivAdultAvatar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/transsion/usercenter/R$id;->tvAdultName:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tn/lib/widget/TnTextView;

    sget v4, Lcom/transsion/usercenter/R$id;->ivAdultLoginArrow:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v5, Lcom/transsion/usercenter/R$id;->layoutAdultAccount:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    sget v6, Lcom/transsion/usercenter/R$id;->layoutKidsAccount:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    sget v7, Lcom/transsion/usercenter/R$id;->ivKidsAvatar:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    sget v8, Lcom/transsion/usercenter/R$id;->tvKidsName:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/tn/lib/widget/TnTextView;

    sget v9, Lcom/transsion/usercenter/R$id;->layoutAddKids:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    sget v10, Lcom/transsion/usercenter/R$id;->layoutAddBtn:I

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/noober/background/view/BLConstraintLayout;

    sget v11, Lcom/transsion/usercenter/R$id;->tvManageProfiles:I

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-interface {v11}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v11

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v13}, Lcom/transsnet/loginapi/ILoginApi;->a()Z

    move-result v13

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    sget-object v12, Lej/f;->a:Lej/f$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v16, v10

    const-string v10, "requireContext(...)"

    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v10

    invoke-virtual {v10, v11}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v10

    sget v12, Lcom/transsion/usercenter/R$drawable;->ic_default_avatar:I

    invoke-virtual {v10, v12}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    const/16 v10, 0x8

    if-eqz v13, :cond_7

    if-eqz v3, :cond_5

    if-nez v15, :cond_4

    const-string v2, ""

    goto :goto_4

    :cond_4
    move-object v2, v15

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    if-eqz v5, :cond_a

    new-instance v2, Lpw/c;

    invoke-direct {v2, v1}, Lpw/c;-><init>(Lcom/transsion/usercenter/kids/AccountSwitchDialog;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_7
    if-eqz v3, :cond_8

    sget v5, Lcom/transsion/usercenter/R$string;->profile_setting_log_in:I

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    if-eqz v4, :cond_9

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    new-instance v4, Lpw/d;

    invoke-direct {v4, v1}, Lpw/d;-><init>(Lcom/transsion/usercenter/kids/AccountSwitchDialog;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_a

    new-instance v2, Lpw/e;

    invoke-direct {v2, v1}, Lpw/e;-><init>(Lcom/transsion/usercenter/kids/AccountSwitchDialog;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    :goto_5
    if-eqz v0, :cond_b

    new-instance v2, Lpw/f;

    invoke-direct {v2, v1, v15, v11}, Lpw/f;-><init>(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->i()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v1, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->d:Z

    invoke-direct/range {p0 .. p0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->v0()V

    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {v0}, Lcom/transsion/baselib/kids/KidsAccountManager;->f()Lcom/transsion/baselib/kids/KidsProfile;

    move-result-object v2

    if-eqz v2, :cond_12

    if-eqz v6, :cond_c

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getAvatarLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_a

    :cond_f
    :goto_6
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v7, :cond_10

    sget v0, Lcom/transsion/usercenter/R$drawable;->ic_kids_avatar:I

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    :goto_7
    invoke-static {v12}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :goto_8
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :goto_a
    if-eqz v8, :cond_11

    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    new-instance v0, Lpw/g;

    invoke-direct {v0, v1, v2}, Lpw/g;-><init>(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Lcom/transsion/baselib/kids/KidsProfile;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    :cond_12
    if-eqz v6, :cond_13

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    if-eqz v9, :cond_14

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    if-eqz v16, :cond_15

    new-instance v0, Lpw/h;

    invoke-direct {v0, v1}, Lpw/h;-><init>(Lcom/transsion/usercenter/kids/AccountSwitchDialog;)V

    move-object/from16 v10, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    :goto_b
    return-void
.end method

.method private static final j0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->t0()V

    return-void
.end method

.method private static final k0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->t0()V

    return-void
.end method

.method private static final l0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "AccountSwitchDialog"

    const-string v3, "login adult account."

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-class v0, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v0, p0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsnet/loginapi/ILoginApi;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsnet/loginapi/ILoginApi;->j(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static final m0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "AccountSwitchDialog"

    const-string v2, "enter manage profile."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const-string p3, "manage_profile"

    invoke-direct {p0, p3}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->r0(Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/usercenter/kids/ManageProfilesActivity;->a:Lcom/transsion/usercenter/kids/ManageProfilesActivity$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/kids/ManageProfilesActivity$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final mLoginApi_delegate$lambda$0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private static final n0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Lcom/transsion/baselib/kids/KidsProfile;Landroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "AccountSwitchDialog"

    const-string v2, "switch to kids."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p2, Lak/o;->a:Lak/o;

    invoke-virtual {p2}, Lak/o;->i()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->d:Z

    invoke-direct {p0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->v0()V

    sget-object p2, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {p2, p1}, Lcom/transsion/baselib/kids/KidsAccountManager;->c(Lcom/transsion/baselib/kids/KidsProfile;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const-string p1, "profile"

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->r0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :goto_0
    return-void
.end method

.method private static final o0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V
    .locals 7

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "AccountSwitchDialog"

    const-string v2, "start create kids account."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    sget-object v1, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->h:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;->b(Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;ZZZILjava/lang/Object;)Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

    move-result-object p0

    const-string v0, "CreateKidsProfileDialog"

    invoke-virtual {p0, p1, v0}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final p0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void
.end method

.method private static final q0(Lcom/transsion/usercenter/kids/AccountSwitchDialog;Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->c:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsAccountManager;->l()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const-string p1, "close"

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->r0(Ljava/lang/String;)V

    return-void
.end method

.method private final r0(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dialog_name"

    const-string v2, "profile_select"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "module_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    iget-object v1, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final s0()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dialog_name"

    const-string v2, "profile_select"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    iget-object v2, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->b:Ljava/lang/String;

    const-string v3, "dialog_show"

    invoke-virtual {v1, v2, v3, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final t0()V
    .locals 9

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "AccountSwitchDialog"

    const-string v2, "switch to adult."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v0, "profile"

    invoke-direct {p0, v0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->r0(Ljava/lang/String;)V

    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->d:Z

    invoke-direct {p0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->v0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {v1}, Lcom/transsion/baselib/kids/KidsAccountManager;->f()Lcom/transsion/baselib/kids/KidsProfile;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getKidsId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    invoke-virtual {v1}, Lcom/transsion/baselib/kids/KidsAccountManager;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/transsion/usercenter/kids/PinInputDialog;->o:Lcom/transsion/usercenter/kids/PinInputDialog$a;

    new-instance v6, Lpw/i;

    invoke-direct {v6}, Lpw/i;-><init>()V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->d(Lcom/transsion/usercenter/kids/PinInputDialog$a;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/usercenter/kids/PinInputDialog;

    move-result-object v1

    const-string v2, "PinInputDialog"

    invoke-virtual {v1, v0, v2}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/baselib/kids/KidsAccountManager;->d()V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :goto_1
    return-void
.end method

.method private static final u0()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {v0}, Lcom/transsion/baselib/kids/KidsAccountManager;->d()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final v0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->d:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->d:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSimpleName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->b:Ljava/lang/String;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "AccountSwitchDialog"

    const-string v2, "dialog show."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "arg_record_dismiss_on_close"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->c:Z

    invoke-direct {p0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->s0()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/usercenter/R$id;->ringAdult:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->e:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/usercenter/R$id;->ringKids:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->p0()V

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->i0(Landroid/view/View;)V

    sget p2, Lcom/transsion/usercenter/R$id;->ivClose:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance p2, Lpw/a;

    invoke-direct {p2, p0}, Lpw/a;-><init>(Lcom/transsion/usercenter/kids/AccountSwitchDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
