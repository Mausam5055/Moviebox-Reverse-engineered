.class public final Lcom/cloud/tmc/miniapp/ad/AdActivityGetImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/IAdActivityGetProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdFormActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    return-object v0
.end method

.method public getAdLandingPageActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;

    return-object v0
.end method

.method public getAdPersonalizationActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;

    return-object v0
.end method
