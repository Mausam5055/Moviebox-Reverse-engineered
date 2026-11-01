.class final Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/web/fragment/WebFragmentV2;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1;


# direct methods
.method constructor <init>(Lcom/transsion/web/fragment/WebFragmentV2;Ljava/lang/String;Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3;->a:Lcom/transsion/web/fragment/WebFragmentV2;

    iput-object p2, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3;->c:Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1;

    iget v1, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1;-><init>(Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p2

    new-instance v2, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$1;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3$emit$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    sget-object p2, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3;->c:Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1;

    invoke-virtual {v0}, Lcom/transsion/web/api/WebJavascriptInterface;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestApiData, success :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3;->a:Lcom/transsion/web/fragment/WebFragmentV2;

    invoke-virtual {p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3;->a:Lcom/transsion/web/fragment/WebFragmentV2;

    invoke-virtual {p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->o0()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p2, ""

    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->sendResponse(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1$request$1$3;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
