.class public Lcom/aliyun/player/source/VidSourceBase;
.super Lcom/aliyun/player/source/SourceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/source/VidSourceBase$OutputType;,
        Lcom/aliyun/player/source/VidSourceBase$StreamType;,
        Lcom/aliyun/player/source/VidSourceBase$ResultType;
    }
.end annotation


# instance fields
.field private mAuthTimeout:J

.field private mDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/Definition;",
            ">;"
        }
    .end annotation
.end field

.field private mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

.field private mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

.field private mReAuthInfo:Ljava/lang/String;

.field private mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

.field private mStreamTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/aliyun/player/source/VidSourceBase$StreamType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/aliyun/player/source/SourceBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mAuthTimeout:J

    return-void
.end method


# virtual methods
.method public getAuthTimeout()J
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-wide v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mAuthTimeout:J

    return-wide v0
.end method

.method protected getDefinitionStr()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/aliyun/player/source/Definition;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/player/source/Definition;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/aliyun/player/source/Definition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFormatStr()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/player/source/MediaFormat;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/aliyun/player/source/MediaFormat;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    return-object v0
.end method

.method public getOutputType()Lcom/aliyun/player/source/VidSourceBase$OutputType;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    return-object v0
.end method

.method protected getOutputTypeStr()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/player/source/VidSourceBase$OutputType;->getOutputType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPlayConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/player/VidPlayerConfigGen;->genConfig()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReAuthInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    return-object v0
.end method

.method protected getReAuthInfoStr()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()Lcom/aliyun/player/source/VidSourceBase$ResultType;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    return-object v0
.end method

.method protected getResultTypeStr()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/player/source/VidSourceBase$ResultType;->getResultType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStreamType()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/aliyun/player/source/VidSourceBase$StreamType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    return-object v0
.end method

.method protected getStreamTypeStr()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/player/source/VidSourceBase$StreamType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/aliyun/player/source/VidSourceBase$StreamType;->getStreamType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAuthTimeout(J)V
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mAuthTimeout:J

    return-void
.end method

.method public setDefinition(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/Definition;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    return-void
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    return-void
.end method

.method public setOutputType(Lcom/aliyun/player/source/VidSourceBase$OutputType;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    return-void
.end method

.method public setPlayConfig(Lcom/aliyun/player/VidPlayerConfigGen;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

    return-void
.end method

.method public setReAuthInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    return-void
.end method

.method public setResultType(Lcom/aliyun/player/source/VidSourceBase$ResultType;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    return-void
.end method

.method public setStreamType(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/aliyun/player/source/VidSourceBase$StreamType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    return-void
.end method
