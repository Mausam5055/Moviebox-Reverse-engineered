.class public final Lcom/cloud/tmc/integration/performance/WarmupExtension$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/performance/WarmupExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static isValid(Lcom/cloud/tmc/integration/performance/WarmupExtension;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string p0, ""

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, p0

    :cond_1
    sget-object p0, Lcom/cloud/tmc/integration/utils/VersionUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/VersionUtils;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/VersionUtils;->isSupportWarmupFramework(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 v0, p0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6846\u67b6\u5305\u662f\u5426\u652f\u6301\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; \u76ee\u6807\u7248\u672c\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", \u9884\u70ed\u7248\u672c\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InnerWarmup"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
