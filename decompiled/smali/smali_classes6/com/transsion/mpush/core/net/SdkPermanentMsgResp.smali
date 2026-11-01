.class public final Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u00c6\u0003J?\u0010\u0019\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0007H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;",
        "",
        "pager",
        "Lcom/transsion/mpush/core/config/PagerConfig;",
        "cfg",
        "Lcom/transsion/mpush/core/config/PermanentConfig;",
        "title",
        "",
        "items",
        "",
        "Lcom/transsion/mpush/api/PermanentPushMessage;",
        "<init>",
        "(Lcom/transsion/mpush/core/config/PagerConfig;Lcom/transsion/mpush/core/config/PermanentConfig;Ljava/lang/String;Ljava/util/List;)V",
        "getPager",
        "()Lcom/transsion/mpush/core/config/PagerConfig;",
        "getCfg",
        "()Lcom/transsion/mpush/core/config/PermanentConfig;",
        "getTitle",
        "()Ljava/lang/String;",
        "getItems",
        "()Ljava/util/List;",
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
        "MBPush_psRelease"
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
.field private final cfg:Lcom/transsion/mpush/core/config/PermanentConfig;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/PermanentPushMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final pager:Lcom/transsion/mpush/core/config/PagerConfig;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/mpush/core/config/PagerConfig;Lcom/transsion/mpush/core/config/PermanentConfig;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/mpush/core/config/PagerConfig;",
            "Lcom/transsion/mpush/core/config/PermanentConfig;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/PermanentPushMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->pager:Lcom/transsion/mpush/core/config/PagerConfig;

    iput-object p2, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->cfg:Lcom/transsion/mpush/core/config/PermanentConfig;

    iput-object p3, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->items:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;Lcom/transsion/mpush/core/config/PagerConfig;Lcom/transsion/mpush/core/config/PermanentConfig;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->pager:Lcom/transsion/mpush/core/config/PagerConfig;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->cfg:Lcom/transsion/mpush/core/config/PermanentConfig;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->title:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->items:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->copy(Lcom/transsion/mpush/core/config/PagerConfig;Lcom/transsion/mpush/core/config/PermanentConfig;Ljava/lang/String;Ljava/util/List;)Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/mpush/core/config/PagerConfig;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->pager:Lcom/transsion/mpush/core/config/PagerConfig;

    return-object v0
.end method

.method public final component2()Lcom/transsion/mpush/core/config/PermanentConfig;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->cfg:Lcom/transsion/mpush/core/config/PermanentConfig;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/PermanentPushMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->items:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/transsion/mpush/core/config/PagerConfig;Lcom/transsion/mpush/core/config/PermanentConfig;Ljava/lang/String;Ljava/util/List;)Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/mpush/core/config/PagerConfig;",
            "Lcom/transsion/mpush/core/config/PermanentConfig;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/PermanentPushMessage;",
            ">;)",
            "Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;-><init>(Lcom/transsion/mpush/core/config/PagerConfig;Lcom/transsion/mpush/core/config/PermanentConfig;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;

    iget-object v1, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->pager:Lcom/transsion/mpush/core/config/PagerConfig;

    iget-object v3, p1, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->pager:Lcom/transsion/mpush/core/config/PagerConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->cfg:Lcom/transsion/mpush/core/config/PermanentConfig;

    iget-object v3, p1, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->cfg:Lcom/transsion/mpush/core/config/PermanentConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->items:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->items:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCfg()Lcom/transsion/mpush/core/config/PermanentConfig;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->cfg:Lcom/transsion/mpush/core/config/PermanentConfig;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/PermanentPushMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPager()Lcom/transsion/mpush/core/config/PagerConfig;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->pager:Lcom/transsion/mpush/core/config/PagerConfig;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->pager:Lcom/transsion/mpush/core/config/PagerConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/mpush/core/config/PagerConfig;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->cfg:Lcom/transsion/mpush/core/config/PermanentConfig;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/mpush/core/config/PermanentConfig;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->title:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->items:Ljava/util/List;

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
    .locals 6

    iget-object v0, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->pager:Lcom/transsion/mpush/core/config/PagerConfig;

    iget-object v1, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->cfg:Lcom/transsion/mpush/core/config/PermanentConfig;

    iget-object v2, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;->items:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SdkPermanentMsgResp(pager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cfg="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", items="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
