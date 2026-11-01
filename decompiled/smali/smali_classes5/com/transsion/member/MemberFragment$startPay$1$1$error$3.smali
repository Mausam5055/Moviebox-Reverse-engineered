.class final Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberFragment$startPay$1$1;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V
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
    c = "com.transsion.member.MemberFragment$startPay$1$1$error$3"
    f = "MemberFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/member/MemberFragment;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/member/MemberFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->this$0:Lcom/transsion/member/MemberFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/member/MemberFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->h(Lcom/transsion/member/MemberFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/member/MemberFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->g(Lcom/transsion/member/MemberFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lcom/transsion/member/MemberFragment;)Lkotlin/Unit;
    .locals 3

    invoke-static {p0}, Lcom/transsion/member/MemberFragment;->B0(Lcom/transsion/member/MemberFragment;)Lcom/transsion/memberapi/SkuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/memberapi/SkuItem;->getSkuId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/memberapi/SkuItem;->getCategory()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/transsion/memberapi/SkuCategory;->AUTO_RENEW:Lcom/transsion/memberapi/SkuCategory;

    invoke-virtual {v2}, Lcom/transsion/memberapi/SkuCategory;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/transsion/member/MemberFragment;->H0(Lcom/transsion/member/MemberFragment;Ljava/lang/String;Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/transsion/member/MemberFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/MemberFragment;->C0(Lcom/transsion/member/MemberFragment;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
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

    new-instance p1, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;

    iget-object v0, p0, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->this$0:Lcom/transsion/member/MemberFragment;

    invoke-direct {p1, v0, p2}, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;-><init>(Lcom/transsion/member/MemberFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/member/dialog/PayFailedDialog;->k:Lcom/transsion/member/dialog/PayFailedDialog$a;

    invoke-virtual {p1}, Lcom/transsion/member/dialog/PayFailedDialog$a;->a()Lcom/transsion/member/dialog/PayFailedDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->this$0:Lcom/transsion/member/MemberFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

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

    iget-object v0, p0, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->this$0:Lcom/transsion/member/MemberFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

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

    iget-object v0, p0, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->this$0:Lcom/transsion/member/MemberFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

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

    iget-object v0, p0, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->this$0:Lcom/transsion/member/MemberFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/member/R$string;->member_pay_failed_dialog_feedback:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v1}, Lcom/transsion/member/dialog/PayFailedDialog;->t0(Ljava/lang/String;)Lcom/transsion/member/dialog/PayFailedDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->this$0:Lcom/transsion/member/MemberFragment;

    new-instance v1, Lcom/transsion/member/z;

    invoke-direct {v1, v0}, Lcom/transsion/member/z;-><init>(Lcom/transsion/member/MemberFragment;)V

    invoke-virtual {p1, v1}, Lcom/transsion/member/dialog/PayFailedDialog;->w0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/dialog/PayFailedDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->this$0:Lcom/transsion/member/MemberFragment;

    new-instance v1, Lcom/transsion/member/a0;

    invoke-direct {v1, v0}, Lcom/transsion/member/a0;-><init>(Lcom/transsion/member/MemberFragment;)V

    invoke-virtual {p1, v1}, Lcom/transsion/member/dialog/PayFailedDialog;->v0(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/dialog/PayFailedDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/MemberFragment$startPay$1$1$error$3;->this$0:Lcom/transsion/member/MemberFragment;

    const-string v1, "PayFailedDialog"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
