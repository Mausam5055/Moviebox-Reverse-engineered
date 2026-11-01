.class public final Ljs/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Z

.field private d:Z

.field private e:Lcom/transsion/shorttv/bean/ShortTVItem;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZLcom/transsion/shorttv/bean/ShortTVItem;)V
    .locals 1

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljs/d;->a:Ljava/lang/String;

    iput p2, p0, Ljs/d;->b:I

    iput-boolean p3, p0, Ljs/d;->c:Z

    iput-boolean p4, p0, Ljs/d;->d:Z

    iput-object p5, p0, Ljs/d;->e:Lcom/transsion/shorttv/bean/ShortTVItem;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZZLcom/transsion/shorttv/bean/ShortTVItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Ljs/d;-><init>(Ljava/lang/String;IZZLcom/transsion/shorttv/bean/ShortTVItem;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/shorttv/bean/ShortTVItem;
    .locals 1

    iget-object v0, p0, Ljs/d;->e:Lcom/transsion/shorttv/bean/ShortTVItem;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Ljs/d;->b:I

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Ljs/d;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Ljs/d;->c:Z

    return v0
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Ljs/d;->d:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljs/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljs/d;

    iget-object v1, p0, Ljs/d;->a:Ljava/lang/String;

    iget-object v3, p1, Ljs/d;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ljs/d;->b:I

    iget v3, p1, Ljs/d;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Ljs/d;->c:Z

    iget-boolean v3, p1, Ljs/d;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Ljs/d;->d:Z

    iget-boolean v3, p1, Ljs/d;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ljs/d;->e:Lcom/transsion/shorttv/bean/ShortTVItem;

    iget-object p1, p1, Ljs/d;->e:Lcom/transsion/shorttv/bean/ShortTVItem;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f(Lcom/transsion/shorttv/bean/ShortTVItem;)V
    .locals 0

    iput-object p1, p0, Ljs/d;->e:Lcom/transsion/shorttv/bean/ShortTVItem;

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Ljs/d;->c:Z

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljs/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ljs/d;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ljs/d;->c:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ljs/d;->d:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ljs/d;->e:Lcom/transsion/shorttv/bean/ShortTVItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Ljs/d;->a:Ljava/lang/String;

    iget v1, p0, Ljs/d;->b:I

    iget-boolean v2, p0, Ljs/d;->c:Z

    iget-boolean v3, p0, Ljs/d;->d:Z

    iget-object v4, p0, Ljs/d;->e:Lcom/transsion/shorttv/bean/ShortTVItem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ShortTvDownloadEpisodeSelectItem(subjectId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", position="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isSelect="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDownload="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", episodeItem="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
