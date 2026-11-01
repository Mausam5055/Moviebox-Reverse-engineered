.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrayBean"
.end annotation


# instance fields
.field private final localGrayScal:F

.field private final remoteGrayScale:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->localGrayScal:F

    iput p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->remoteGrayScale:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;FFILjava/lang/Object;)Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->localGrayScal:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->remoteGrayScale:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->copy(FF)Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->localGrayScal:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->remoteGrayScale:F

    return v0
.end method

.method public final copy(FF)Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;

    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;

    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->localGrayScal:F

    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->localGrayScal:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->remoteGrayScale:F

    iget p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->remoteGrayScale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLocalGrayScal()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->localGrayScal:F

    return v0
.end method

.method public final getRemoteGrayScale()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->remoteGrayScale:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->localGrayScal:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->remoteGrayScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->localGrayScal:F

    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->remoteGrayScale:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GrayBean(localGrayScal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", remoteGrayScale="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
