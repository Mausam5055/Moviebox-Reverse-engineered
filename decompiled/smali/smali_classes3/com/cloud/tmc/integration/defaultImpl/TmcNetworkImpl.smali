.class public final Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 R2\u00020\u0001:\u0001RB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u00062\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010#\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00062\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u001c\u0010$\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u00062\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010%\u001a\u00020\u001fH\u0016J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0002Jb\u0010*\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016J@\u00101\u001a\u00020\u001f2\u0008\u0010+\u001a\u0004\u0018\u00010\u00062\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00062\u0008\u00104\u001a\u0004\u0018\u0001052\u0008\u0010(\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u00010\u0006H\u0002J@\u00108\u001a\u00020\u001f2\u0008\u0010+\u001a\u0004\u0018\u00010\u00062\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00062\u0008\u00104\u001a\u0004\u0018\u0001052\u0008\u0010(\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u00010\u0006H\u0002JP\u00109\u001a\u00020\u001f2\u0008\u0010:\u001a\u0004\u0018\u00010\u00062\u0008\u0010;\u001a\u0004\u0018\u00010\u00062\u0008\u0010<\u001a\u0004\u0018\u00010\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010=2\u0008\u00107\u001a\u0004\u0018\u00010\u00062\u0008\u0010(\u001a\u0004\u0018\u000106H\u0016JM\u0010>\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0096\u0002J \u0010?\u001a\u0004\u0018\u00010\u00062\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010=H\u0002J\u0014\u0010?\u001a\u0004\u0018\u00010\u00062\u0008\u0010A\u001a\u0004\u0018\u00010\u000fH\u0002Jb\u0010B\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016JV\u0010C\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0008\u0010D\u001a\u0004\u0018\u00010E2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016Jb\u0010F\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010G\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016Jb\u0010H\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016Jb\u0010I\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0016J\"\u0010J\u001a\u00020K2\u0006\u0010+\u001a\u00020\u00062\u0008\u00107\u001a\u0004\u0018\u00010\u00062\u0006\u0010(\u001a\u00020LH\u0002J*\u0010M\u001a\u00020\u001f2\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)2\u0008\u00107\u001a\u0004\u0018\u00010\u0006H\u0002J\u0008\u0010N\u001a\u00020\u001fH\u0016J6\u0010O\u001a\u00020\u001f2\u0008\u0010+\u001a\u0004\u0018\u00010\u00062\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00062\u0008\u0010(\u001a\u0004\u0018\u00010L2\u0008\u00107\u001a\u0004\u0018\u00010\u0006H\u0002Jt\u0010P\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\u00062\u0008\u00107\u001a\u0004\u0018\u00010\u00062\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0014\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\u0006\u00100\u001a\u00020\u00142\u0006\u0010(\u001a\u00020LH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR1\u0010\r\u001a\"\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000ej\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000f`\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001f\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR1\u0010\u001c\u001a\"\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000ej\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000f`\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012\u00a8\u0006S"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;",
        "Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "setTAG",
        "(Ljava/lang/String;)V",
        "getContext",
        "()Landroid/content/Context;",
        "downloadMap",
        "Ljava/util/HashMap;",
        "Lokhttp3/Call;",
        "Lkotlin/collections/HashMap;",
        "getDownloadMap",
        "()Ljava/util/HashMap;",
        "isNetworkImprove",
        "",
        "()Z",
        "setNetworkImprove",
        "(Z)V",
        "requestMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "getRequestMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "uploadMap",
        "getUploadMap",
        "cancelDownloadCall",
        "",
        "id",
        "abortCallback",
        "Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;",
        "cancelHttpRequest",
        "cancelUploadCall",
        "clearDownloadCall",
        "convertHttpCallback",
        "Lcom/tmc/network/INetworkCallback;",
        "callback",
        "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
        "delete",
        "url",
        "headers",
        "",
        "params",
        "formData",
        "useCommonHeader",
        "downloadCancel",
        "errorCode",
        "errorMsg",
        "e",
        "Ljava/io/IOException;",
        "Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;",
        "callbackId",
        "downloadFail",
        "downloadPackage",
        "appId",
        "downloadUrl",
        "downloadPath",
        "",
        "get",
        "getCallId",
        "header",
        "call",
        "post",
        "postJson",
        "json",
        "",
        "postMultipart",
        "multipartData",
        "postV2",
        "put",
        "registerUploadIntercept",
        "Lokhttp3/Interceptor;",
        "Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;",
        "requestFail",
        "startPreConnect",
        "uploadFail",
        "uploadFile",
        "filePath",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$Companion;

.field public static final TIME_OUT_VALUE:I = 0xea60


# instance fields
.field private TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final downloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private isNetworkImprove:Z

.field private final requestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->Companion:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->context:Landroid/content/Context;

    const-string v0, "TmcNetworkImpl"

    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getMINI_APP_BASE_URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getBASE_OSS_URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {v1, v0}, Lcom/tmc/network/NetworkConfig;->setPreHostList(Ljava/util/List;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v3, "miniLauncherGlobal"

    const-string v4, "network_improve_key"

    invoke-interface {v0, p1, v3, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0xa

    int-to-long v5, v5

    rem-long/2addr v3, v5

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    iput-boolean v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->isNetworkImprove:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->isNetworkImprove:Z

    invoke-virtual {v1, v0}, Lcom/tmc/network/NetworkConfig;->setNetworkImproveEnable(Z)V

    :cond_1
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tmc/network/HttpRequestor$Companion;->setLoggable(Z)V

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, "Lp84tK50u1uwuN3zNQ"

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getMINI_API_WORK_MODE()Ljava/lang/String;

    move-result-object v1

    const-string v4, "test"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/transsion/api/gateway/config/WorkMode;->MODE_TEST:Lcom/transsion/api/gateway/config/WorkMode;

    :goto_1
    move-object v6, v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    goto :goto_1

    :goto_2
    new-instance v7, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$1;

    invoke-direct {v7, p0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$1;-><init>(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;)V

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/tmc/network/HttpRequestor;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "merqm"

    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tmc/network/HttpRequestor$Companion;->setPostMode(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostMode error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public static final synthetic access$downloadCancel(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$downloadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Lokhttp3/Call;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requestFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$uploadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;)V

    return-void
.end method

.method private final convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;-><init>(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-object v0
.end method

.method private final downloadCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p5, :cond_0

    :try_start_0
    invoke-interface {p5, p1, p6}, Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;->onCancel(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "errorCode: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " errorMsg: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-interface {p1, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private final downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    .locals 6

    if-eqz p5, :cond_0

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-interface {p1, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private final getCallId(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "callbackId"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getCallId(Lokhttp3/Call;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v1

    const-string v2, "callbackId"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final registerUploadIntercept(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)Lokhttp3/Interceptor;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;

    invoke-direct {v0, p3, p1, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;-><init>(Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-interface {p3, p1, p2, p4}, Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private final uploadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p4, p1, p2, p3, p5}, Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    invoke-interface {p1, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelDownloadCall(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDownloadCall, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->success()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "download task un exist"

    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_2
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :goto_3
    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_6

    :cond_3
    :goto_4
    const-string p2, "cancel downloadCall error"

    invoke-static {p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    :goto_5
    return-void

    :goto_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    throw p2
.end method

.method public cancelHttpRequest(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelHttpRequest, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->success()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "request task un exist"

    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_2
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :goto_3
    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_6

    :cond_3
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel requestCall error:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    :goto_5
    return-void

    :goto_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    throw p2
.end method

.method public cancelUploadCall(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelUploadCall, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->success()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "upload task un exist"

    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_2
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :goto_3
    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/proxy/network/IAbortCallback;->fail(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_6

    :cond_3
    :goto_4
    const-string p2, "cancel uploadCall error"

    invoke-static {p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    :goto_5
    return-void

    :goto_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    throw p2
.end method

.method public clearDownloadCall()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    const-string v1, "clearDownloadCall"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lokhttp3/Call;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lokhttp3/Call;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "clear downloadMap error"

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public downloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_a

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isURL(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadPackage, downloadUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    if-eqz p4, :cond_4

    sget-object v1, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-virtual {v1, p4}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_4
    :goto_0
    if-eqz p5, :cond_5

    const-string v1, "callbackId"

    invoke-virtual {v0, v1, p5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_5
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    sget-object v1, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v1}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/tmc/network/HttpRequestor;->getHttpClient()Lcom/tmc/network/HttpClient;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz p4, :cond_7

    const-string v1, "m-timeout"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object v3

    if-eqz v3, :cond_7

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_b

    new-instance p1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p6

    move-object v6, p4

    move-object v7, p3

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;-><init>(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V

    goto/16 :goto_6

    :cond_8
    :goto_2
    const-string v2, "D005"

    const-string v3, "Download Fail,downloadPath is empty:D005"

    new-instance v4, Ljava/io/IOException;

    const-string p1, "Download Fail,downloadPath is empty:D005"

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_3
    const-string v2, "D004"

    const-string v3, "Download Fail,downloadUrl is error:D004"

    new-instance v4, Ljava/io/IOException;

    const-string p1, "Download Fail,downloadUrl is error:D004"

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_4
    const-string v2, "D003"

    const-string v3, "Download Fail,appId is empty:D003"

    new-instance v4, Ljava/io/IOException;

    const-string p1, "Download Fail,appId is empty:D003"

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Download Fail,Exception_"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, ":D002"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "D002"

    move-object v0, p0

    move-object v1, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 6

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v1, p2, p4}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p4

    invoke-direct {p0, p5}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v1

    invoke-virtual {v0, p1, p4, p3, v1}, Lcom/tmc/network/HttpRequestor;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p5, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDownloadMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getRequestMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploadMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final isNetworkImprove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->isNetworkImprove:Z

    return v0
.end method

.method public bridge synthetic post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public bridge synthetic postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postJson, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->postJSON(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public bridge synthetic postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public bridge synthetic postV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->postV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public postV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->postV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2, p5}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->getCommonHeader(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, p6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;

    move-result-object v6

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tmc/network/HttpRequestor;->put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Http Request Fail,Exception_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":R002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "R002"

    invoke-direct {p0, p3, p1, p6, p2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->requestFail(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final setNetworkImprove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->isNetworkImprove:Z

    return-void
.end method

.method public final setTAG(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public startPreConnect()V
    .locals 3

    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->isNetworkImproveEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tmc/network/strategy/c;

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getMINI_APP_BASE_URL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tmc/network/strategy/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/tmc/network/strategy/c;

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getBASE_OSS_URL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tmc/network/strategy/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tmc/network/strategy/c;->a()V

    invoke-virtual {v1}, Lcom/tmc/network/strategy/c;->a()V

    return-void
.end method

.method public bridge synthetic uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)V
    .locals 9

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)V

    return-void
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;",
            ")V"
        }
    .end annotation

    const-string p5, "url"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "filePath"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "callback"

    invoke-static {p8, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->TAG:Ljava/lang/String;

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uploadFile, url: "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p5, p7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p5, Ljava/util/LinkedHashMap;

    invoke-direct {p5}, Ljava/util/LinkedHashMap;-><init>()V

    const-string p7, "callbackId"

    if-nez p3, :cond_0

    const-string v0, ""

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_4

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p7, "upload"

    const-string v0, "true"

    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    invoke-interface {p5, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    new-instance p7, Ljava/io/File;

    invoke-direct {p7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p2, "multipart/form-data"

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "content-type"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_3
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-virtual {v1, p2, p7}, Lokhttp3/RequestBody$Companion;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    new-instance v1, Lokhttp3/MultipartBody$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v0}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    if-eqz p6, :cond_4

    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_2
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_2

    :cond_4
    const-string p6, "file"

    invoke-virtual {p7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v0, p6, p7, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p6

    invoke-virtual {p2, p6}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    sget-object p6, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-virtual {p6, p5}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p5

    invoke-virtual {p2, p5}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    sget-object p5, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {p5}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object p5

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Lcom/tmc/network/HttpRequestor;->getHttpClient()Lcom/tmc/network/HttpClient;

    move-result-object p5

    move-object v1, p5

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    invoke-direct {p0, p1, p3, p8}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->registerUploadIntercept(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)Lokhttp3/Interceptor;

    move-result-object p5

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/tmc/network/HttpClient;->getConfig()Lcom/tmc/network/HttpClientConfig;

    move-result-object p6

    if-eqz p6, :cond_6

    invoke-virtual {p6, p5}, Lcom/tmc/network/HttpClientConfig;->addInterceptor(Lokhttp3/Interceptor;)Lcom/tmc/network/HttpClientConfig;

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/tmc/network/HttpClient;->resetHttpClient()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1, p2}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    :cond_8
    move-object p2, v2

    if-eqz p4, :cond_9

    const-string p6, "m-timeout"

    invoke-interface {p4, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    if-eqz p6, :cond_9

    invoke-static {p6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p6

    if-eqz p2, :cond_9

    invoke-interface {p2}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p6, p7, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :cond_9
    if-eqz p3, :cond_a

    iget-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadMap:Ljava/util/HashMap;

    invoke-interface {p6, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz p2, :cond_b

    new-instance p3, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;

    move-object v0, p3

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;-><init>(Lcom/tmc/network/HttpClient;Lokhttp3/Interceptor;Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)V

    invoke-static {p2, p3}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "UploadFile fail,Exception_"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":U002"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getCallId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "U002"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-void
.end method
