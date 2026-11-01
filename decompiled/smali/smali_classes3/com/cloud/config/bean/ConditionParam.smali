.class public final Lcom/cloud/config/bean/ConditionParam;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J-\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cloud/config/bean/ConditionParam;",
        "",
        "cacheFileUrl",
        "",
        "conditionParam",
        "Lcom/cloud/config/bean/ConditionParamX;",
        "shuntInfo",
        "Lcom/cloud/config/bean/ShuntInfo;",
        "(Ljava/lang/String;Lcom/cloud/config/bean/ConditionParamX;Lcom/cloud/config/bean/ShuntInfo;)V",
        "getCacheFileUrl",
        "()Ljava/lang/String;",
        "getConditionParam",
        "()Lcom/cloud/config/bean/ConditionParamX;",
        "getShuntInfo",
        "()Lcom/cloud/config/bean/ShuntInfo;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cacheFileUrl:Ljava/lang/String;

.field private final conditionParam:Lcom/cloud/config/bean/ConditionParamX;

.field private final shuntInfo:Lcom/cloud/config/bean/ShuntInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/config/bean/ConditionParamX;Lcom/cloud/config/bean/ShuntInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/config/bean/ConditionParam;->cacheFileUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/config/bean/ConditionParam;->conditionParam:Lcom/cloud/config/bean/ConditionParamX;

    iput-object p3, p0, Lcom/cloud/config/bean/ConditionParam;->shuntInfo:Lcom/cloud/config/bean/ShuntInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/config/bean/ConditionParam;Ljava/lang/String;Lcom/cloud/config/bean/ConditionParamX;Lcom/cloud/config/bean/ShuntInfo;ILjava/lang/Object;)Lcom/cloud/config/bean/ConditionParam;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/cloud/config/bean/ConditionParam;->cacheFileUrl:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/cloud/config/bean/ConditionParam;->conditionParam:Lcom/cloud/config/bean/ConditionParamX;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/cloud/config/bean/ConditionParam;->shuntInfo:Lcom/cloud/config/bean/ShuntInfo;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/config/bean/ConditionParam;->copy(Ljava/lang/String;Lcom/cloud/config/bean/ConditionParamX;Lcom/cloud/config/bean/ShuntInfo;)Lcom/cloud/config/bean/ConditionParam;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionParam;->cacheFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/cloud/config/bean/ConditionParamX;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionParam;->conditionParam:Lcom/cloud/config/bean/ConditionParamX;

    return-object v0
.end method

.method public final component3()Lcom/cloud/config/bean/ShuntInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionParam;->shuntInfo:Lcom/cloud/config/bean/ShuntInfo;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/cloud/config/bean/ConditionParamX;Lcom/cloud/config/bean/ShuntInfo;)Lcom/cloud/config/bean/ConditionParam;
    .locals 1

    new-instance v0, Lcom/cloud/config/bean/ConditionParam;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/config/bean/ConditionParam;-><init>(Ljava/lang/String;Lcom/cloud/config/bean/ConditionParamX;Lcom/cloud/config/bean/ShuntInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/config/bean/ConditionParam;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/config/bean/ConditionParam;

    iget-object v1, p0, Lcom/cloud/config/bean/ConditionParam;->cacheFileUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/config/bean/ConditionParam;->cacheFileUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/config/bean/ConditionParam;->conditionParam:Lcom/cloud/config/bean/ConditionParamX;

    iget-object v3, p1, Lcom/cloud/config/bean/ConditionParam;->conditionParam:Lcom/cloud/config/bean/ConditionParamX;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/config/bean/ConditionParam;->shuntInfo:Lcom/cloud/config/bean/ShuntInfo;

    iget-object p1, p1, Lcom/cloud/config/bean/ConditionParam;->shuntInfo:Lcom/cloud/config/bean/ShuntInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCacheFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionParam;->cacheFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getConditionParam()Lcom/cloud/config/bean/ConditionParamX;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionParam;->conditionParam:Lcom/cloud/config/bean/ConditionParamX;

    return-object v0
.end method

.method public final getShuntInfo()Lcom/cloud/config/bean/ShuntInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionParam;->shuntInfo:Lcom/cloud/config/bean/ShuntInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionParam;->cacheFileUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/config/bean/ConditionParam;->conditionParam:Lcom/cloud/config/bean/ConditionParamX;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/cloud/config/bean/ConditionParamX;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/config/bean/ConditionParam;->shuntInfo:Lcom/cloud/config/bean/ShuntInfo;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/cloud/config/bean/ShuntInfo;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConditionParam(cacheFileUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/config/bean/ConditionParam;->cacheFileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", conditionParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/config/bean/ConditionParam;->conditionParam:Lcom/cloud/config/bean/ConditionParamX;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shuntInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/config/bean/ConditionParam;->shuntInfo:Lcom/cloud/config/bean/ShuntInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
