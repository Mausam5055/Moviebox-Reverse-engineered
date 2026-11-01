.class final Lcom/transsion/member/promotion/SkuPromotionRepository$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/promotion/SkuPromotionRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/transsion/memberapi/SkuPromotionDto;

.field private final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionDto;J)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promotion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->b:Lcom/transsion/memberapi/SkuPromotionDto;

    iput-wide p3, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->c:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->c:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/transsion/memberapi/SkuPromotionDto;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->b:Lcom/transsion/memberapi/SkuPromotionDto;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/member/promotion/SkuPromotionRepository$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/member/promotion/SkuPromotionRepository$a;

    iget-object v1, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->b:Lcom/transsion/memberapi/SkuPromotionDto;

    iget-object v3, p1, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->b:Lcom/transsion/memberapi/SkuPromotionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->c:J

    iget-wide v5, p1, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->c:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->b:Lcom/transsion/memberapi/SkuPromotionDto;

    invoke-virtual {v1}, Lcom/transsion/memberapi/SkuPromotionDto;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->c:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->b:Lcom/transsion/memberapi/SkuPromotionDto;

    iget-wide v2, p0, Lcom/transsion/member/promotion/SkuPromotionRepository$a;->c:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CacheEntry(host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", promotion="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cachedAtElapsedRealtime="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
