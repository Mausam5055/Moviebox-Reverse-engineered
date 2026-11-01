.class public final Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge;->getPreStrategy(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;",
        "Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/PrefetchStrategyBridge$OooO0O0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    check-cast p2, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getPriority()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getPriority()I

    move-result v0

    :cond_1
    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
