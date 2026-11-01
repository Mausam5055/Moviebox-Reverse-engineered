.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Integer;

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->a:I

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->c:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->a:I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->b:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->c:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
