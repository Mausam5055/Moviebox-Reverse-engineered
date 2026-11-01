.class final Lcom/transsion/member/view/MemberProView$startPay$1$error$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/view/MemberProView$startPay$1;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V
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
    c = "com.transsion.member.view.MemberProView$startPay$1$error$1"
    f = "MemberProView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $errorCode:Ljava/lang/Integer;

.field final synthetic $message:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/member/view/MemberProView;


# direct methods
.method constructor <init>(Lcom/transsion/member/view/MemberProView;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/member/view/MemberProView;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/member/view/MemberProView$startPay$1$error$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->this$0:Lcom/transsion/member/view/MemberProView;

    iput-object p2, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->$errorCode:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->$message:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/member/view/MemberProView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->g(Lcom/transsion/member/view/MemberProView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/member/view/MemberProView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->h(Lcom/transsion/member/view/MemberProView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lcom/transsion/member/view/MemberProView;)Lkotlin/Unit;
    .locals 4

    invoke-static {p0}, Lcom/transsion/member/view/MemberProView;->access$getSelectedSkuItem$p(Lcom/transsion/member/view/MemberProView;)Lcom/transsion/memberapi/MemberPriceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberPriceItem;->getSkuId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/transsion/member/view/MemberProView;->x(Lcom/transsion/member/view/MemberProView;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/transsion/member/view/MemberProView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/view/MemberProView;->access$jumpToFeedBack(Lcom/transsion/member/view/MemberProView;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;

    iget-object v0, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->this$0:Lcom/transsion/member/view/MemberProView;

    iget-object v1, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->$errorCode:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->$message:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;-><init>(Lcom/transsion/member/view/MemberProView;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/member/dialog/PayFailedDialog;->k:Lcom/transsion/member/dialog/PayFailedDialog$a;

    invoke-virtual {p1}, Lcom/transsion/member/dialog/PayFailedDialog$a;->a()Lcom/transsion/member/dialog/PayFailedDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->this$0:Lcom/transsion/member/view/MemberProView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/transsion/member/R$string;->member_pay_failed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsion/member/dialog/PayFailedDialog;->y0(Ljava/lang/String;)Lcom/transsion/member/dialog/PayFailedDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->this$0:Lcom/transsion/member/view/MemberProView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v2, Lcom/transsion/member/R$string;->member_pay_failed_dialog_content:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/transsion/member/dialog/PayFailedDialog;->u0(Ljava/lang/String;)Lcom/transsion/member/dialog/PayFailedDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->this$0:Lcom/transsion/member/view/MemberProView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v2, Lcom/transsion/member/R$string;->member_pay_failed_dialog_retry:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/transsion/member/dialog/PayFailedDialog;->x0(Ljava/lang/String;)Lcom/transsion/member/dialog/PayFailedDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->this$0:Lcom/transsion/member/view/MemberProView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v2, Lcom/transsion/member/R$string;->member_pay_failed_dialog_feedback:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Lcom/transsion/member/dialog/PayFailedDialog;->t0(Ljava/lang/String;)Lcom/transsion/member/dialog/PayFailedDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->this$0:Lcom/transsion/member/view/MemberProView;

    new-instance v2, Lcom/transsion/member/view/f0;

    invoke-direct {v2, v0}, Lcom/transsion/member/view/f0;-><init>(Lcom/transsion/member/view/MemberProView;)V

    invoke-virtual {p1, v2}, Lcom/transsion/member/dialog/PayFailedDialog;->w0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/dialog/PayFailedDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->this$0:Lcom/transsion/member/view/MemberProView;

    new-instance v2, Lcom/transsion/member/view/g0;

    invoke-direct {v2, v0}, Lcom/transsion/member/view/g0;-><init>(Lcom/transsion/member/view/MemberProView;)V

    invoke-virtual {p1, v2}, Lcom/transsion/member/dialog/PayFailedDialog;->v0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/dialog/PayFailedDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->this$0:Lcom/transsion/member/view/MemberProView;

    invoke-static {v0}, Lcom/transsion/member/view/MemberProView;->access$getHostActivity$p(Lcom/transsion/member/view/MemberProView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    :cond_4
    const-string v0, "PayFailedDialog"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->this$0:Lcom/transsion/member/view/MemberProView;

    invoke-static {p1}, Lcom/transsion/member/view/MemberProView;->access$getPurchaseListener$p(Lcom/transsion/member/view/MemberProView;)Lzm/f;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->$errorCode:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/transsion/member/view/MemberProView$startPay$1$error$1;->$message:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lzm/f;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
