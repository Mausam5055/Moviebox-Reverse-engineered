.class Lcom/cloud/hisavana/sdk/api/adx/TSplashView$a;
.super Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/api/adx/TSplashView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/api/adx/TSplashView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;-><init>(Lcom/cloud/hisavana/sdk/api/adx/ViewApi;)V

    return-void
.end method


# virtual methods
.method public f()Lcom/cloud/hisavana/sdk/api/listener/g;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;->a:Lcom/cloud/hisavana/sdk/api/adx/ViewApi;

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->c(Lcom/cloud/hisavana/sdk/api/adx/TSplashView;)Lcom/cloud/hisavana/sdk/api/listener/g;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
