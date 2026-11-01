.class public final Lcom/transsion/base/infras_config/model/ConfigInitDataItem;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u00c6\u0003J9\u0010\u0018\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0005H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/base/infras_config/model/ConfigInitDataItem;",
        "",
        "sourceType",
        "Lcom/transsion/base/infras_config/model/InfrasSourceType;",
        "version",
        "",
        "configs",
        "Lcom/google/gson/JsonElement;",
        "code",
        "Lcom/transsion/base/infras_config/model/ConfigInitRspCode;",
        "<init>",
        "(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V",
        "getSourceType",
        "()Lcom/transsion/base/infras_config/model/InfrasSourceType;",
        "getVersion",
        "()Ljava/lang/String;",
        "getConfigs",
        "()Lcom/google/gson/JsonElement;",
        "getCode",
        "()Lcom/transsion/base/infras_config/model/ConfigInitRspCode;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "base_infras_config_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private final configs:Lcom/google/gson/JsonElement;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "configs"
    .end annotation
.end field

.field private final sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceType"
    .end annotation
.end field

.field private final version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;-><init>(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    iput-object p2, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->version:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->configs:Lcom/google/gson/JsonElement;

    iput-object p4, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;-><init>(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/base/infras_config/model/ConfigInitDataItem;Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;ILjava/lang/Object;)Lcom/transsion/base/infras_config/model/ConfigInitDataItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->version:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->configs:Lcom/google/gson/JsonElement;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->copy(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)Lcom/transsion/base/infras_config/model/ConfigInitDataItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/google/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->configs:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public final component4()Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    return-object v0
.end method

.method public final copy(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)Lcom/transsion/base/infras_config/model/ConfigInitDataItem;
    .locals 1

    new-instance v0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;-><init>(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;

    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    iget-object v3, p1, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->configs:Lcom/google/gson/JsonElement;

    iget-object v3, p1, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->configs:Lcom/google/gson/JsonElement;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    iget-object p1, p1, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCode()Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    return-object v0
.end method

.method public final getConfigs()Lcom/google/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->configs:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public final getSourceType()Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->version:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->configs:Lcom/google/gson/JsonElement;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigInitDataItem(sourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", configs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->configs:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitDataItem;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
