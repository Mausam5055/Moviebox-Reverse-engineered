.class public Lcom/transsion/api/gateway/bean/GatewayStrategy;
.super Ljava/lang/Object;


# instance fields
.field public connectTimeout:J

.field public noDns:Z

.field public readTimeout:J

.field public useOriginHost:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/api/gateway/bean/GatewayStrategy;->connectTimeout:J

    return-wide v0
.end method

.method public getReadTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/api/gateway/bean/GatewayStrategy;->readTimeout:J

    return-wide v0
.end method

.method public isNoDns()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/api/gateway/bean/GatewayStrategy;->noDns:Z

    return v0
.end method

.method public isUseOriginHost()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/api/gateway/bean/GatewayStrategy;->useOriginHost:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GatewayStrategy{useOriginHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/api/gateway/bean/GatewayStrategy;->useOriginHost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", noDns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/api/gateway/bean/GatewayStrategy;->noDns:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", readTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/api/gateway/bean/GatewayStrategy;->readTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/api/gateway/bean/GatewayStrategy;->connectTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
