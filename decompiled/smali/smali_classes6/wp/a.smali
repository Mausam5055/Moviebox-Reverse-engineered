.class public final Lwp/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/lifecycle/u;

.field private final b:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

.field private final c:Ljava/lang/ref/WeakReference;

.field private final d:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/u;Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/ref/WeakReference;Lkotlinx/coroutines/n0;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwp/a;->a:Landroidx/lifecycle/u;

    iput-object p2, p0, Lwp/a;->b:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    iput-object p3, p0, Lwp/a;->c:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lwp/a;->d:Lkotlinx/coroutines/n0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lwp/a;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final b()Lkotlinx/coroutines/n0;
    .locals 1

    iget-object v0, p0, Lwp/a;->d:Lkotlinx/coroutines/n0;

    return-object v0
.end method

.method public final c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;
    .locals 1

    iget-object v0, p0, Lwp/a;->b:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lwp/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lwp/a;

    iget-object v1, p0, Lwp/a;->a:Landroidx/lifecycle/u;

    iget-object v3, p1, Lwp/a;->a:Landroidx/lifecycle/u;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lwp/a;->b:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    iget-object v3, p1, Lwp/a;->b:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lwp/a;->c:Ljava/lang/ref/WeakReference;

    iget-object v3, p1, Lwp/a;->c:Ljava/lang/ref/WeakReference;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lwp/a;->d:Lkotlinx/coroutines/n0;

    iget-object p1, p1, Lwp/a;->d:Lkotlinx/coroutines/n0;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lwp/a;->a:Landroidx/lifecycle/u;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lwp/a;->b:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lwp/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lwp/a;->d:Lkotlinx/coroutines/n0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lwp/a;->a:Landroidx/lifecycle/u;

    iget-object v1, p0, Lwp/a;->b:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    iget-object v2, p0, Lwp/a;->c:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lwp/a;->d:Lkotlinx/coroutines/n0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaskConfig(owner="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", viewModel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fragment="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", scope="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
