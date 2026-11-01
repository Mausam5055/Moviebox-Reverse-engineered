.class public final Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1$intercept$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/net/ProgressRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1$intercept$1",
        "Lcom/cloud/tmc/integration/net/ProgressRequestListener;",
        "onRequestProgress",
        "",
        "bytesWritten",
        "",
        "contentLength",
        "done",
        "",
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
.field final synthetic $callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

.field final synthetic $callbackId:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1$intercept$1;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1$intercept$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1$intercept$1;->$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestProgress(JJZ)V
    .locals 8

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1$intercept$1;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1$intercept$1;->$url:Ljava/lang/String;

    long-to-float p5, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p5, v2

    long-to-float v2, p3

    div-float/2addr p5, v2

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr p5, v2

    float-to-int v2, p5

    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1$intercept$1;->$callbackId:Ljava/lang/String;

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;->progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V

    return-void
.end method
