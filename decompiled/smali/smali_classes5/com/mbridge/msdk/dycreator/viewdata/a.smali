.class public Lcom/mbridge/msdk/dycreator/viewdata/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/dycreator/viewdata/base/a;


# instance fields
.field private a:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

.field private b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/dycreator/wrapper/DyOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewdata/a;->a:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/viewdata/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-void
.end method


# virtual methods
.method public getBindData()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/viewdata/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/viewdata/a;->a:Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    return-object v0
.end method
