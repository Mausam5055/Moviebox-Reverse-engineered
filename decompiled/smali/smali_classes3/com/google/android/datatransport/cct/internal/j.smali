.class final Lcom/google/android/datatransport/cct/internal/j;
.super Lcom/google/android/datatransport/cct/internal/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/j$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/Integer;

.field private final c:Lcom/google/android/datatransport/cct/internal/ComplianceData;

.field private final d:J

.field private final e:[B

.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

.field private final i:Lcom/google/android/datatransport/cct/internal/n;


# direct methods
.method private constructor <init>(JLjava/lang/Integer;Lcom/google/android/datatransport/cct/internal/ComplianceData;J[BLjava/lang/String;JLcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Lcom/google/android/datatransport/cct/internal/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/q;-><init>()V

    iput-wide p1, p0, Lcom/google/android/datatransport/cct/internal/j;->a:J

    iput-object p3, p0, Lcom/google/android/datatransport/cct/internal/j;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/datatransport/cct/internal/j;->c:Lcom/google/android/datatransport/cct/internal/ComplianceData;

    iput-wide p5, p0, Lcom/google/android/datatransport/cct/internal/j;->d:J

    iput-object p7, p0, Lcom/google/android/datatransport/cct/internal/j;->e:[B

    iput-object p8, p0, Lcom/google/android/datatransport/cct/internal/j;->f:Ljava/lang/String;

    iput-wide p9, p0, Lcom/google/android/datatransport/cct/internal/j;->g:J

    iput-object p11, p0, Lcom/google/android/datatransport/cct/internal/j;->h:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    iput-object p12, p0, Lcom/google/android/datatransport/cct/internal/j;->i:Lcom/google/android/datatransport/cct/internal/n;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/Integer;Lcom/google/android/datatransport/cct/internal/ComplianceData;J[BLjava/lang/String;JLcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Lcom/google/android/datatransport/cct/internal/n;Lcom/google/android/datatransport/cct/internal/j$a;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/google/android/datatransport/cct/internal/j;-><init>(JLjava/lang/Integer;Lcom/google/android/datatransport/cct/internal/ComplianceData;J[BLjava/lang/String;JLcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Lcom/google/android/datatransport/cct/internal/n;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/cct/internal/ComplianceData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/j;->c:Lcom/google/android/datatransport/cct/internal/ComplianceData;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/j;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/datatransport/cct/internal/j;->a:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/datatransport/cct/internal/j;->d:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/cct/internal/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    check-cast p1, Lcom/google/android/datatransport/cct/internal/q;

    iget-wide v3, p0, Lcom/google/android/datatransport/cct/internal/j;->a:J

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->d()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->b:Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->c()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->c:Lcom/google/android/datatransport/cct/internal/ComplianceData;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->b()Lcom/google/android/datatransport/cct/internal/ComplianceData;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->b()Lcom/google/android/datatransport/cct/internal/ComplianceData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-wide v3, p0, Lcom/google/android/datatransport/cct/internal/j;->d:J

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->e:[B

    instance-of v3, p1, Lcom/google/android/datatransport/cct/internal/j;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/google/android/datatransport/cct/internal/j;

    iget-object v3, v3, Lcom/google/android/datatransport/cct/internal/j;->e:[B

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->h()[B

    move-result-object v3

    :goto_2
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->f:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->i()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-wide v3, p0, Lcom/google/android/datatransport/cct/internal/j;->g:J

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->j()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->h:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->g()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->g()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->i:Lcom/google/android/datatransport/cct/internal/n;

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->f()Lcom/google/android/datatransport/cct/internal/n;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->f()Lcom/google/android/datatransport/cct/internal/n;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    return v0

    :cond_8
    return v2
.end method

.method public f()Lcom/google/android/datatransport/cct/internal/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/j;->i:Lcom/google/android/datatransport/cct/internal/n;

    return-object v0
.end method

.method public g()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/j;->h:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    return-object v0
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/j;->e:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    iget-wide v0, p0, Lcom/google/android/datatransport/cct/internal/j;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/j;->b:Ljava/lang/Integer;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/j;->c:Lcom/google/android/datatransport/cct/internal/ComplianceData;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v5, p0, Lcom/google/android/datatransport/cct/internal/j;->d:J

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    long-to-int v3, v5

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/j;->e:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/j;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v5, p0, Lcom/google/android/datatransport/cct/internal/j;->g:J

    ushr-long v2, v5, v2

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/datatransport/cct/internal/j;->h:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->i:Lcom/google/android/datatransport/cct/internal/n;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_4
    xor-int/2addr v0, v4

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/datatransport/cct/internal/j;->g:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogEvent{eventTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/cct/internal/j;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", complianceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->c:Lcom/google/android/datatransport/cct/internal/ComplianceData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/cct/internal/j;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->e:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtensionJsonProto3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timezoneOffsetSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/cct/internal/j;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", networkConnectionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->h:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", experimentIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/j;->i:Lcom/google/android/datatransport/cct/internal/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
