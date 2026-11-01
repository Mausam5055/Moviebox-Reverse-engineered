.class final Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPhoneViewModel;->r(Ljava/lang/String;)V
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
    c = "com.transsnet.login.phone.LoginPhoneViewModel$checkPhoneNum$1"
    f = "LoginPhoneViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $phoneNum:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsnet/login/phone/LoginPhoneViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/login/phone/LoginPhoneViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/login/phone/LoginPhoneViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->this$0:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->$phoneNum:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->this$0:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->$phoneNum:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;-><init>(Lcom/transsnet/login/phone/LoginPhoneViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lyy/a;->a:Lyy/a;

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->this$0:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-virtual {v0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->$phoneNum:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lyy/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsnet/loginapi/bean/Country;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->$phoneNum:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$checkPhoneNum$1;->this$0:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "substring(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->m(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->h(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
