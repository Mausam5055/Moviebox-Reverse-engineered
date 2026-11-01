.class public final Lcom/transsion/rewardscenter/task/dada/r;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/rewardscenter/task/dada/r;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaTaskState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/rewardscenter/task/dada/DadaTaskState;)V
    .locals 1

    const-string v0, "taskState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/dada/r;->a:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/dada/DadaTaskState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/transsion/rewardscenter/task/dada/DadaTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/dada/r;-><init>(Lcom/transsion/rewardscenter/task/dada/DadaTaskState;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/rewardscenter/task/dada/DadaTaskState;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/dada/r;->a:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    return-object v0
.end method

.method public final b(Lcom/transsion/rewardscenter/task/dada/DadaTaskState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/dada/r;->a:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/rewardscenter/task/dada/r;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/rewardscenter/task/dada/r;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/dada/r;->a:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    iget-object p1, p1, Lcom/transsion/rewardscenter/task/dada/r;->a:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/dada/r;->a:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/dada/r;->a:Lcom/transsion/rewardscenter/task/dada/DadaTaskState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DadaTaskItem(taskState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
