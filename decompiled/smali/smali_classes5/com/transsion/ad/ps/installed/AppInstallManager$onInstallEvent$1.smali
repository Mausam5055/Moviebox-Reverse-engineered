.class final Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/ps/installed/AppInstallManager;->e(Landroid/content/Context;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V
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
    c = "com.transsion.ad.ps.installed.AppInstallManager$onInstallEvent$1"
    f = "AppInstallManager.kt"
    l = {
        0x28
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $appInfo:Lcom/transsion/ad/db/pslink/AppInstalledBean;

.field final synthetic $context:Landroid/content/Context;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/transsion/ad/db/pslink/AppInstalledBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/ad/db/pslink/AppInstalledBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->$appInfo:Lcom/transsion/ad/db/pslink/AppInstalledBean;

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

    new-instance p1, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;

    iget-object v0, p0, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->$appInfo:Lcom/transsion/ad/db/pslink/AppInstalledBean;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;-><init>(Landroid/content/Context;Lcom/transsion/ad/db/pslink/AppInstalledBean;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$n;

    iget-object v1, p0, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/MbAdDatabase$n;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/ad/db/MbAdDatabase;->w0()Lmi/a;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->$appInfo:Lcom/transsion/ad/db/pslink/AppInstalledBean;

    iput v2, p0, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->label:I

    invoke-interface {p1, v1, p0}, Lmi/a;->a(Lcom/transsion/ad/db/pslink/AppInstalledBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object v1, Loi/a;->a:Loi/a;

    iget-object p1, p0, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->$appInfo:Lcom/transsion/ad/db/pslink/AppInstalledBean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInstallManager --> onInstallEvent(\u4fdd\u5b58\u5230\u672c\u5730\u6570\u636e\u5e93) --> appInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loi/a;->m(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    iget-object v0, p0, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->$appInfo:Lcom/transsion/ad/db/pslink/AppInstalledBean;

    invoke-virtual {v0}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ad/ps/installed/AppInstallManager$onInstallEvent$1;->$appInfo:Lcom/transsion/ad/db/pslink/AppInstalledBean;

    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "install"

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/ad/ps/PSReportUtil;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
