.class public final Lcom/transsion/rewardscenter/task/ad/v$b;
.super Lcom/transsion/rewardscenter/task/ad/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/rewardscenter/task/ad/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/transsion/rewardscenter/task/ad/AdTaskState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/rewardscenter/task/ad/v$b;-><init>(Lcom/transsion/rewardscenter/task/ad/AdTaskState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V
    .locals 1

    const-string v0, "adTaskState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/rewardscenter/task/ad/v;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$b;->a:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/AdTaskState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/ad/v$b;-><init>(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/rewardscenter/task/ad/v$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v$b;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$b;->a:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    iget-object p1, p1, Lcom/transsion/rewardscenter/task/ad/v$b;->a:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$b;->a:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$b;->a:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RewardItem(adTaskState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
