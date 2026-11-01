.class public interface abstract Lcom/cloud/tmc/integration/proxy/ReportProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# virtual methods
.method public abstract checkReportIntercept(Ljava/lang/String;Ljava/lang/Boolean;)Lkotlin/Triple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract forceAthenaReport(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract getVaid()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract mfahCacheDataReport(Ljava/lang/String;)V
.end method

.method public abstract report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Integer;)V
.end method

.method public abstract reportAd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method
