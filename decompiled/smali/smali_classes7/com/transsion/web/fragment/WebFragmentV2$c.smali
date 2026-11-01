.class public final Lcom/transsion/web/fragment/WebFragmentV2$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/lib_web/zip/loader/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/web/fragment/WebFragmentV2;->i0()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/hisavana/mediation/bridge/MediationJsBridge;


# direct methods
.method constructor <init>(Lcom/hisavana/mediation/bridge/MediationJsBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/web/fragment/WebFragmentV2$c;->b:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/web/fragment/WebFragmentV2$c;->b:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
