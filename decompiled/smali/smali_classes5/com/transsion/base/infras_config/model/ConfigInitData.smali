.class public final Lcom/transsion/base/infras_config/model/ConfigInitData;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J3\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/base/infras_config/model/ConfigInitData;",
        "",
        "version",
        "",
        "items",
        "",
        "Lcom/transsion/base/infras_config/model/ConfigInitDataItem;",
        "code",
        "Lcom/transsion/base/infras_config/model/ConfigInitRspCode;",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V",
        "getVersion",
        "()Ljava/lang/String;",
        "getItems",
        "()Ljava/util/List;",
        "getCode",
        "()Lcom/transsion/base/infras_config/model/ConfigInitRspCode;",
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

.field private final items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/base/infras_config/model/ConfigInitDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private final version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/base/infras_config/model/ConfigInitData;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/base/infras_config/model/ConfigInitDataItem;",
            ">;",
            "Lcom/transsion/base/infras_config/model/ConfigInitRspCode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->version:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->items:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/base/infras_config/model/ConfigInitData;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/base/infras_config/model/ConfigInitData;Ljava/lang/String;Ljava/util/List;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;ILjava/lang/Object;)Lcom/transsion/base/infras_config/model/ConfigInitData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->version:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->items:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/base/infras_config/model/ConfigInitData;->copy(Ljava/lang/String;Ljava/util/List;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)Lcom/transsion/base/infras_config/model/ConfigInitData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/base/infras_config/model/ConfigInitDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)Lcom/transsion/base/infras_config/model/ConfigInitData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/base/infras_config/model/ConfigInitDataItem;",
            ">;",
            "Lcom/transsion/base/infras_config/model/ConfigInitRspCode;",
            ")",
            "Lcom/transsion/base/infras_config/model/ConfigInitData;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/base/infras_config/model/ConfigInitData;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/base/infras_config/model/ConfigInitData;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/base/infras_config/model/ConfigInitData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/base/infras_config/model/ConfigInitData;

    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/base/infras_config/model/ConfigInitData;->version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/base/infras_config/model/ConfigInitData;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    iget-object p1, p1, Lcom/transsion/base/infras_config/model/ConfigInitData;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCode()Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/base/infras_config/model/ConfigInitDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->version:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->items:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigInitData(version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigInitData;->code:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
