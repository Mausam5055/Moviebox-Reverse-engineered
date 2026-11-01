.class public final synthetic Lcom/cloud/hisavana/sdk/common/util/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/common/util/n;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/util/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/w;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/w;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/util/w;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/util/w;->d:Lcom/cloud/hisavana/sdk/common/util/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/w;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/w;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/util/w;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/util/w;->d:Lcom/cloud/hisavana/sdk/common/util/n;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/util/z;->b(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/util/n;)V

    return-void
.end method
