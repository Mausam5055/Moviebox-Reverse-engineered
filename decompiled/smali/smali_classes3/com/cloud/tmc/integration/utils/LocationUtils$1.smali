.class Lcom/cloud/tmc/integration/utils/LocationUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/utils/LocationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/utils/LocationUtils;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/utils/LocationUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/LocationUtils$1;->this$0:Lcom/cloud/tmc/integration/utils/LocationUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/LocationUtils$1;->this$0:Lcom/cloud/tmc/integration/utils/LocationUtils;

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/LocationUtils;->a(Lcom/cloud/tmc/integration/utils/LocationUtils;Landroid/location/Location;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/utils/LocationUtils$1;->this$0:Lcom/cloud/tmc/integration/utils/LocationUtils;

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/LocationUtils;->b(Lcom/cloud/tmc/integration/utils/LocationUtils;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
