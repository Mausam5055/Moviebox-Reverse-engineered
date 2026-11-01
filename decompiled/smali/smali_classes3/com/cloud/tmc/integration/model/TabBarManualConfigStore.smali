.class public final Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "tabBarConfig",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;",
        "(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V",
        "getTabBarConfig",
        "()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;",
        "setTabBarConfig",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "com.cloud.tmc.integration"
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
.field private tabBarConfig:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;-><init>(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->tabBarConfig:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;-><init>(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;ILjava/lang/Object;)Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->tabBarConfig:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->copy(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->tabBarConfig:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    return-object v0
.end method

.method public final copy(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;-><init>(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->tabBarConfig:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->tabBarConfig:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->tabBarConfig:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->tabBarConfig:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final setTabBarConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->tabBarConfig:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->tabBarConfig:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TabBarManualConfigStore(tabBarConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
