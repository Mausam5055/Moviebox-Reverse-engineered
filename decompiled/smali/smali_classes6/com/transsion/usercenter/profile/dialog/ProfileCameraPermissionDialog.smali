.class public final Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;
.super Lcom/transsion/baseui/dialog/BaseViewBindingDialog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/dialog/BaseViewBindingDialog<",
        "Lfw/e0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\r\u001a\u00020\u00072\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00070\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R$\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R.\u0010\u001c\u001a\u001c\u0012\u0004\u0012\u00020\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;",
        "Lcom/transsion/baseui/dialog/BaseViewBindingDialog;",
        "Lfw/e0;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "",
        "r0",
        "(Landroid/view/View;)V",
        "Lkotlin/Function1;",
        "",
        "callback",
        "u0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "Lkotlin/Function3;",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "n0",
        "()Lkotlin/jvm/functions/Function3;",
        "bindingInflater",
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
.field private d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;-><init>()V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;->s0(Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;->t0(Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;Landroid/view/View;)V

    return-void
.end method

.method private final r0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/e0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfw/e0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/usercenter/profile/dialog/e;

    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/dialog/e;-><init>(Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object p1

    check-cast p1, Lfw/e0;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lfw/e0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/transsion/usercenter/profile/dialog/f;

    invoke-direct {v0, p0}, Lcom/transsion/usercenter/profile/dialog/f;-><init>(Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final s0(Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;->d:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final t0(Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;->d:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public n0()Lkotlin/jvm/functions/Function3;
    .locals 1

    sget-object v0, Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog$bindingInflater$1;->INSTANCE:Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog$bindingInflater$1;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/usercenter/R$style;->BaseDialogStyle:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;->r0(Landroid/view/View;)V

    return-void
.end method

.method public final u0(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/dialog/ProfileCameraPermissionDialog;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method
