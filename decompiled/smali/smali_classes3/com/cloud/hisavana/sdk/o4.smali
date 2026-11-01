.class public Lcom/cloud/hisavana/sdk/o4;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/o4;

.field private final b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o4;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method


# virtual methods
.method public a()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o4;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object v0
.end method

.method public b(Lcom/cloud/hisavana/sdk/o4;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o4;->a:Lcom/cloud/hisavana/sdk/o4;

    return-void
.end method

.method public c()Lcom/cloud/hisavana/sdk/o4;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o4;->a:Lcom/cloud/hisavana/sdk/o4;

    return-object v0
.end method
