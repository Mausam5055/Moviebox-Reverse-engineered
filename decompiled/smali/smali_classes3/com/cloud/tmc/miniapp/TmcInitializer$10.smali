.class Lcom/cloud/tmc/miniapp/TmcInitializer$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/TmcInitializer;->setupProxy(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter<",
        "Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/RenderWebviewStrategyCache;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/defaultImpl/RenderWebviewStrategyCache;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/TmcInitializer$10;->get()Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;

    move-result-object v0

    return-object v0
.end method
