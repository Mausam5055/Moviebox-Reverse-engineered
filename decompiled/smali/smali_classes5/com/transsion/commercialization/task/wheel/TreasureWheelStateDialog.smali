.class public final Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u0017\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "r0",
        "q0",
        "",
        "moduleName",
        "p0",
        "(Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;",
        "target",
        "u0",
        "(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;",
        "Lkk/g;",
        "c",
        "Lkk/g;",
        "bind",
        "d",
        "Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;",
        "",
        "e",
        "Z",
        "isDisplayed",
        "Commercialization_psRelease"
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
.field private c:Lkk/g;

.field private d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/commercialization/R$layout;->dialog_treasure_wheel_state_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->s0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->t0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V

    return-void
.end method

.method private final p0(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dialog_name"

    const-string v3, "lucky_wheel_result"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "module_name"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getSimpleName(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final q0()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->e:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dialog_name"

    const-string v3, "lucky_wheel_result"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lhj/i;->a:Lhj/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getSimpleName(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lhj/i;->r(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private final r0()V
    .locals 11

    sget-object v0, Lok/c;->a:Lok/c;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> render() --> target = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lok/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lkk/g;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lkk/g;->c:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/commercialization/task/wheel/i;

    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/i;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lkk/g;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lkk/g;->n:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/commercialization/task/wheel/j;

    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/j;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->getPrice()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;->getPriceType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const-string v2, "THANK_YOU"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lkk/g;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lkk/g;->k:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    sget v3, Lcom/transsion/commercializationapi/R$string;->treasure_don_not_give_up_more_amazing_prizes_are_waiting_for_you:I

    invoke-static {v0, v3}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lkk/g;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lkk/g;->i:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    sget v3, Lcom/transsion/commercializationapi/R$string;->treasure_view_more_prizes:I

    invoke-static {v0, v3}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lkk/g;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lkk/g;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    sget v3, Lcom/transsion/commercializationapi/R$string;->treasure_so_close:I

    invoke-static {v0, v3}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lkk/g;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lkk/g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lkk/g;

    const/4 v2, 0x4

    if-eqz v0, :cond_7

    iget-object v0, v0, Lkk/g;->d:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lkk/g;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lkk/g;->e:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_a

    sget-object v3, Lui/c;->a:Lui/c;

    sget v0, Lcom/transsion/commercializationapi/R$string;->treasure_you_have_just_won_a:I

    invoke-static {v4, v0}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "getString(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/tn/lib/widget/R$font;->mulish_bold:I

    sget v0, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {v4, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v4, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    iget-object v7, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->getPrice()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_9
    move-object v7, v1

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/tn/lib/widget/R$font;->mulish_regular:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual/range {v3 .. v10}, Lui/c;->c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lkk/g;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lkk/g;->k:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lkk/g;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lkk/g;->f:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_c

    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->getPrice()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-virtual {v2, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_c
    return-void
.end method

.method private static final s0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V
    .locals 2

    const-string p1, "close"

    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->p0(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "treasure_wheel_result_dismissed"

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->F1(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final t0(Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;Landroid/view/View;)V
    .locals 2

    const-string p1, "/rewards/center"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "source"

    const-string v1, "TreasureWheelStateDialog"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->getPrice()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;->getPriceType()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string p1, "THANK_YOU"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "view_more_prizes"

    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->p0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "claim_now"

    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->p0(Ljava/lang/String;)V

    :goto_0
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

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onResume()V

    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->q0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    sget-object p2, Lcom/transsion/commercialization/pslink/f;->a:Lcom/transsion/commercialization/pslink/f;

    invoke-virtual {p2}, Lcom/transsion/commercialization/pslink/f;->f()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_1
    invoke-static {p1}, Lkk/g;->a(Landroid/view/View;)Lkk/g;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->c:Lkk/g;

    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->r0()V

    return-void
.end method

.method public final u0(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->d:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    return-object p0
.end method
