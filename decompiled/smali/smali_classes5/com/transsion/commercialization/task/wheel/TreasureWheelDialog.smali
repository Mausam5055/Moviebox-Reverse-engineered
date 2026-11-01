.class public final Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u0017\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "A0",
        "z0",
        "w0",
        "",
        "moduleName",
        "v0",
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
        "Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;",
        "infoBean",
        "D0",
        "(Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;)Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;",
        "c",
        "Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;",
        "lotteryUserActivityInfoBean",
        "Lkk/f;",
        "d",
        "Lkk/f;",
        "bind",
        "Lcom/transsion/commercialization/task/treasure/b;",
        "e",
        "Lkotlin/Lazy;",
        "x0",
        "()Lcom/transsion/commercialization/task/treasure/b;",
        "iTreasureApi",
        "",
        "f",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

.field private d:Lkk/f;

.field private final e:Lkotlin/Lazy;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/commercialization/R$layout;->dialog_treasure_wheel_layout:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    new-instance v0, Lcom/transsion/commercialization/task/wheel/h;

    invoke-direct {v0}, Lcom/transsion/commercialization/task/wheel/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->e:Lkotlin/Lazy;

    return-void
.end method

.method private final A0()V
    .locals 5

    sget-object v0, Lok/c;->a:Lok/c;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getPriceItems()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> render() --> priceItems = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lok/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lkk/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getPriceItems()Ljava/util/List;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setWheelItems(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lkk/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/wrapperad/R$drawable;->treasure_wheel_center_indicator:I

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setCenterIndicator(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lkk/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    if-eqz v0, :cond_4

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setStartAngularSpeed(F)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lkk/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    if-eqz v0, :cond_5

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setImageSizeRatio(F)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lkk/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    if-eqz v0, :cond_6

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setImageRadiusRatio(F)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lkk/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;

    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->setOnWheelStateListener(Lcom/transsion/commercialization/task/wheel/e;)V

    :cond_7
    sget-object v0, Lui/c;->a:Lui/c;

    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    const-string v2, ""

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getTitle()Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;->getFirstTitle()Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    move-object v1, v2

    :cond_9
    iget-object v3, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getTitle()Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;->getFirstTitle()Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;->getHighlightText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    :cond_a
    move-object v3, v2

    :cond_b
    const-string v4, "#59D440"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lui/c;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lkk/f;->f:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getTitle()Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;->getSecondTitle()Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    move-object v1, v2

    :cond_e
    iget-object v3, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getTitle()Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;->getSecondTitle()Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;->getHighlightText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    goto :goto_1

    :cond_f
    move-object v2, v3

    :cond_10
    :goto_1
    const-string v3, "#94DA02"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lui/c;->b(Ljava/lang/String;Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    if-eqz v1, :cond_11

    iget-object v1, v1, Lkk/f;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lkk/f;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    new-instance v1, Lcom/transsion/commercialization/task/wheel/f;

    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/f;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lkk/f;->b:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_13

    new-instance v1, Lcom/transsion/commercialization/task/wheel/g;

    invoke-direct {v1, p0}, Lcom/transsion/commercialization/task/wheel/g;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    return-void
.end method

.method private static final B0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V
    .locals 1

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lcom/tn/lib/widget/R$string;->no_network:I

    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->r(I)V

    sget-object p1, Lok/c;->a:Lok/c;

    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> lotteryDraw() --> \u65e0\u7f51\u7edc\u76f4\u63a5\u62d2\u7edd\u64cd\u4f5c"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lok/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lkk/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->startIndicator()V

    :cond_1
    return-void
.end method

.method private static final C0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "close"

    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->B0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0()Lcom/transsion/commercialization/task/treasure/b;
    .locals 1

    invoke-static {}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->y0()Lcom/transsion/commercialization/task/treasure/b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic p0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->C0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic q0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->v0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic r0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lkk/f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    return-object p0
.end method

.method public static final synthetic s0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lcom/transsion/commercialization/task/treasure/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->x0()Lcom/transsion/commercialization/task/treasure/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    return-object p0
.end method

.method public static final synthetic u0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->z0()V

    return-void
.end method

.method private final v0(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dialog_name"

    const-string v3, "lucky_wheel"

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

.method private final w0()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "dialog_name"

    const-string v3, "lucky_wheel"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lhj/i;->a:Lhj/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getSimpleName(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Lhj/i;->r(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private final x0()Lcom/transsion/commercialization/task/treasure/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/task/treasure/b;

    return-object v0
.end method

.method private static final y0()Lcom/transsion/commercialization/task/treasure/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/commercialization/task/treasure/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/task/treasure/b;

    return-object v0
.end method

.method private final z0()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final D0(Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;)Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->c:Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    return-object p0
.end method

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

    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->w0()V

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
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_1
    invoke-static {p1}, Lkk/f;->a(Landroid/view/View;)Lkk/f;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->d:Lkk/f;

    invoke-direct {p0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->A0()V

    return-void
.end method
