.class public final Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/shorttv/order/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->U0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

.field final synthetic b:Lcom/transsion/shorttv/bean/Subject;

.field final synthetic c:I

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Lcom/transsion/shorttv/bean/Subject;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    iput p3, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    iput-object p4, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->G0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)V

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

    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v8

    const-string v1, "<get-TAG>(...)"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    iget v3, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    const-string v4, "fail"

    const-string v7, "download"

    invoke-virtual/range {v1 .. v7}, Lss/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog;->e:Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;

    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_pay_failed_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "getString(...)"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_pay_failed_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_payment_retry:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    iget v4, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    new-instance v12, Lcom/transsion/shorttv/ui/fragment/download/y;

    invoke-direct {v12, v1, v2, v3, v4}, Lcom/transsion/shorttv/ui/fragment/download/y;-><init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_payment_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x20

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;->b(Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/shorttv/ui/dialog/ShortTvAlertDialog;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->d:Landroid/content/Context;

    const-string v3, "ShortTvAlertDialog"

    invoke-virtual {v1, v2, v3}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->i0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p1}, Lcom/transsion/shorttv/order/b$a;->b(Lcom/transsion/shorttv/order/b;Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)V

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getOrderStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    sget-object v4, Lss/b;->a:Lss/b;

    iget-object v5, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    iget v6, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    const-string v9, "0"

    const-string v10, "download"

    const-string v7, "success"

    const-string v8, ""

    invoke-virtual/range {v4 .. v10}, Lss/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->s(I)V

    :cond_2
    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->g0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R0(I)V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->g0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->S0()V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-static {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->P0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->r()Landroidx/lifecycle/b0;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {v1, v2, v3}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->M0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;J)V

    goto :goto_a

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    sget-object v4, Lss/b;->a:Lss/b;

    iget-object v5, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    iget v6, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    const-string v9, "0"

    const-string v10, "download"

    const-string v7, "cancel"

    const-string v8, ""

    invoke-virtual/range {v4 .. v10}, Lss/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_6
    :goto_3
    sget-object v11, Lss/b;->a:Lss/b;

    iget-object v12, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->b:Lcom/transsion/shorttv/bean/Subject;

    iget v13, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$d;->c:I

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move-object v15, v2

    goto :goto_6

    :cond_8
    :goto_5
    const-string v2, ""

    goto :goto_4

    :goto_6
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    :goto_7
    move-object/from16 v16, v1

    goto :goto_9

    :cond_a
    :goto_8
    const-string v1, "-1"

    goto :goto_7

    :goto_9
    const-string v17, "download"

    const-string v14, "fail"

    invoke-virtual/range {v11 .. v17}, Lss/b;->j(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-void
.end method
