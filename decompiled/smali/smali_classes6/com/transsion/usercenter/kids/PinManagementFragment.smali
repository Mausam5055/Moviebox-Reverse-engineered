.class public final Lcom/transsion/usercenter/kids/PinManagementFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/kids/PinManagementFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lfw/l0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0011\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/usercenter/kids/PinManagementFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lfw/l0;",
        "<init>",
        "()V",
        "",
        "h0",
        "Landroidx/fragment/app/FragmentActivity;",
        "g0",
        "()Landroidx/fragment/app/FragmentActivity;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "f0",
        "(Landroid/view/LayoutInflater;)Lfw/l0;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "onResume",
        "",
        "a",
        "Ljava/lang/String;",
        "kidsId",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final b:Lcom/transsion/usercenter/kids/PinManagementFragment$a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/kids/PinManagementFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/kids/PinManagementFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/kids/PinManagementFragment;->b:Lcom/transsion/usercenter/kids/PinManagementFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/usercenter/kids/PinManagementFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a0(Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/kids/PinManagementFragment;->j0(Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/transsion/usercenter/kids/PinManagementFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/PinManagementFragment;->i0(Lcom/transsion/usercenter/kids/PinManagementFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/usercenter/kids/PinManagementFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/PinManagementFragment;->l0(Lcom/transsion/usercenter/kids/PinManagementFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Lcom/transsion/usercenter/kids/PinManagementFragment;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/PinManagementFragment;->m0(Lcom/transsion/usercenter/kids/PinManagementFragment;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/usercenter/kids/PinManagementFragment;->k0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final g0()Landroidx/fragment/app/FragmentActivity;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private final h0()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/l0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfw/l0;->e:Lcom/noober/background/view/BLConstraintLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lpw/i0;

    invoke-direct {v1, p0}, Lpw/i0;-><init>(Lcom/transsion/usercenter/kids/PinManagementFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/l0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lfw/l0;->f:Lcom/noober/background/view/BLConstraintLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lpw/j0;

    invoke-direct {v1, p0}, Lpw/j0;-><init>(Lcom/transsion/usercenter/kids/PinManagementFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final i0(Lcom/transsion/usercenter/kids/PinManagementFragment;Landroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PinManagementFragment"

    const-string v2, "click change."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinManagementFragment;->g0()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/usercenter/kids/PinInputDialog;->o:Lcom/transsion/usercenter/kids/PinInputDialog$a;

    iget-object v1, p0, Lcom/transsion/usercenter/kids/PinManagementFragment;->a:Ljava/lang/String;

    new-instance v3, Lpw/k0;

    invoke-direct {v3, p1}, Lpw/k0;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->d(Lcom/transsion/usercenter/kids/PinInputDialog$a;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/usercenter/kids/PinInputDialog;

    move-result-object p0

    const-string v0, "PinInputDialog"

    invoke-virtual {p0, p1, v0}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final j0(Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 6

    sget-object v0, Lcom/transsion/usercenter/kids/PinInputDialog;->o:Lcom/transsion/usercenter/kids/PinInputDialog$a;

    new-instance v2, Lpw/m0;

    invoke-direct {v2}, Lpw/m0;-><init>()V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->b(Lcom/transsion/usercenter/kids/PinInputDialog$a;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/usercenter/kids/PinInputDialog;

    move-result-object v0

    const-string v1, "PinInputDialog"

    invoke-virtual {v0, p0, v1}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final k0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 7

    const-string v0, "pin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "PinManagementFragment"

    const-string v3, "change success."

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {v0, p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->p(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final l0(Lcom/transsion/usercenter/kids/PinManagementFragment;Landroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PinManagementFragment"

    const-string v2, "click delete."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinManagementFragment;->g0()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/usercenter/kids/PinInputDialog;->o:Lcom/transsion/usercenter/kids/PinInputDialog$a;

    iget-object v1, p0, Lcom/transsion/usercenter/kids/PinManagementFragment;->a:Ljava/lang/String;

    new-instance v3, Lpw/l0;

    invoke-direct {v3, p0, p1}, Lpw/l0;-><init>(Lcom/transsion/usercenter/kids/PinManagementFragment;Landroidx/fragment/app/FragmentActivity;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->d(Lcom/transsion/usercenter/kids/PinInputDialog$a;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/usercenter/kids/PinInputDialog;

    move-result-object p0

    const-string v0, "PinInputDialog"

    invoke-virtual {p0, p1, v0}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final m0(Lcom/transsion/usercenter/kids/PinManagementFragment;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PinManagementFragment"

    const-string v2, "delete success."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/kids/KidsAccountManager;->p(Ljava/lang/String;)V

    sget v0, Lcom/transsion/usercenter/R$string;->kids_pin_delete_finish:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/transsion/baseui/util/m;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public f0(Landroid/view/LayoutInflater;)Lfw/l0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfw/l0;->c(Landroid/view/LayoutInflater;)Lfw/l0;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/kids/PinManagementFragment;->f0(Landroid/view/LayoutInflater;)Lfw/l0;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "arg_kids_id"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/transsion/usercenter/kids/PinManagementFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/transsion/usercenter/kids/PinManagementFragment;->h0()V

    return-void
.end method
