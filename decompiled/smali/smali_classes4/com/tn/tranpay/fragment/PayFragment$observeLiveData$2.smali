.class final Lcom/tn/tranpay/fragment/PayFragment$observeLiveData$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayFragment;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/fragment/PayFragment$observeLiveData$2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lyh/b;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lyh/b;",
        "resultContent",
        "",
        "invoke",
        "(Lyh/b;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $gson:Lcom/google/gson/Gson;

.field final synthetic this$0:Lcom/tn/tranpay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Lcom/tn/tranpay/fragment/PayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayFragment$observeLiveData$2;->$gson:Lcom/google/gson/Gson;

    iput-object p2, p0, Lcom/tn/tranpay/fragment/PayFragment$observeLiveData$2;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyh/b;

    invoke-virtual {p0, p1}, Lcom/tn/tranpay/fragment/PayFragment$observeLiveData$2;->invoke(Lyh/b;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lyh/b;)V
    .locals 10

    sget-object v0, Lai/a;->a:Lai/a;

    iget-object v1, p0, Lcom/tn/tranpay/fragment/PayFragment$observeLiveData$2;->$gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lyh/b;->b()Lcom/tn/tranpay/bean/QueryStatus;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resultContent is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p1, :cond_a

    iget-object v4, p0, Lcom/tn/tranpay/fragment/PayFragment$observeLiveData$2;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    invoke-virtual {p1}, Lyh/b;->a()Lcom/tn/tranpay/bean/QueryOrderResultContent;

    move-result-object v1

    invoke-virtual {p1}, Lyh/b;->b()Lcom/tn/tranpay/bean/QueryStatus;

    move-result-object p1

    sget-object v5, Lcom/tn/tranpay/fragment/PayFragment$observeLiveData$2$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v5, p1

    const/4 v5, 0x1

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string p1, "\u53d6\u6d88\u8f6e\u8be2"

    invoke-static {v0, p1, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    :cond_2
    const-string p1, "\u652f\u4ed8\u5904\u7406\u4e2d"

    invoke-static {v0, p1, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x4

    const-string v6, "Payment processing"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/tn/tranpay/fragment/PayFragment;->j0(Lcom/tn/tranpay/fragment/PayFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    :cond_3
    const-string p1, "\u652f\u4ed8\u5f02\u5e38"

    invoke-static {v0, p1, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x2

    const-string v6, "Payment error"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/tn/tranpay/fragment/PayFragment;->j0(Lcom/tn/tranpay/fragment/PayFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    const-string p1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, p1, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-static {v4}, Lcom/tn/tranpay/fragment/PayFragment;->d0(Lcom/tn/tranpay/fragment/PayFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->x()Ljava/lang/String;

    move-result-object v0

    const-string v2, "k_pay_method_code"

    invoke-virtual {p1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/tn/tranpay/network/BaseContent;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move-object v6, p1

    goto :goto_3

    :cond_6
    :goto_2
    const-string p1, "Payment success"

    goto :goto_1

    :goto_3
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/tn/tranpay/fragment/PayFragment;->j0(Lcom/tn/tranpay/fragment/PayFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    :cond_7
    const-string p1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, p1, v2, v3, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/tn/tranpay/network/BaseContent;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    :cond_8
    const-string p1, "Payment failed"

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/tn/tranpay/network/BaseContent;->getCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v4, v1, p1, v0}, Lcom/tn/tranpay/fragment/PayFragment;->Z(Lcom/tn/tranpay/fragment/PayFragment;ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method
