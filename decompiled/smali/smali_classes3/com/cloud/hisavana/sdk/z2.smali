.class public final synthetic Lcom/cloud/hisavana/sdk/z2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/z2;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/z2;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/z2;->c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z2;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z2;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/z2;->c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/c1;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return-void
.end method
