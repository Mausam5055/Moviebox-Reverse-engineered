.class public final Lcom/transsion/fission/FissionManager$updateConfig$2$invokeSuspend$$inlined$map$2$2$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
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
    c = "com.transsion.fission.FissionManager$updateConfig$2$invokeSuspend$$inlined$map$2$2"
    f = "FissionManager.kt"
    l = {
        0x32
    }
    m = "emit"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/transsion/fission/j;


# direct methods
.method public constructor <init>(Lcom/transsion/fission/j;Lkotlin/coroutines/Continuation;)V
    .locals 0

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/transsion/fission/FissionManager$updateConfig$2$invokeSuspend$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/fission/FissionManager$updateConfig$2$invokeSuspend$$inlined$map$2$2$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/fission/FissionManager$updateConfig$2$invokeSuspend$$inlined$map$2$2$1;->label:I

    const/4 p1, 0x0

    throw p1
.end method
