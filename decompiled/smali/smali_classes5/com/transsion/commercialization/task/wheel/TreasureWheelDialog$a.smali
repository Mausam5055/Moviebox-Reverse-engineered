.class public final Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/commercialization/task/wheel/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;->a:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/commercialization/task/wheel/e$a;->c(Lcom/transsion/commercialization/task/wheel/e;)V

    return-void
.end method

.method public b(Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/e$a;->e(Lcom/transsion/commercialization/task/wheel/e;Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;)V

    return-void
.end method

.method public c(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V
    .locals 2

    new-instance v0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;

    invoke-direct {v0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->u0(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "TreasureWheelStateDialog"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;->a:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/commercialization/task/wheel/e$a;->d(Lcom/transsion/commercialization/task/wheel/e;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;->a:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    invoke-static {v0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->u0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;->a:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    const-string v1, "spin_now"

    invoke-static {v0, v1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->q0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/commercialization/task/wheel/e$a;->b(Lcom/transsion/commercialization/task/wheel/e;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/e$a;->a(Lcom/transsion/commercialization/task/wheel/e;Ljava/lang/String;)V

    return-void
.end method
