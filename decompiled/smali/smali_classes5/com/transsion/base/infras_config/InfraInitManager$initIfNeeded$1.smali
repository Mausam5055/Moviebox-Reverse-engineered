.class final Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/base/infras_config/InfraInitManager;->f(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.base.infras_config.InfraInitManager"
    f = "InfraInitManager.kt"
    l = {
        0x82
    }
    m = "initIfNeeded-yxL6bBk"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsion/base/infras_config/InfraInitManager;


# direct methods
.method constructor <init>(Lcom/transsion/base/infras_config/InfraInitManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/base/infras_config/InfraInitManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->this$0:Lcom/transsion/base/infras_config/InfraInitManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->label:I

    iget-object v0, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->this$0:Lcom/transsion/base/infras_config/InfraInitManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/base/infras_config/InfraInitManager;->f(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
