.class public interface abstract Lcom/cloud/tmc/integration/performance/offscreen/IOffScreenProxy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H&J*\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\"\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/offscreen/IOffScreenProxy;",
        "",
        "destroy",
        "",
        "render",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "getOffScreenRender",
        "url",
        "",
        "offScreenRender",
        "pageType",
        "Lcom/cloud/tmc/kernel/constants/PageType;",
        "activity",
        "Landroid/app/Activity;",
        "context",
        "Lcom/cloud/tmc/integration/model/PrepareContext;",
        "retryOffScreenRender",
        "tag",
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
.method public abstract destroy(Lcom/cloud/tmc/kernel/render/IRender;)V
.end method

.method public abstract getOffScreenRender(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;
.end method

.method public abstract offScreenRender(Ljava/lang/String;Lcom/cloud/tmc/kernel/constants/PageType;Landroid/app/Activity;Lcom/cloud/tmc/integration/model/PrepareContext;)V
.end method

.method public abstract retryOffScreenRender(Landroid/app/Activity;Ljava/lang/Object;Lcom/cloud/tmc/integration/model/PrepareContext;)V
.end method
