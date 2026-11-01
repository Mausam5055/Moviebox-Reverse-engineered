.class public final Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;",
        "Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;",
        "()V",
        "getInterceptors",
        "",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;",
        "getResultWithInterceptorChain",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;",
        "params",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;",
        "Companion",
        "com.cloud.tmc.offline_download"
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
.field public static final Companion:Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: OfflineResourceProcessor"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;->Companion:Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getInterceptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept;

    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/cloud/tmc/offline/download/resource/processor/FileResourceIntercept;

    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/resource/processor/FileResourceIntercept;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public getResultWithInterceptorChain(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;->getInterceptors()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    new-instance v1, Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept;

    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;-><init>(Ljava/util/List;ILcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)V

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->proceed(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "TmcOfflineDownload: OfflineResourceProcessor"

    const-string v1, "Proceeding to offline resource"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object p1
.end method
