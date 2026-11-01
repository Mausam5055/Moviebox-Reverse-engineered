.class public final Lcom/google/android/exoplayer2/e3;
.super Lcom/google/android/exoplayer2/v2;


# static fields
.field public static final d:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field private final b:I

.field private final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/d3;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/d3;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/e3;->d:Lcom/google/android/exoplayer2/k$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/v2;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxStars must be a positive integer"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/exoplayer2/e3;->b:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/exoplayer2/e3;->c:F

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/exoplayer2/v2;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "maxStars must be a positive integer"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    int-to-float v2, p1

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    move v0, v1

    :cond_1
    const-string v1, "starRating is out of range [0, maxStars]"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/exoplayer2/e3;->b:I

    iput p2, p0, Lcom/google/android/exoplayer2/e3;->c:F

    return-void
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e3;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/e3;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e3;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e3;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/e3;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move v0, v2

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/e3;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v3}, Lcom/google/android/exoplayer2/e3;->c(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    cmpl-float v1, p0, v2

    if-nez v1, :cond_1

    new-instance p0, Lcom/google/android/exoplayer2/e3;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/e3;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/e3;

    invoke-direct {v1, v0, p0}, Lcom/google/android/exoplayer2/e3;-><init>(IF)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/exoplayer2/e3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/exoplayer2/e3;

    iget v0, p0, Lcom/google/android/exoplayer2/e3;->b:I

    iget v2, p1, Lcom/google/android/exoplayer2/e3;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/e3;->c:F

    iget p1, p1, Lcom/google/android/exoplayer2/e3;->c:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/e3;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/e3;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/google/common/base/j;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/e3;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/e3;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/google/android/exoplayer2/e3;->b:I

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/e3;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/e3;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method
