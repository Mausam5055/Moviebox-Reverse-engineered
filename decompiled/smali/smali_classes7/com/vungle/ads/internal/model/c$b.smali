.class public final Lcom/vungle/ads/internal/model/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/c$b$b;,
        Lcom/vungle/ads/internal/model/c$b$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/c$b$b;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/model/c$b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/c$b$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/model/c$b;->Companion:Lcom/vungle/ads/internal/model/c$b$b;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    iput p2, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    sget-object p4, Lcom/vungle/ads/internal/model/c$b$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$b$a;

    invoke-virtual {p4}, Lcom/vungle/ads/internal/model/c$b$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/m1;->a(IILkotlinx/serialization/descriptors/f;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    iput p3, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/c$b;IIILjava/lang/Object;)Lcom/vungle/ads/internal/model/c$b;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/c$b;->copy(II)Lcom/vungle/ads/internal/model/c$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getHeight$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getWidth$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/c$b;Le00/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Le00/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    const/4 v0, 0x1

    iget p0, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    invoke-interface {p1, p2, v0, p0}, Le00/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    return v0
.end method

.method public final copy(II)Lcom/vungle/ads/internal/model/c$b;
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/model/c$b;

    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/internal/model/c$b;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/model/c$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/model/c$b;

    iget v1, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    iget v3, p1, Lcom/vungle/ads/internal/model/c$b;->width:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    iget p1, p1, Lcom/vungle/ads/internal/model/c$b;->height:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdSizeParam(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/c$b;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/c$b;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
