.class public final Lmk/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmk/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/transsion/bean/GameInfoType;

.field private final b:Lcom/transsion/ad/ps/model/RecommendInfo;

.field private final c:Lcom/transsion/commercialization/gameres/aha/c;

.field private transient d:Ljava/lang/String;

.field private transient e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/bean/GameInfoType;Lcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/commercialization/gameres/aha/c;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmk/a;->a:Lcom/transsion/bean/GameInfoType;

    iput-object p2, p0, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    iput-object p3, p0, Lmk/a;->c:Lcom/transsion/commercialization/gameres/aha/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/commercialization/gameres/aha/c;
    .locals 1

    iget-object v0, p0, Lmk/a;->c:Lcom/transsion/commercialization/gameres/aha/c;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmk/a;->c:Lcom/transsion/commercialization/gameres/aha/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/commercialization/gameres/aha/c;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmk/a;->c:Lcom/transsion/commercialization/gameres/aha/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/commercialization/gameres/aha/c;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmk/a;->c:Lcom/transsion/commercialization/gameres/aha/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/commercialization/gameres/aha/c;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lmk/a;->a:Lcom/transsion/bean/GameInfoType;

    sget-object v1, Lmk/a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getSize()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :goto_0
    cmp-long v0, v5, v3

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getSize()J

    move-result-wide v3

    :cond_3
    invoke-static {v3, v4, v1}, Loh/b;->a(JI)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lmk/a;->c:Lcom/transsion/commercialization/gameres/aha/c;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/commercialization/gameres/aha/c;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v0

    :cond_6
    :goto_1
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmk/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmk/a;

    iget-object v1, p0, Lmk/a;->a:Lcom/transsion/bean/GameInfoType;

    iget-object v3, p1, Lmk/a;->a:Lcom/transsion/bean/GameInfoType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    iget-object v3, p1, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lmk/a;->c:Lcom/transsion/commercialization/gameres/aha/c;

    iget-object p1, p1, Lmk/a;->c:Lcom/transsion/commercialization/gameres/aha/c;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getStar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmk/a;->c:Lcom/transsion/commercialization/gameres/aha/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/commercialization/gameres/aha/c;->e()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmk/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmk/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lmk/a;->a:Lcom/transsion/bean/GameInfoType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/RecommendInfo;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lmk/a;->c:Lcom/transsion/commercialization/gameres/aha/c;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/commercialization/gameres/aha/c;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Lcom/transsion/ad/ps/model/RecommendInfo;
    .locals 1

    iget-object v0, p0, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    return-object v0
.end method

.method public final j()Lcom/transsion/bean/GameInfoType;
    .locals 1

    iget-object v0, p0, Lmk/a;->a:Lcom/transsion/bean/GameInfoType;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmk/a;->e:Ljava/lang/String;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmk/a;->d:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lmk/a;->a:Lcom/transsion/bean/GameInfoType;

    iget-object v1, p0, Lmk/a;->b:Lcom/transsion/ad/ps/model/RecommendInfo;

    iget-object v2, p0, Lmk/a;->c:Lcom/transsion/commercialization/gameres/aha/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GameResInfo(type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", psInfo="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ahaInfo="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
