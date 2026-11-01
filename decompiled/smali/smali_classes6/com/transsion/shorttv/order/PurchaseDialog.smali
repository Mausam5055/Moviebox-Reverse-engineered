.class public final Lcom/transsion/shorttv/order/PurchaseDialog;
.super Lcom/transsion/shorttv/order/BasePayLoadingDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0019\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/shorttv/order/PurchaseDialog;",
        "Lcom/transsion/shorttv/order/BasePayLoadingDialog;",
        "<init>",
        "()V",
        "Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;",
        "it",
        "",
        "D0",
        "(Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)V",
        "x0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;",
        "orderReq",
        "F0",
        "(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)Lcom/transsion/shorttv/order/PurchaseDialog;",
        "d",
        "Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;",
        "Lcom/transsion/shorttv/order/PayLoadingVM;",
        "e",
        "Lkotlin/Lazy;",
        "w0",
        "()Lcom/transsion/shorttv/order/PayLoadingVM;",
        "payVM",
        "shortTvLib_release"
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
.field private d:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

.field private final e:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;-><init>()V

    new-instance v0, Lcom/transsion/shorttv/order/l;

    invoke-direct {v0}, Lcom/transsion/shorttv/order/l;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->e:Lkotlin/Lazy;

    return-void
.end method

.method private static final A0(Lcom/transsion/shorttv/order/PurchaseDialog;ILjava/lang/String;)Lkotlin/Unit;
    .locals 7

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance p1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->D0(Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final B0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;
    .locals 3

    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->w0()Lcom/transsion/shorttv/order/PayLoadingVM;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;->getTradingOrderId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->d:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getProjectName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object p0, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->d:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug()Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/shorttv/order/PayLoadingVM;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final C0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->o0()Lcom/transsion/shorttv/order/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/shorttv/order/b;->b(Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final D0(Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)V
    .locals 5

    sget-object v0, Lcom/transsion/shorttv/order/c;->a:Lcom/transsion/shorttv/order/c;

    invoke-virtual {p0}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> initVM() --> code = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- message = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/order/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->o0()Lcom/transsion/shorttv/order/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/transsion/shorttv/order/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method private static final E0()Lcom/transsion/shorttv/order/PayLoadingVM;
    .locals 1

    new-instance v0, Lcom/transsion/shorttv/order/PayLoadingVM;

    invoke-direct {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;-><init>()V

    return-object v0
.end method

.method public static synthetic q0()Lcom/transsion/shorttv/order/PayLoadingVM;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/order/PurchaseDialog;->E0()Lcom/transsion/shorttv/order/PayLoadingVM;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic r0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->z0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->y0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Lcom/transsion/shorttv/order/PurchaseDialog;ILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/order/PurchaseDialog;->A0(Lcom/transsion/shorttv/order/PurchaseDialog;ILjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->B0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->C0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final w0()Lcom/transsion/shorttv/order/PayLoadingVM;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/order/PayLoadingVM;

    return-object v0
.end method

.method private final x0()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->w0()Lcom/transsion/shorttv/order/PayLoadingVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->n()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsion/shorttv/order/i;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/order/i;-><init>(Lcom/transsion/shorttv/order/PurchaseDialog;)V

    new-instance v2, Lcom/transsion/shorttv/order/PurchaseDialog$a;

    invoke-direct {v2, v1}, Lcom/transsion/shorttv/order/PurchaseDialog$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->w0()Lcom/transsion/shorttv/order/PayLoadingVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->l()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsion/shorttv/order/j;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/order/j;-><init>(Lcom/transsion/shorttv/order/PurchaseDialog;)V

    new-instance v2, Lcom/transsion/shorttv/order/PurchaseDialog$a;

    invoke-direct {v2, v1}, Lcom/transsion/shorttv/order/PurchaseDialog$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->w0()Lcom/transsion/shorttv/order/PayLoadingVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->m()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsion/shorttv/order/k;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/order/k;-><init>(Lcom/transsion/shorttv/order/PurchaseDialog;)V

    new-instance v2, Lcom/transsion/shorttv/order/PurchaseDialog$a;

    invoke-direct {v2, v1}, Lcom/transsion/shorttv/order/PurchaseDialog$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method private static final y0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->D0(Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final z0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;
    .locals 4

    sget-object v0, Lcom/transsion/shorttv/order/c;->a:Lcom/transsion/shorttv/order/c;

    invoke-virtual {p0}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->getClassTag()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;->getTradingOrderId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> initVM() --> \u521b\u5efa\u652f\u4ed8\u8ba2\u5355\u6210\u529f --> tradingOrderId = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/order/c;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/shorttv/order/d;->a:Lcom/transsion/shorttv/order/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/shorttv/order/m;

    invoke-direct {v2, p0}, Lcom/transsion/shorttv/order/m;-><init>(Lcom/transsion/shorttv/order/PurchaseDialog;)V

    new-instance v3, Lcom/transsion/shorttv/order/n;

    invoke-direct {v3, p0, p1}, Lcom/transsion/shorttv/order/n;-><init>(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/shorttv/order/d;->c(Landroid/content/Context;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final F0(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)Lcom/transsion/shorttv/order/PurchaseDialog;
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->d:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->x0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->n0(Z)V

    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->w0()Lcom/transsion/shorttv/order/PayLoadingVM;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->d:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM;->j(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)V

    return-void
.end method
