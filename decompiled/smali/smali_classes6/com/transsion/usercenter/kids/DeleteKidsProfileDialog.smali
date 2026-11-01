.class public final Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;
.super Lcom/tn/lib/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;",
        "Lcom/tn/lib/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
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


# static fields
.field public static final b:Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog$a;

.field private static c:Lkotlin/jvm/functions/Function0;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;->b:Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_delete_kids_profile:I

    invoke-direct {p0, v0}, Lcom/tn/lib/dialog/BaseDialog;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;->c0(Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;->d0(Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    sput-object p0, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private static final c0(Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final d0(Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;Landroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DeleteKidsProfileDialog"

    const-string v2, "kids account delete success."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsAccountManager;->b()V

    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/kids/KidsAccountManager;->d()V

    :cond_0
    sget-object p1, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;->c:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;->c:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/usercenter/R$style;->BaseDialogStyle:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "arg_kids_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/usercenter/R$id;->tvCancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lpw/q;

    invoke-direct {v0, p0}, Lpw/q;-><init>(Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget p2, Lcom/transsion/usercenter/R$id;->tvDelete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lpw/r;

    invoke-direct {p2, p0}, Lpw/r;-><init>(Lcom/transsion/usercenter/kids/DeleteKidsProfileDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
