.class public final Lcom/transsnet/downloader/viewmodel/j0;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/Long;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsnet/downloader/viewmodel/j0;->a:I

    iput-object p2, p0, Lcom/transsnet/downloader/viewmodel/j0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsnet/downloader/viewmodel/j0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsnet/downloader/viewmodel/j0;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsnet/downloader/viewmodel/j0;->e:Ljava/lang/Long;

    iput-object p6, p0, Lcom/transsnet/downloader/viewmodel/j0;->f:Ljava/lang/Long;

    iput-object p7, p0, Lcom/transsnet/downloader/viewmodel/j0;->g:Ljava/lang/Long;

    iput p8, p0, Lcom/transsnet/downloader/viewmodel/j0;->h:I

    iput p9, p0, Lcom/transsnet/downloader/viewmodel/j0;->i:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/j0;->g:Ljava/lang/Long;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/viewmodel/j0;->i:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/viewmodel/j0;->a:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/j0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/j0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsnet/downloader/viewmodel/j0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsnet/downloader/viewmodel/j0;

    iget v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->a:I

    iget v3, p1, Lcom/transsnet/downloader/viewmodel/j0;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsnet/downloader/viewmodel/j0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsnet/downloader/viewmodel/j0;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsnet/downloader/viewmodel/j0;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->e:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsnet/downloader/viewmodel/j0;->e:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->f:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsnet/downloader/viewmodel/j0;->f:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->g:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsnet/downloader/viewmodel/j0;->g:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->h:I

    iget v3, p1, Lcom/transsnet/downloader/viewmodel/j0;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->i:I

    iget p1, p1, Lcom/transsnet/downloader/viewmodel/j0;->i:I

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/viewmodel/j0;->h:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsnet/downloader/viewmodel/j0;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->e:Ljava/lang/Long;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->f:Ljava/lang/Long;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->g:Ljava/lang/Long;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lcom/transsnet/downloader/viewmodel/j0;->a:I

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/j0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsnet/downloader/viewmodel/j0;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsnet/downloader/viewmodel/j0;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsnet/downloader/viewmodel/j0;->e:Ljava/lang/Long;

    iget-object v5, p0, Lcom/transsnet/downloader/viewmodel/j0;->f:Ljava/lang/Long;

    iget-object v6, p0, Lcom/transsnet/downloader/viewmodel/j0;->g:Ljava/lang/Long;

    iget v7, p0, Lcom/transsnet/downloader/viewmodel/j0;->h:I

    iget v8, p0, Lcom/transsnet/downloader/viewmodel/j0;->i:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Video(id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", path="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", resolution="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", date="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
