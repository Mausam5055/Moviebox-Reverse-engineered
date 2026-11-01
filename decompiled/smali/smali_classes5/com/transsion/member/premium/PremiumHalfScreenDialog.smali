.class public final Lcom/transsion/member/premium/PremiumHalfScreenDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\u0008J\u0017\u0010\u000e\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u0008J\u0019\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001cR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/member/premium/PremiumHalfScreenDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "traceId",
        "",
        "w0",
        "(Ljava/lang/String;)V",
        "sceneId",
        "u0",
        "subjectId",
        "v0",
        "pageName",
        "t0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lbk/g;",
        "c",
        "Lbk/g;",
        "binding",
        "d",
        "Ljava/lang/String;",
        "e",
        "f",
        "g",
        "Member_psRelease"
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
.field private c:Lbk/g;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/baseui/R$layout;->premium_half_screen_dialog_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/member/premium/PremiumHalfScreenDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->r0(Lcom/transsion/member/premium/PremiumHalfScreenDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/member/premium/PremiumHalfScreenDialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->q0(Lcom/transsion/member/premium/PremiumHalfScreenDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Lcom/transsion/member/premium/PremiumHalfScreenDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->s0(Lcom/transsion/member/premium/PremiumHalfScreenDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final q0(Lcom/transsion/member/premium/PremiumHalfScreenDialog;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final r0(Lcom/transsion/member/premium/PremiumHalfScreenDialog;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final s0(Lcom/transsion/member/premium/PremiumHalfScreenDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/tn/lib/widget/R$style;->BaseDialogStyle:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v1, -0x1

    invoke-virtual {p2, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_3
    invoke-static {p1}, Lbk/g;->a(Landroid/view/View;)Lbk/g;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->c:Lbk/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance p1, Lcom/transsion/member/view/MemberLayoutView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string p2, "requireContext(...)"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/member/view/MemberLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->g:Ljava/lang/String;

    const-string v1, ""

    if-nez p2, :cond_4

    move-object p2, v1

    :cond_4
    invoke-virtual {p1, p2}, Lcom/transsion/member/view/MemberLayoutView;->setPageName(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->e:Ljava/lang/String;

    if-nez p2, :cond_5

    move-object p2, v1

    :cond_5
    invoke-virtual {p1, p2}, Lcom/transsion/member/view/MemberLayoutView;->setTraceId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->d:Ljava/lang/String;

    if-nez p2, :cond_6

    move-object p2, v1

    :cond_6
    invoke-virtual {p1, p2}, Lcom/transsion/member/view/MemberLayoutView;->setSceneId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->f:Ljava/lang/String;

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    move-object v1, p2

    :goto_0
    invoke-virtual {p1, v1}, Lcom/transsion/member/view/MemberLayoutView;->setSubjectId(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/transsion/member/view/MemberLayoutView;->setScreenState(I)V

    new-instance p2, Lcom/transsion/member/premium/l;

    invoke-direct {p2, p0}, Lcom/transsion/member/premium/l;-><init>(Lcom/transsion/member/premium/PremiumHalfScreenDialog;)V

    new-instance v0, Lcom/transsion/member/premium/m;

    invoke-direct {v0, p0}, Lcom/transsion/member/premium/m;-><init>(Lcom/transsion/member/premium/PremiumHalfScreenDialog;)V

    sget-object v1, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_DIALOG:Lcom/transsion/memberapi/MemberSource;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/transsion/member/view/MemberLayoutView;->init(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberSource;Lkotlin/jvm/functions/Function2;)V

    iget-object p2, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->c:Lbk/g;

    if-eqz p2, :cond_8

    iget-object p2, p2, Lbk/g;->c:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->c:Lbk/g;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lbk/g;->b:Landroid/view/View;

    if-eqz p1, :cond_9

    new-instance p2, Lcom/transsion/member/premium/n;

    invoke-direct {p2, p0}, Lcom/transsion/member/premium/n;-><init>(Lcom/transsion/member/premium/PremiumHalfScreenDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public final t0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->g:Ljava/lang/String;

    return-void
.end method

.method public final u0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->d:Ljava/lang/String;

    return-void
.end method

.method public final v0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->f:Ljava/lang/String;

    return-void
.end method

.method public final w0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumHalfScreenDialog;->e:Ljava/lang/String;

    return-void
.end method
