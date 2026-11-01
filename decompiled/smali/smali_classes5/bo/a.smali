.class public final Lbo/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lbo/d;

.field private final b:Lcom/transsion/player/config/PlayerType;

.field private final c:Z

.field private final d:Z

.field private final e:F

.field private final f:Lcom/transsion/player/enum/ScaleMode;


# direct methods
.method public constructor <init>(Lbo/d;Lcom/transsion/player/config/PlayerType;ZZFLcom/transsion/player/enum/ScaleMode;)V
    .locals 1

    const-string v0, "vodConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scaleMode"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbo/a;->a:Lbo/d;

    iput-object p2, p0, Lbo/a;->b:Lcom/transsion/player/config/PlayerType;

    iput-boolean p3, p0, Lbo/a;->c:Z

    iput-boolean p4, p0, Lbo/a;->d:Z

    iput p5, p0, Lbo/a;->e:F

    iput-object p6, p0, Lbo/a;->f:Lcom/transsion/player/enum/ScaleMode;

    return-void
.end method

.method public synthetic constructor <init>(Lbo/d;Lcom/transsion/player/config/PlayerType;ZZFLcom/transsion/player/enum/ScaleMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    sget-object p2, Lcom/transsion/player/config/PlayerType;->EXO:Lcom/transsion/player/config/PlayerType;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x1

    if-eqz p2, :cond_1

    move v3, p8

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    move v4, p8

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbo/a;-><init>(Lbo/d;Lcom/transsion/player/config/PlayerType;ZZFLcom/transsion/player/enum/ScaleMode;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/player/enum/ScaleMode;
    .locals 1

    iget-object v0, p0, Lbo/a;->f:Lcom/transsion/player/enum/ScaleMode;

    return-object v0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lbo/a;->e:F

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lbo/a;->d:Z

    return v0
.end method

.method public final d()Lbo/d;
    .locals 1

    iget-object v0, p0, Lbo/a;->a:Lbo/d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lbo/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lbo/a;

    iget-object v1, p0, Lbo/a;->a:Lbo/d;

    iget-object v3, p1, Lbo/a;->a:Lbo/d;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lbo/a;->b:Lcom/transsion/player/config/PlayerType;

    iget-object v3, p1, Lbo/a;->b:Lcom/transsion/player/config/PlayerType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lbo/a;->c:Z

    iget-boolean v3, p1, Lbo/a;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lbo/a;->d:Z

    iget-boolean v3, p1, Lbo/a;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lbo/a;->e:F

    iget v3, p1, Lbo/a;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lbo/a;->f:Lcom/transsion/player/enum/ScaleMode;

    iget-object p1, p1, Lbo/a;->f:Lcom/transsion/player/enum/ScaleMode;

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lbo/a;->a:Lbo/d;

    invoke-virtual {v0}, Lbo/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbo/a;->b:Lcom/transsion/player/config/PlayerType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lbo/a;->c:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lbo/a;->d:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbo/a;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbo/a;->f:Lcom/transsion/player/enum/ScaleMode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lbo/a;->a:Lbo/d;

    iget-object v1, p0, Lbo/a;->b:Lcom/transsion/player/config/PlayerType;

    iget-boolean v2, p0, Lbo/a;->c:Z

    iget-boolean v3, p0, Lbo/a;->d:Z

    iget v4, p0, Lbo/a;->e:F

    iget-object v5, p0, Lbo/a;->f:Lcom/transsion/player/enum/ScaleMode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LongVodConfig(vodConfig="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", playerType="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", openMediaNotification="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", useSurface="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", speed="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", scaleMode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
