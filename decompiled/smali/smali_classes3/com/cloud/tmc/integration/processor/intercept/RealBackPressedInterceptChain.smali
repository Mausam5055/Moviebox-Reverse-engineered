.class public final Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u001c\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;",
        "interceptors",
        "",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
        "index",
        "",
        "params",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;",
        "(Ljava/util/List;ILcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)V",
        "copy",
        "proceed",
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;",
            ">;I",
            "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;",
            ")V"
        }
    .end annotation

    const-string v0, "interceptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->interceptors:Ljava/util/List;

    iput p2, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->index:I

    iput-object p3, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->params:Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    return-void
.end method

.method private final copy(ILcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;

    iget-object v1, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->interceptors:Ljava/util/List;

    invoke-direct {v0, v1, p1, p2}, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;-><init>(Ljava/util/List;ILcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)V

    return-object v0
.end method

.method static synthetic copy$default(Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;ILcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;ILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->index:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->params:Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->copy(ILcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public params()Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->params:Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    return-object v0
.end method

.method public proceed(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->index:I

    iget-object v1, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    new-instance p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_0
    iget v0, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->index:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->copy(ILcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->interceptors:Ljava/util/List;

    iget v1, p0, Lcom/cloud/tmc/integration/processor/intercept/RealBackPressedInterceptChain;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;->intercept(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    move-result-object p1

    return-object p1
.end method
