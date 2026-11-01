.class public abstract Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;


# instance fields
.field public OooO00o:Ljava/lang/String;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

.field public OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

.field public OooO0Oo:Lcom/cloud/tmc/integration/proxy/PathProxy;

.field public OooO0o:Z

.field public OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

.field public OooO0oO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0oO:Z

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    return-void
.end method

.method public OooO00o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0oO:Z

    return v0
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;
        }
    .end annotation

    const-class p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    const-class p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    const-class p1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/proxy/PathProxy;

    const-class p1, Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/FileProxy;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    const-string p3, "0"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o:Z

    const-string p1, "Tmcresource:PrepareStep_"

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string p2, "ERROR_UNKNOWN with context == null"

    invoke-direct {p1, p3, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string p2, "ERROR_UNKNOWN with appInfoManager == null"

    invoke-direct {p1, p3, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0oO:Z

    return-void
.end method
