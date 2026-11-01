.class Lcom/cloud/hisavana/sdk/m$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/m$c;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/m$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/m$c;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/m$c$a;->a:Lcom/cloud/hisavana/sdk/m$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/m$c$a;->a:Lcom/cloud/hisavana/sdk/m$c;

    iget-object v0, p1, Lcom/cloud/hisavana/sdk/m$c;->d:Lcom/cloud/hisavana/sdk/m;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/m$c;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/m;->j(Lcom/cloud/hisavana/sdk/m;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
