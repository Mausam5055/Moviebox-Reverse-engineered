.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;
.super Ljava/lang/Object;


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0o:Z

.field public final OooO0o0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oO:Z

.field public OooO0oo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;ZZZ)V"
        }
    .end annotation

    const-string v0, "pagePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stageStartMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stageEndMap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stageTime"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    iput-boolean p6, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    iput-boolean p7, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    iput-boolean p8, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    iget-boolean v7, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PageOpenPointData(pagePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pageId="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", stageStartMap="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stageEndMap="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stageTime="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isHomePage="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isReportFail="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPageOpenSuccessed="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
