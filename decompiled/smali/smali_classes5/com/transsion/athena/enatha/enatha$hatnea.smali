.class Lcom/transsion/athena/enatha/enatha$hatnea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/enatha/enatha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/athena/enatha/enatha;


# direct methods
.method constructor <init>(Lcom/transsion/athena/enatha/enatha;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha$hatnea;->a:Lcom/transsion/athena/enatha/enatha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$hatnea;->a:Lcom/transsion/athena/enatha/enatha;

    iget-object v1, v0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/athena/enatha/enatha;->c(Lcom/transsion/athena/enatha/enatha;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$hatnea;->a:Lcom/transsion/athena/enatha/enatha;

    invoke-static {v0, p1}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/enatha/enatha;Landroid/location/Location;)V

    iget-object p1, p0, Lcom/transsion/athena/enatha/enatha$hatnea;->a:Lcom/transsion/athena/enatha/enatha;

    iget-object p1, p1, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$hatnea;->a:Lcom/transsion/athena/enatha/enatha;

    invoke-static {v0}, Lcom/transsion/athena/enatha/enatha;->b(Lcom/transsion/athena/enatha/enatha;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
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
