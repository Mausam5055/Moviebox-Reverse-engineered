.class public final Lcom/transsion/mpush/core/utils/b$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mpush/core/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/mpush/core/utils/b$d;->a:I

    iput p2, p0, Lcom/transsion/mpush/core/utils/b$d;->b:I

    iput p3, p0, Lcom/transsion/mpush/core/utils/b$d;->c:I

    iput p4, p0, Lcom/transsion/mpush/core/utils/b$d;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$d;->c:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$d;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$d;->b:I

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$d;->a:I

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$d;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$d;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/mpush/core/utils/b$d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/mpush/core/utils/b$d;

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$d;->a:I

    iget v3, p1, Lcom/transsion/mpush/core/utils/b$d;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/mpush/core/utils/b$d;->b:I

    iget v3, p1, Lcom/transsion/mpush/core/utils/b$d;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/mpush/core/utils/b$d;->c:I

    iget v3, p1, Lcom/transsion/mpush/core/utils/b$d;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/mpush/core/utils/b$d;->d:I

    iget p1, p1, Lcom/transsion/mpush/core/utils/b$d;->d:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$d;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$d;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$d;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$d;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/transsion/mpush/core/utils/b$d;->a:I

    iget v1, p0, Lcom/transsion/mpush/core/utils/b$d;->b:I

    iget v2, p0, Lcom/transsion/mpush/core/utils/b$d;->c:I

    iget v3, p0, Lcom/transsion/mpush/core/utils/b$d;->d:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecondRequestWindow(nowSeconds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", offsetSeconds="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hashedStartSeconds="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", seedPriority="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
