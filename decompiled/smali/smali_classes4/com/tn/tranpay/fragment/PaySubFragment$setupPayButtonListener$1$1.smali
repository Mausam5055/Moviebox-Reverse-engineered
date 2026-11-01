.class final Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PaySubFragment;->q0()V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.tn.tranpay.fragment.PaySubFragment$setupPayButtonListener$1$1"
    f = "PaySubFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/tn/tranpay/fragment/PaySubFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/PaySubFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/tranpay/fragment/PaySubFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    invoke-direct {p1, v0, p2}, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;-><init>(Lcom/tn/tranpay/fragment/PaySubFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->c0(Lcom/tn/tranpay/fragment/PaySubFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tn/tranpay/fragment/PaySubFragment;->d0(Lcom/tn/tranpay/fragment/PaySubFragment;Z)V

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->a0(Lcom/tn/tranpay/fragment/PaySubFragment;)Lgh/b;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Lgh/b;->e:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->a0(Lcom/tn/tranpay/fragment/PaySubFragment;)Lgh/b;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lgh/b;->d:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object p1, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_phone_number"

    invoke-virtual {v0, v1, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "k_cnic_number"

    invoke-virtual {p1, v0, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->b0(Lcom/tn/tranpay/fragment/PaySubFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    move-result-object v2

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$setupPayButtonListener$1$1;->this$0:Lcom/tn/tranpay/fragment/PaySubFragment;

    invoke-virtual {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->h0()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->k(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
