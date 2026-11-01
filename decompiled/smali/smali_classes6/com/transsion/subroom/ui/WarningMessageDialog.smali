.class public final Lcom/transsion/subroom/ui/WarningMessageDialog;
.super Lcom/transsion/baseui/dialog/BaseViewBindingDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subroom/ui/WarningMessageDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/dialog/BaseViewBindingDialog<",
        "Lau/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR.\u0010\u0014\u001a\u001c\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/subroom/ui/WarningMessageDialog;",
        "Lcom/transsion/baseui/dialog/BaseViewBindingDialog;",
        "Lau/c;",
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
        "Lkotlin/Function3;",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "",
        "n0",
        "()Lkotlin/jvm/functions/Function3;",
        "bindingInflater",
        "d",
        "a",
        "app_psRelease"
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
.field public static final d:Lcom/transsion/subroom/ui/WarningMessageDialog$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/subroom/ui/WarningMessageDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/subroom/ui/WarningMessageDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/subroom/ui/WarningMessageDialog;->d:Lcom/transsion/subroom/ui/WarningMessageDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;-><init>()V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/subroom/ui/WarningMessageDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subroom/ui/WarningMessageDialog;->q0(Lcom/transsion/subroom/ui/WarningMessageDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final q0(Lcom/transsion/subroom/ui/WarningMessageDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public n0()Lkotlin/jvm/functions/Function3;
    .locals 1

    sget-object v0, Lcom/transsion/subroom/ui/WarningMessageDialog$bindingInflater$1;->INSTANCE:Lcom/transsion/subroom/ui/WarningMessageDialog$bindingInflater$1;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/transsnet/downloader/R$style;->BaseDialogStyle:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "view"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "message"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const-string v6, ""

    if-nez v3, :cond_1

    move-object v3, v6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "reason"

    if-eqz v7, :cond_2

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v5

    :goto_1
    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v7

    :goto_2
    invoke-static {v3, v2}, Landroidx/core/text/b;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v7

    const-string v9, "fromHtml(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v7

    const-class v10, Landroid/text/style/URLSpan;

    invoke-virtual {v9, v2, v7, v10}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    const-string v10, "getSpans(...)"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v10, v7

    move v11, v2

    :goto_3
    if-ge v11, v10, :cond_5

    aget-object v12, v7, v11

    check-cast v12, Landroid/text/style/URLSpan;

    invoke-virtual {v9, v12}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v9, v12}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v9, v12}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    const/4 v15, -0x1

    if-eq v13, v15, :cond_4

    if-eq v14, v15, :cond_4

    new-instance v15, Lcom/transsion/usercenter/message/detail/CustomURLSpan;

    invoke-virtual {v12}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v12

    const-string v2, "getURL(...)"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v12}, Lcom/transsion/usercenter/message/detail/CustomURLSpan;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x21

    invoke-virtual {v9, v15, v13, v14, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    add-int/2addr v11, v1

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object v2

    check-cast v2, Lau/c;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lau/c;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object v2

    check-cast v2, Lau/c;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lau/c;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_7

    new-instance v7, Loh/f;

    invoke-direct {v7, v5}, Loh/f;-><init>(Loh/e;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/dialog/BaseViewBindingDialog;->o0()Lg4/a;

    move-result-object v2

    check-cast v2, Lau/c;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lau/c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v2, :cond_8

    new-instance v5, Lcom/transsion/subroom/ui/a;

    invoke-direct {v5, v0}, Lcom/transsion/subroom/ui/a;-><init>(Lcom/transsion/subroom/ui/WarningMessageDialog;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    sget-object v5, Lhj/i;->a:Lhj/i;

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v8, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Lkotlin/Pair;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    invoke-static {v6}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "app_warning_dialog"

    invoke-virtual {v5, v2, v1}, Lhj/i;->r(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
