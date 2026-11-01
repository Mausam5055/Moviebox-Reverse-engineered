.class public final Lcom/transsion/mpush/core/utils/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mpush/core/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/mpush/core/utils/b$c;->a:I

    iput p2, p0, Lcom/transsion/mpush/core/utils/b$c;->b:I

    iput p3, p0, Lcom/transsion/mpush/core/utils/b$c;->c:I

    iput p4, p0, Lcom/transsion/mpush/core/utils/b$c;->d:I

    iput p5, p0, Lcom/transsion/mpush/core/utils/b$c;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$c;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$c;->d:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$c;->a:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$c;->c:I

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$c;->a:I

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$c;->d:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/mpush/core/utils/b$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/mpush/core/utils/b$c;

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$c;->a:I

    iget v3, p1, Lcom/transsion/mpush/core/utils/b$c;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/mpush/core/utils/b$c;->b:I

    iget v3, p1, Lcom/transsion/mpush/core/utils/b$c;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/mpush/core/utils/b$c;->c:I

    iget v3, p1, Lcom/transsion/mpush/core/utils/b$c;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/mpush/core/utils/b$c;->d:I

    iget v3, p1, Lcom/transsion/mpush/core/utils/b$c;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/transsion/mpush/core/utils/b$c;->e:I

    iget p1, p1, Lcom/transsion/mpush/core/utils/b$c;->e:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$c;->e:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$c;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$c;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$c;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$c;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$c;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$c;->a:I

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$c;->b:I

    iget v2, p0, Lcom/transsion/mpush/core/utils/b$c;->c:I

    iget v3, p0, Lcom/transsion/mpush/core/utils/b$c;->d:I

    iget v4, p0, Lcom/transsion/mpush/core/utils/b$c;->e:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RequestWindow(nowMinutes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", baseStartMinutes="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", offsetMinutes="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hashedStartMinutes="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", seedPriority="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
