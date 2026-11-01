.class public final Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;",
        "",
        "targetUID",
        "",
        "subscribe",
        "",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "getTargetUID",
        "()Ljava/lang/String;",
        "getSubscribe",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "UserCenter_psRelease"
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
.field private final subscribe:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscribe"
    .end annotation
.end field

.field private final targetUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "targetUID"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "targetUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->targetUID:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->subscribe:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->targetUID:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->subscribe:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->copy(Ljava/lang/String;Z)Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->targetUID:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->subscribe:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Z)Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;
    .locals 1

    const-string v0, "targetUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;

    invoke-direct {v0, p1, p2}, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->targetUID:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->targetUID:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->subscribe:Z

    iget-boolean p1, p1, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->subscribe:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getSubscribe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->subscribe:Z

    return v0
.end method

.method public final getTargetUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->targetUID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->targetUID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->subscribe:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->targetUID:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/usercenter/profile/bean/ToggleSubscriptionRequest;->subscribe:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToggleSubscriptionRequest(targetUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subscribe="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
