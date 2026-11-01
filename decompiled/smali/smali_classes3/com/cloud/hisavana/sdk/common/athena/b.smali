.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/b;->b:I

    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/b;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/athena/b;->b:I

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/athena/b;->c:I

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    return-void
.end method
