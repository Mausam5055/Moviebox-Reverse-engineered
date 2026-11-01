.class public Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/prepare/controller/OooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field public OooO00o:J

.field public OooO0O0:Z

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/controller/OooO;J)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO0O0:Z

    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO00o:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO00o:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timer timeout on elapsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tmcresource:Timer"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO0O0:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0O0;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0O0;->onTimeout(J)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;

    :cond_1
    return-void
.end method
