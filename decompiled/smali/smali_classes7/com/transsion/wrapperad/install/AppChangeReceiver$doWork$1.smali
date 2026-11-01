.class final Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/install/AppChangeReceiver;->b(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/wrapperad/install/open/ChangeType;)V
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
    c = "com.transsion.wrapperad.install.AppChangeReceiver$doWork$1"
    f = "AppChangeReceiver.kt"
    l = {
        0x56
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $changeType:Lcom/transsion/wrapperad/install/open/ChangeType;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $packageName:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/wrapperad/install/AppChangeReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/wrapperad/install/open/ChangeType;Lcom/transsion/wrapperad/install/AppChangeReceiver;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/transsion/wrapperad/install/open/ChangeType;",
            "Lcom/transsion/wrapperad/install/AppChangeReceiver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->$changeType:Lcom/transsion/wrapperad/install/open/ChangeType;

    iput-object p4, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->this$0:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;

    iget-object v1, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->$changeType:Lcom/transsion/wrapperad/install/open/ChangeType;

    iget-object v4, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->this$0:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/wrapperad/install/open/ChangeType;Lcom/transsion/wrapperad/install/AppChangeReceiver;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    iget-object v1, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/wrapperad/install/AppChangeReceiver;

    iget-object v2, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/wrapperad/install/open/ChangeType;

    iget-object v3, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object v4, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->$packageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->$changeType:Lcom/transsion/wrapperad/install/open/ChangeType;

    iget-object v1, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->this$0:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v5, Lgy/c;->a:Lgy/c;

    invoke-virtual {v5, v4, v3, p1}, Lgy/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/wrapperad/install/open/ChangeType;)Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;

    move-result-object v5

    sget-object v6, Lcom/transsion/ad/ps/installed/AppInstallManager;->a:Lcom/transsion/ad/ps/installed/AppInstallManager;

    invoke-virtual {v5}, Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v4, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->L$4:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/wrapperad/install/AppChangeReceiver$doWork$1;->label:I

    invoke-virtual {v6, v4, v7, p0}, Lcom/transsion/ad/ps/installed/AppInstallManager;->d(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v5

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-static {v1}, Lcom/transsion/wrapperad/install/AppChangeReceiver;->a(Lcom/transsion/wrapperad/install/AppChangeReceiver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> doWork() --> \u62e6\u622a\u5b89\u88c5\u5e94\u7528,\u4ed6\u4e0d\u662fMB\u89e6\u53d1\u4e0b\u8f7d\u7684 --> pkg = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v5, "package_name"

    invoke-interface {p1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lhj/i;->a:Lhj/i;

    const-string v5, "AppChangeReceiver"

    const-string v6, "broadcast"

    invoke-virtual {v3, v5, v6, p1}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-static {v1}, Lcom/transsion/wrapperad/install/AppChangeReceiver;->a(Lcom/transsion/wrapperad/install/AppChangeReceiver;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> doWork() --> pkg = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- type = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- info = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/wrapperad/install/open/ChangeType;->INSTALLED:Lcom/transsion/wrapperad/install/open/ChangeType;

    if-ne v2, p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge p1, v1, :cond_4

    sget-object p1, Lhy/c;->a:Lhy/c;

    invoke-virtual {p1, v4, v0}, Lhy/c;->a(Landroid/content/Context;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;)V

    goto :goto_1

    :cond_4
    sget-object p1, Lhy/b;->a:Lhy/b;

    invoke-virtual {p1, v4}, Lhy/b;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lhy/c;->a:Lhy/c;

    invoke-virtual {p1, v4, v0}, Lhy/c;->a(Landroid/content/Context;Lcom/transsion/wrapperad/install/appinfo/AppChangeInfo;)V

    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
