.class public final Lcom/vungle/ads/internal/ClickCoordinateTracker$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/ClickCoordinateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->x:I

    iput p2, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->y:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/ClickCoordinateTracker$c;IIILjava/lang/Object;)Lcom/vungle/ads/internal/ClickCoordinateTracker$c;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->x:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->y:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->copy(II)Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->x:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->y:I

    return v0
.end method

.method public final copy(II)Lcom/vungle/ads/internal/ClickCoordinateTracker$c;
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    iget v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->x:I

    iget v3, p1, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->x:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->y:I

    iget p1, p1, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->y:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getX()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->x:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Coordinate(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
