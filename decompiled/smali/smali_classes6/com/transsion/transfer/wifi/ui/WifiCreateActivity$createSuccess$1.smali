.class final Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->S0(Llv/a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.transfer.wifi.ui.WifiCreateActivity$createSuccess$1"
    f = "WifiCreateActivity.kt"
    l = {
        0x112,
        0x11a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $duration:J

.field final synthetic $wifiInfoModel:Llv/a;

.field J$0:J

.field label:I

.field final synthetic this$0:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;


# direct methods
.method constructor <init>(Llv/a;Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llv/a;",
            "Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$wifiInfoModel:Llv/a;

    iput-object p2, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->this$0:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    iput-wide p3, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$duration:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;

    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$wifiInfoModel:Llv/a;

    iget-object v2, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->this$0:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    iget-wide v3, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$duration:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;-><init>(Llv/a;Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-wide v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;->a:Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;

    iget-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$wifiInfoModel:Llv/a;

    invoke-virtual {v6, p1}, Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;->b(Llv/a;)Ljava/lang/String;

    move-result-object v7

    iput-wide v4, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->J$0:J

    iput v2, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->label:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v10, p0

    invoke-static/range {v6 .. v12}, Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;->g(Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;Ljava/lang/String;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-wide v1, v4

    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->this$0:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    iget-wide v7, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$duration:J

    sget v9, Lcom/transsion/transfer/R$id;->ivTransWifiQrCode:I

    invoke-virtual {v6, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v9, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v6, v5}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->Q0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Z)V

    sget-object p1, Lkv/c;->a:Lkv/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    invoke-virtual {p1, v7, v8, v9, v10}, Lkv/c;->j(JJ)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    new-instance v1, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1$1$1;

    invoke-direct {v1, v6, v4}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1$1$1;-><init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_4
    iget-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->this$0:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    iget-wide v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$duration:J

    sget-object v2, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-virtual {p1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " --> createSuccess() --> syncEncodeQRCode() --> \u521b\u5efa\u4e8c\u7ef4\u7801\u5931\u8d25\u4e86"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 v2, 0x67

    invoke-static {p1, v2, v0, v1}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->O0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;IJ)V

    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
