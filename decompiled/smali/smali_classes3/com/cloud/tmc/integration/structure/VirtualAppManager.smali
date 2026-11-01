.class public interface abstract Lcom/cloud/tmc/integration/structure/VirtualAppManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/structure/AppManager;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.integration.structure.impl.VirtualAppManagerImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/structure/VirtualAppManager;",
        "Lcom/cloud/tmc/integration/structure/AppManager;",
        "updateAppInfo",
        "",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
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


# virtual methods
.method public abstract updateAppInfo(Lcom/cloud/tmc/integration/structure/App;)V
.end method
