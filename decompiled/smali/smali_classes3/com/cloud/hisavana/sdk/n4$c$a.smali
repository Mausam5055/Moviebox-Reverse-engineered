.class Lcom/cloud/hisavana/sdk/n4$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/n4$c;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/n4$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/n4$c;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/n4$c$a;->a:Lcom/cloud/hisavana/sdk/n4$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n4$c$a;->a:Lcom/cloud/hisavana/sdk/n4$c;

    iget-object v0, p1, Lcom/cloud/hisavana/sdk/n4$c;->c:Lcom/cloud/hisavana/sdk/n4;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/n4$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/n4;->m(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n4$c$a;->a:Lcom/cloud/hisavana/sdk/n4$c;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/n4$c;->c:Lcom/cloud/hisavana/sdk/n4;

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/n4;->l(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_0
    return-void
.end method
