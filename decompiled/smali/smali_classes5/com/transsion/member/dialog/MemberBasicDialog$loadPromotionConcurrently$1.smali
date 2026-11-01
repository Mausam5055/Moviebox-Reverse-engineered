.class final Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/dialog/MemberBasicDialog;->D0()V
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
    c = "com.transsion.member.dialog.MemberBasicDialog$loadPromotionConcurrently$1"
    f = "MemberBasicDialog.kt"
    l = {
        0x84
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/member/dialog/MemberBasicDialog;


# direct methods
.method constructor <init>(Lcom/transsion/member/dialog/MemberBasicDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/member/dialog/MemberBasicDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->this$0:Lcom/transsion/member/dialog/MemberBasicDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;

    iget-object v1, p0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->this$0:Lcom/transsion/member/dialog/MemberBasicDialog;

    invoke-direct {v0, v1, p2}, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;-><init>(Lcom/transsion/member/dialog/MemberBasicDialog;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/member/dialog/MemberBasicDialog;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object p1, p0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->this$0:Lcom/transsion/member/dialog/MemberBasicDialog;

    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lcom/transsion/member/dialog/MemberBasicDialog;->u0(Lcom/transsion/member/dialog/MemberBasicDialog;)Lcom/transsion/member/promotion/PromotionManager;

    move-result-object v1

    iput-object p1, p0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->label:I

    invoke-virtual {v1, p0}, Lcom/transsion/member/promotion/PromotionManager;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/transsion/memberapi/SkuPromotionDto;

    invoke-static {v0, p1}, Lcom/transsion/member/dialog/MemberBasicDialog;->v0(Lcom/transsion/member/dialog/MemberBasicDialog;Lcom/transsion/memberapi/SkuPromotionDto;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object p1, p0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->this$0:Lcom/transsion/member/dialog/MemberBasicDialog;

    invoke-static {p1, v2}, Lcom/transsion/member/dialog/MemberBasicDialog;->w0(Lcom/transsion/member/dialog/MemberBasicDialog;Z)V

    iget-object p1, p0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->this$0:Lcom/transsion/member/dialog/MemberBasicDialog;

    invoke-static {p1}, Lcom/transsion/member/dialog/MemberBasicDialog;->s0(Lcom/transsion/member/dialog/MemberBasicDialog;)Lcom/transsion/memberapi/MemberPriceData;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/member/dialog/MemberBasicDialog$loadPromotionConcurrently$1;->this$0:Lcom/transsion/member/dialog/MemberBasicDialog;

    invoke-static {v0}, Lcom/transsion/member/dialog/MemberBasicDialog;->t0(Lcom/transsion/member/dialog/MemberBasicDialog;)Lcom/transsion/memberapi/SkuPromotionDto;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/memberapi/SkuPromotionDto;->getItems()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v0, p1, v1}, Lcom/transsion/member/dialog/MemberBasicDialog;->r0(Lcom/transsion/member/dialog/MemberBasicDialog;Lcom/transsion/memberapi/MemberPriceData;Ljava/util/List;)V

    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
