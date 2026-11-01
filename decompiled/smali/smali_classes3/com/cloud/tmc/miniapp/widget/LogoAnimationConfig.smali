.class public final Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# instance fields
.field private loadingAnimMemorySize:I

.field private miniAnimateEnable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;I)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;Ljava/lang/Boolean;IILjava/lang/Object;)Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->copy(Ljava/lang/Boolean;I)Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    return v0
.end method

.method public final copy(Ljava/lang/Boolean;I)Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;-><init>(Ljava/lang/Boolean;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    iget p1, p1, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLoadingAnimMemorySize()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    return v0
.end method

.method public final getMiniAnimateEnable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final setLoadingAnimMemorySize(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    return-void
.end method

.method public final setMiniAnimateEnable(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->miniAnimateEnable:Ljava/lang/Boolean;

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LogoAnimationConfig;->loadingAnimMemorySize:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogoAnimationConfig(miniAnimateEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", loadingAnimMemorySize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
