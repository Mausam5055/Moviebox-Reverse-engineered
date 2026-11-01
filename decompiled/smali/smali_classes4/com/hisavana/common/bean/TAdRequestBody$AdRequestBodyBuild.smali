.class public Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/common/bean/TAdRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdRequestBodyBuild"
.end annotation


# instance fields
.field private additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

.field private mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

.field private scheduleTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

    iput-object v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

    const v0, 0xea60

    iput v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->scheduleTime:I

    return-void
.end method

.method static synthetic access$000(Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;)I
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->getScheduleTime()I

    move-result p0

    return p0
.end method

.method private getScheduleTime()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->scheduleTime:I

    return v0
.end method


# virtual methods
.method public build()Lcom/hisavana/common/bean/TAdRequestBody;
    .locals 1

    new-instance v0, Lcom/hisavana/common/bean/TAdRequestBody;

    invoke-direct {v0, p0}, Lcom/hisavana/common/bean/TAdRequestBody;-><init>(Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;)V

    return-object v0
.end method

.method public getAdListener()Lcom/hisavana/common/interfacz/TAdListener;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

    return-object v0
.end method

.method public getAdditionalListener()Lcom/hisavana/common/interfacz/TAdditionalListener;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

    return-object v0
.end method

.method public setAdListener(Lcom/hisavana/common/interfacz/TAdListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

    return-object p0
.end method

.method public setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

    return-object p0
.end method

.method public setScheduleTime(I)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;
    .locals 0

    iput p1, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->scheduleTime:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdRequestBodyBuild{, scheduleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->scheduleTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
