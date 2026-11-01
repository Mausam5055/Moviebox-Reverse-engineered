.class public final Lcom/cloud/tmc/ad/bean/AdStyleBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/bean/AdStyleBean;",
        "Ljava/io/Serializable;",
        "showTitle",
        "",
        "showDescript",
        "showLogo",
        "showButton",
        "(ZZZZ)V",
        "getShowButton",
        "()Z",
        "getShowDescript",
        "getShowLogo",
        "getShowTitle",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final showButton:Z

.field private final showDescript:Z

.field private final showLogo:Z

.field private final showTitle:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showTitle:Z

    iput-boolean p2, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showDescript:Z

    iput-boolean p3, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showLogo:Z

    iput-boolean p4, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showButton:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/ad/bean/AdStyleBean;ZZZZILjava/lang/Object;)Lcom/cloud/tmc/ad/bean/AdStyleBean;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showTitle:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showDescript:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showLogo:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showButton:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/ad/bean/AdStyleBean;->copy(ZZZZ)Lcom/cloud/tmc/ad/bean/AdStyleBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showTitle:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showDescript:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showLogo:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showButton:Z

    return v0
.end method

.method public final copy(ZZZZ)Lcom/cloud/tmc/ad/bean/AdStyleBean;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/ad/bean/AdStyleBean;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/ad/bean/AdStyleBean;-><init>(ZZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/ad/bean/AdStyleBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/ad/bean/AdStyleBean;

    iget-boolean v1, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showTitle:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showTitle:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showDescript:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showDescript:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showLogo:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showLogo:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showButton:Z

    iget-boolean p1, p1, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showButton:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getShowButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showButton:Z

    return v0
.end method

.method public final getShowDescript()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showDescript:Z

    return v0
.end method

.method public final getShowLogo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showLogo:Z

    return v0
.end method

.method public final getShowTitle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showTitle:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showTitle:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showDescript:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showLogo:Z

    if-eqz v2, :cond_2

    move v2, v1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showButton:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showTitle:Z

    iget-boolean v1, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showDescript:Z

    iget-boolean v2, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showLogo:Z

    iget-boolean v3, p0, Lcom/cloud/tmc/ad/bean/AdStyleBean;->showButton:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdStyleBean(showTitle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showDescript="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showLogo="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showButton="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
