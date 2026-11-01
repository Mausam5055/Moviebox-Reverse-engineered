.class public final Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/DialogProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO00o;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO00o;


# instance fields
.field public OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;

    :goto_0
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    :goto_1
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    instance-of v2, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v2, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    :goto_2
    const-string p1, "context as? MiniAppActiv\u2026ityUtils.getTopActivity()"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO00o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO0O0(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "locationType"

    const-string p3, ""

    if-nez p4, :cond_4

    move-object p4, p3

    :cond_4
    :try_start_1
    iput-object p4, p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooOO0O:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p4

    :try_start_2
    invoke-static {p2, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-nez p5, :cond_5

    move-object p5, p3

    :cond_5
    :try_start_3
    iput-object p5, p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooOO0o:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p3

    :try_start_4
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    iput-object p6, p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;

    new-instance p2, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0O0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;)V

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :goto_5
    const-string p1, "DefaultDialogProxy"

    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    return-void
.end method


# virtual methods
.method public final getAddHomeDialog()Lcom/cloud/tmc/miniapp/dialog/OooO00o;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    return-object v0
.end method

.method public hideLoadingDialog(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->hideLoadingDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "DefaultDialogProxy"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final setAddHomeDialog(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    return-void
.end method

.method public showAddHomeConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/defaultimpl/b;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showCameraPermissionDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    sget p1, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_title:I

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(R.string.mini_dialog_permission_title)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_camera:I

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "format(format, *args)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_content:I

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.mini_dialog_permission_content)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_camera:I

    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_left:I

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_Right:I

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0OO;

    invoke-direct {v0, p4, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0OO;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    new-instance p3, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0o;

    invoke-direct {p3, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0o;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    return-void
.end method

.method public showLoadingDialog(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->showLoadingDialog$default(Lcom/cloud/tmc/miniapp/base/BaseActivity;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "DefaultDialogProxy"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public showLocationPermissionDialog(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    sget p1, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_title:I

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(R.string.mini_dialog_permission_title)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_location:I

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "format(format, *args)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_content:I

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.mini_dialog_permission_content)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_location:I

    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_left:I

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_Right:I

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO;-><init>()V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    return-void
.end method

.method public showPermissionDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionWithNotShowAgainCallback;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scope"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dialogContent"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appTitle"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appIconUrl"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getTopActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p4, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooO0o:Lkotlin/Lazy;

    invoke-interface {p4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz p5, :cond_2

    :try_start_0
    iget-object p3, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v3, :cond_2

    const-class p3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p3}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v4

    sget v6, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    move-object v2, p5

    move v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p3

    const-string p4, "PermissionDialog"

    invoke-static {p4, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    const-string p3, "scopeName"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    const-string p3, "notifyMessage"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooO0oo:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/Group;

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    iget-object p3, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooOO0o:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    iput-object p6, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionWithNotShowAgainCallback;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    return-void
.end method

.method public showStoragePermissionDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;-><init>(Landroid/content/Context;Z)V

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    sget p1, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_title:I

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(R.string.mini_dialog_permission_title)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_storage:I

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "format(format, *args)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0Oo(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_content:I

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.mini_dialog_permission_content)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_storage:I

    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_left:I

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0O0(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_dialog_permission_Right:I

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO0OO(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooOO0;

    invoke-direct {v0, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooOO0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooOO0O;

    invoke-direct {v0, p2, p3}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooOO0O;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooOo00;->OooO00o(Z)Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooOo00;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    return-void
.end method
