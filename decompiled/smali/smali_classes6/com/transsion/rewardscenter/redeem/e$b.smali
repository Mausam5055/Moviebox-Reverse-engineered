.class public final Lcom/transsion/rewardscenter/redeem/e$b;
.super Lcom/transsion/rewardscenter/redeem/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/rewardscenter/redeem/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/transsion/rewardscenterapi/SkuPoint;

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/rewardscenterapi/SkuPoint;Z)V
    .locals 1

    const-string v0, "skuPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/rewardscenter/redeem/e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/redeem/e$b;->a:Lcom/transsion/rewardscenterapi/SkuPoint;

    iput-boolean p2, p0, Lcom/transsion/rewardscenter/redeem/e$b;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/rewardscenter/redeem/e$b;->b:Z

    return v0
.end method

.method public final b()Lcom/transsion/rewardscenterapi/SkuPoint;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/e$b;->a:Lcom/transsion/rewardscenterapi/SkuPoint;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/rewardscenter/redeem/e$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/rewardscenter/redeem/e$b;

    iget-object v1, p0, Lcom/transsion/rewardscenter/redeem/e$b;->a:Lcom/transsion/rewardscenterapi/SkuPoint;

    iget-object v3, p1, Lcom/transsion/rewardscenter/redeem/e$b;->a:Lcom/transsion/rewardscenterapi/SkuPoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/rewardscenter/redeem/e$b;->b:Z

    iget-boolean p1, p1, Lcom/transsion/rewardscenter/redeem/e$b;->b:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/e$b;->a:Lcom/transsion/rewardscenterapi/SkuPoint;

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/SkuPoint;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/rewardscenter/redeem/e$b;->b:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/e$b;->a:Lcom/transsion/rewardscenterapi/SkuPoint;

    iget-boolean v1, p0, Lcom/transsion/rewardscenter/redeem/e$b;->b:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SkuItem(skuPoint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hasPaid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
