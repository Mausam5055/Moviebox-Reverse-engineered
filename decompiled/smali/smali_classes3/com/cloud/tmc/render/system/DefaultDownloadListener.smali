.class public final Lcom/cloud/tmc/render/system/DefaultDownloadListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/render/system/DefaultDownloadListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ8\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cloud/tmc/render/system/DefaultDownloadListener;",
        "Landroid/webkit/DownloadListener;",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "(Lcom/cloud/tmc/kernel/node/Node;)V",
        "getNode",
        "()Lcom/cloud/tmc/kernel/node/Node;",
        "onDownloadFail",
        "",
        "data",
        "Lcom/google/gson/JsonObject;",
        "onDownloadStart",
        "url",
        "",
        "userAgent",
        "contentDisposition",
        "mimetype",
        "contentLength",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/cloud/tmc/render/system/DefaultDownloadListener$Companion;

.field private static final TAG:Ljava/lang/String; = "DefaultDownloadListener"


# instance fields
.field private final node:Lcom/cloud/tmc/kernel/node/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/render/system/DefaultDownloadListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/render/system/DefaultDownloadListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/render/system/DefaultDownloadListener;->Companion:Lcom/cloud/tmc/render/system/DefaultDownloadListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultDownloadListener;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-void
.end method


# virtual methods
.method public final getNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultDownloadListener;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-object v0
.end method

.method public final onDownloadFail(Lcom/google/gson/JsonObject;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewDownloadProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewDownloadProxy;

    iget-object v1, p0, Lcom/cloud/tmc/render/system/DefaultDownloadListener;->node:Lcom/cloud/tmc/kernel/node/Node;

    invoke-interface {v0, v1, p1}, Lcom/cloud/tmc/kernel/proxy/render/IWebViewDownloadProxy;->dispatchDownloadFailEvent(Lcom/cloud/tmc/kernel/node/Node;Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "DefaultDownloadListener"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewDownloadProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/render/IWebViewDownloadProxy;

    iget-object v2, p0, Lcom/cloud/tmc/render/system/DefaultDownloadListener;->node:Lcom/cloud/tmc/kernel/node/Node;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/cloud/tmc/kernel/proxy/render/IWebViewDownloadProxy;->dispatchDownloadEvent(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "DefaultDownloadListener"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
