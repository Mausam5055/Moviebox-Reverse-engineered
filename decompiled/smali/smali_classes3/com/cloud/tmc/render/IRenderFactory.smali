.class public interface abstract Lcom/cloud/tmc/render/IRenderFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.integration.defaultImpl.RenderFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001:\u0001\u0016JX\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H&\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cloud/tmc/render/IRenderFactory;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "getRender",
        "",
        "activity",
        "Landroid/app/Activity;",
        "engineProxy",
        "Lcom/cloud/tmc/kernel/engine/IEngine;",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "createParams",
        "Lcom/cloud/tmc/kernel/model/CreateParams;",
        "pageId",
        "",
        "context",
        "",
        "data",
        "Landroid/os/Bundle;",
        "isFirstLaunch",
        "",
        "listener",
        "Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;",
        "IRenderListener",
        "com.cloud.tmc.render"
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
.method public abstract getRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;ZLcom/cloud/tmc/render/IRenderFactory$IRenderListener;)V
.end method
