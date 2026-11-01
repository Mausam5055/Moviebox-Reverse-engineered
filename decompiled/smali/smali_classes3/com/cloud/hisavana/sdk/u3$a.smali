.class Lcom/cloud/hisavana/sdk/u3$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/u3;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field final synthetic b:Lcom/cloud/hisavana/sdk/u3;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/u3;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u3$a;->b:Lcom/cloud/hisavana/sdk/u3;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/u3$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u3$a;->b:Lcom/cloud/hisavana/sdk/u3;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u3$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/u3;->M(Lcom/cloud/hisavana/sdk/u3;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u3$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u3$a;->b:Lcom/cloud/hisavana/sdk/u3;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u3$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/u3;->S(Lcom/cloud/hisavana/sdk/u3;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/k4;->a:Lcom/cloud/hisavana/sdk/k4;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u3$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/k4;->j(Ljava/lang/String;)V

    return-void
.end method
