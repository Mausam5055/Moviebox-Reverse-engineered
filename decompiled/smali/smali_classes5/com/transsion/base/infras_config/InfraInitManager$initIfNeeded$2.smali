.class final Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/base/infras_config/InfraInitManager;->f(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Lcom/transsion/base/infras_config/model/ConfigInitData;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/Result;",
        "Lcom/transsion/base/infras_config/model/ConfigInitData;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lkotlin/Result;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.base.infras_config.InfraInitManager$initIfNeeded$2"
    f = "InfraInitManager.kt"
    l = {
        0x9a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $baseUrl:Ljava/lang/String;

.field final synthetic $minIntervalMs:J

.field final synthetic $sourceVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/base/infras_config/model/ConfigLocalState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $version:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/transsion/base/infras_config/model/ConfigLocalState;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$minIntervalMs:J

    iput-object p3, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$sourceVersions:Ljava/util/List;

    iput-object p4, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$version:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$baseUrl:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;

    iget-wide v1, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$minIntervalMs:J

    iget-object v3, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$sourceVersions:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$version:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$baseUrl:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;-><init>(JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Result<",
            "Lcom/transsion/base/infras_config/model/ConfigInitData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v2, Lgj/b;->a:Lgj/b;

    invoke-virtual {v2}, Lgj/b;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    sub-long/2addr v4, v6

    iget-wide v6, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$minIntervalMs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    iget-object v4, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$sourceVersions:Ljava/util/List;

    invoke-virtual {v2, v4}, Lgj/b;->b(Ljava/util/List;)Lcom/transsion/base/infras_config/model/ConfigInitData;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v4, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initIfNeeded() hit cache, sourceCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$sourceVersions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", version="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$version:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "InfraInitManager"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    return-object v1

    :cond_2
    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "InfraInitManager"

    const-string v6, "initIfNeeded() cache miss, will request from network"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v10, Llg/a;->a:Llg/a$a;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "InfraInitManager"

    const-string v12, "initIfNeeded() expired or never initialized, will request from network"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    sget-object v2, Lcom/transsion/base/infras_config/InfraInitManager;->a:Lcom/transsion/base/infras_config/InfraInitManager;

    iget-object v4, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$sourceVersions:Ljava/util/List;

    iget-object v5, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$version:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$baseUrl:Ljava/lang/String;

    iput v3, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->label:I

    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/transsion/base/infras_config/InfraInitManager;->e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    return-object v1
.end method
