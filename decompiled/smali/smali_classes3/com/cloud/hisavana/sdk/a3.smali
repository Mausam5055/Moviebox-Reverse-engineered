.class public final synthetic Lcom/cloud/hisavana/sdk/a3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

.field public final synthetic c:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a3;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/a3;->b:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/a3;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a3;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a3;->b:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/a3;->c:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/c1;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Ljava/lang/Boolean;)V

    return-void
.end method
