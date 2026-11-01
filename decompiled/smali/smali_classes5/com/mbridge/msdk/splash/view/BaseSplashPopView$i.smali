.class public Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/view/BaseSplashPopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->b:Ljava/lang/String;

    iput p3, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->c:I

    iput-object p4, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-void
.end method


# virtual methods
.method public a()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->d:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/splash/view/BaseSplashPopView$i;->c:I

    return v0
.end method
