.class public Lcom/hisavana/common/param/ApplicationDTO;
.super Ljava/lang/Object;


# instance fields
.field private activeTime:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private firstStart:Z

.field private installTime:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/param/ApplicationDTO;->activeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/param/ApplicationDTO;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/param/ApplicationDTO;->installTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/param/ApplicationDTO;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/param/ApplicationDTO;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/param/ApplicationDTO;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/param/ApplicationDTO;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/common/param/ApplicationDTO;->firstStart:Z

    return v0
.end method

.method public setActiveTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/param/ApplicationDTO;->activeTime:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/param/ApplicationDTO;->channel:Ljava/lang/String;

    return-void
.end method

.method public setFirstStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/common/param/ApplicationDTO;->firstStart:Z

    return-void
.end method

.method public setInstallTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/param/ApplicationDTO;->installTime:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/param/ApplicationDTO;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/param/ApplicationDTO;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/param/ApplicationDTO;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/param/ApplicationDTO;->version:Ljava/lang/String;

    return-void
.end method
