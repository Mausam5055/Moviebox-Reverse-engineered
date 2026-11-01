.class public Lcom/aliyun/player/source/VidSts;
.super Lcom/aliyun/player/source/VidSourceBase;


# instance fields
.field private mAccessKeyId:Ljava/lang/String;

.field private mAccessKeySecret:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mSecurityToken:Ljava/lang/String;

.field private mVid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/player/source/VidSourceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/VidSts;->mAccessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessKeySecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/VidSts;->mAccessKeySecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/VidSts;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/VidSts;->mSecurityToken:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/VidSts;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/VidSts;->mAccessKeyId:Ljava/lang/String;

    return-void
.end method

.method public setAccessKeySecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/VidSts;->mAccessKeySecret:Ljava/lang/String;

    return-void
.end method

.method public setQuality(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/SourceBase;->mQuality:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/aliyun/player/source/SourceBase;->mForceQuality:Z

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/VidSts;->mRegion:Ljava/lang/String;

    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/VidSts;->mSecurityToken:Ljava/lang/String;

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/VidSts;->mVid:Ljava/lang/String;

    return-void
.end method
