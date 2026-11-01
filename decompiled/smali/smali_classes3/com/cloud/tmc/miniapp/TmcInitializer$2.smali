.class Lcom/cloud/tmc/miniapp/TmcInitializer$2;
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
        "Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;",
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
.method public get()Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/TmcInitializer$2;->get()Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    move-result-object v0

    return-object v0
.end method
