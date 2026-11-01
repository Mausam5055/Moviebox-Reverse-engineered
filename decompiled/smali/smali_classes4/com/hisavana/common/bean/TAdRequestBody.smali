.class public Lcom/hisavana/common/bean/TAdRequestBody;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;
    }
.end annotation


# instance fields
.field private final additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

.field private mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

.field private scheduleTime:I


# direct methods
.method public constructor <init>(Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hisavana/common/bean/TAdRequestBody;->scheduleTime:I

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->getAdListener()Lcom/hisavana/common/interfacz/TAdListener;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/common/bean/TAdRequestBody;->mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

    invoke-static {p1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->access$000(Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;)I

    move-result v0

    iput v0, p0, Lcom/hisavana/common/bean/TAdRequestBody;->scheduleTime:I

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->getAdditionalListener()Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/bean/TAdRequestBody;->additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

    return-void
.end method


# virtual methods
.method public copyAttributes(Lcom/hisavana/common/bean/TAdRequestBody;)V
    .locals 0

    iget p1, p1, Lcom/hisavana/common/bean/TAdRequestBody;->scheduleTime:I

    iput p1, p0, Lcom/hisavana/common/bean/TAdRequestBody;->scheduleTime:I

    return-void
.end method

.method public getAdListener()Lcom/hisavana/common/interfacz/TAdListener;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/TAdRequestBody;->mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

    return-object v0
.end method

.method public getAdditionalListener()Lcom/hisavana/common/interfacz/TAdditionalListener;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/TAdRequestBody;->additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

    return-object v0
.end method

.method public getScheduleTime()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/bean/TAdRequestBody;->scheduleTime:I

    return v0
.end method

.method public setAdListener(Lcom/hisavana/common/interfacz/TAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/bean/TAdRequestBody;->mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAdRequestBody{mAdListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/bean/TAdRequestBody;->mAdListener:Lcom/hisavana/common/interfacz/TAdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scheduleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hisavana/common/bean/TAdRequestBody;->scheduleTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", additionalListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/common/bean/TAdRequestBody;->additionalListener:Lcom/hisavana/common/interfacz/TAdditionalListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
