.class public Lcom/transsion/sdk/oneid/data/GroupHashInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public device_hash:Ljava/lang/String;

.field public dids_hash:Ljava/lang/String;

.field public env_hash:Ljava/lang/String;

.field public fp_hash:Ljava/lang/String;

.field public pkg_hash:Ljava/lang/String;

.field public rom_hash:Ljava/lang/String;

.field public user_hash:Ljava/lang/String;

.field public vaid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/sdk/oneid/data/GroupFpInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->vaid:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->dids_hash:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->user_hash:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->pkg_hash:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->env_hash:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->device_hash:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->fp_hash:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->rom_hash:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->vaid:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->vaid:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->dids_hash:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->user:Lcom/transsion/sdk/oneid/data/UserIdInfo;

    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->user_hash:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->pkg:Lcom/transsion/sdk/oneid/data/PackageInfo;

    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->pkg_hash:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->env:Lcom/transsion/sdk/oneid/data/EnvironInfo;

    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->env_hash:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->device:Lcom/transsion/sdk/oneid/data/DeviceInfo;

    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->device_hash:Ljava/lang/String;

    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->fp:Lcom/transsion/sdk/oneid/data/FingerprintInfo;

    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->fp_hash:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->rom:Lcom/transsion/sdk/oneid/data/RomInfo;

    invoke-virtual {p1}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->rom_hash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public updateDidsHash(Lcom/transsion/sdk/oneid/data/UniqueIdInfo;)V
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->dids_hash:Ljava/lang/String;

    return-void
.end method
