.class public final Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1;
.super Lcw/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcw/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {v0}, Lyg/b$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    new-instance v0, Lng/a;

    invoke-direct {v0}, Lng/a;-><init>()V

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lng/a;->a(IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 3

    const-string v0, "oneroom-subtitle-db"

    const-string v1, "mb-ad-plans-db"

    const-string v2, "oneroom-db"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lmg/c;->a:Lmg/c$a;

    invoke-virtual {v0}, Lmg/c$a;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmg/c$a;->c(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Lkotlin/jvm/functions/Function1;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v1, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getLogsConfig$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getLogsConfig$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    invoke-static {v0, v1, v2, p1, v2}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt;->d(Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public f(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p3

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getTstToken$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getTstToken$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getTstToken$3;

    invoke-direct {p1, p2, v1}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$getTstToken$3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, v0, p1}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt;->c(Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->a:Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;

    invoke-static {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->c(Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;)Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public h(Lcom/google/gson/JsonObject;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v1, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$reportUploadLogsResult$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$reportUploadLogsResult$1;-><init>(Lcom/google/gson/JsonObject;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$reportUploadLogsResult$2;

    invoke-direct {p1, p2, v2}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1$reportUploadLogsResult$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt;->c(Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
