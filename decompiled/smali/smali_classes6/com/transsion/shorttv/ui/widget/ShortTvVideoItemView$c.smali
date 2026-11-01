.class public final Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/shorttv/order/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field final synthetic b:Lcom/transsion/shorttv/bean/Subject;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->b:Lcom/transsion/shorttv/bean/Subject;

    iput p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->c:I

    iput-object p4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->d(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$callPayMethod(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    const-string v1, "errorCode"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "errorMsg"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p2}, Lcom/transsion/shorttv/order/b$a;->a(Lcom/transsion/shorttv/order/b;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Llg/a;->a:Llg/a$a;

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getTAG$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callPayMethod onPayFail, errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v1, Lss/b;->a:Lss/b;

    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->b:Lcom/transsion/shorttv/bean/Subject;

    iget v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->c:I

    const-string v4, "fail"

    const-string v7, "play"

    invoke-virtual/range {v1 .. v7}, Lss/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog;->e:Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_pay_failed_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "getString(...)"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_pay_failed_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_payment_retry:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->d:Ljava/lang/String;

    new-instance v12, Lcom/transsion/shorttv/ui/widget/y0;

    invoke-direct {v12, v1, v2}, Lcom/transsion/shorttv/ui/widget/y0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_payment_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x20

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;->b(Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ShortTvAlertDialog"

    invoke-virtual {v1, v2, v3}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->i0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, Lcom/transsion/shorttv/order/b$a;->b(Lcom/transsion/shorttv/order/b;Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getTAG$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callPayMethod onPurchase, orderStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lfs/b;->a:Lfs/b$a;

    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/shorttv/R$string;->short_tv_pay_series_successfully:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getOrderStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    sget-object v5, Lss/b;->a:Lss/b;

    iget-object v6, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->b:Lcom/transsion/shorttv/bean/Subject;

    iget v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->c:I

    const-string v10, "0"

    const-string v11, "play"

    const-string v8, "success"

    const-string v9, ""

    invoke-virtual/range {v5 .. v11}, Lss/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getMShortTvViewModel$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R0(I)V

    :cond_2
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayerView$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/ui/ORPlayerView;

    move-result-object v3

    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v4}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getData$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljs/e;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Ljs/e;)V

    goto :goto_9

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    sget-object v5, Lss/b;->a:Lss/b;

    iget-object v6, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->b:Lcom/transsion/shorttv/bean/Subject;

    iget v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->c:I

    const-string v10, "0"

    const-string v11, "play"

    const-string v8, "cancel"

    const-string v9, ""

    invoke-virtual/range {v5 .. v11}, Lss/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_5
    :goto_2
    sget-object v12, Lss/b;->a:Lss/b;

    iget-object v13, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->b:Lcom/transsion/shorttv/bean/Subject;

    iget v14, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;->c:I

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v16, v1

    goto :goto_5

    :cond_7
    :goto_4
    const-string v1, ""

    goto :goto_3

    :goto_5
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v17, v1

    goto :goto_8

    :cond_9
    :goto_7
    const-string v1, "-1"

    goto :goto_6

    :goto_8
    const-string v18, "play"

    const-string v15, "fail"

    invoke-virtual/range {v12 .. v18}, Lss/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void
.end method
