.class public Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;
.super Ljava/lang/Object;


# instance fields
.field private baseStation:Ljava/lang/String;

.field private coordTime:Ljava/lang/String;

.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseStation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->baseStation:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->coordTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->longitude:D

    return-wide v0
.end method

.method public setBaseStation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->baseStation:Ljava/lang/String;

    return-void
.end method

.method public setCoordTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->coordTime:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;->longitude:D

    return-void
.end method
