.class final Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayFragment;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tn/tranpay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/PayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$1;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 13

    sget-object v0, Lai/a;->a:Lai/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "\u7528\u6237\u70b9\u51fb\u4e86\u652f\u4ed8\u540e\u7684\u7559\u5b58\u63d0\u793a"

    invoke-static {v0, v3, v1, v2, v1}, Lai/a;->c(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v0, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    invoke-virtual {v0}, Lcom/tn/tranpay/report/h;->i()V

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$1;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/PayFragment;->d0(Lcom/tn/tranpay/fragment/PayFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->A()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$1;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/PayFragment;->d0(Lcom/tn/tranpay/fragment/PayFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "USER CANCEL"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->h(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object v7, p0, Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$1;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v8, 0x1

    const-string v9, "User cancelled"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/tn/tranpay/fragment/PayFragment;->j0(Lcom/tn/tranpay/fragment/PayFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
