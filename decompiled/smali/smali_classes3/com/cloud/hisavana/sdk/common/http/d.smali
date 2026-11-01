.class public abstract Lcom/cloud/hisavana/sdk/common/http/d;
.super Ljava/lang/Object;


# instance fields
.field protected final a:I

.field protected b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/http/d;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_NETWORK_NOT_CONNECTED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/http/d;->a()V

    return-void
.end method
