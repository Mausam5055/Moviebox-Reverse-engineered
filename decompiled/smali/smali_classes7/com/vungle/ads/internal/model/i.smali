.class public final Lcom/vungle/ads/internal/model/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/i$b;,
        Lcom/vungle/ads/internal/model/i$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/i$b;


# instance fields
.field private final device:Lcom/vungle/ads/internal/model/d;

.field private final ext:Lcom/vungle/ads/internal/model/c$h;

.field private final ordinalView:I

.field private final request:Lcom/vungle/ads/internal/model/h;

.field private final user:Lcom/vungle/ads/internal/model/c$j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/model/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/i$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/model/i;->Companion:Lcom/vungle/ads/internal/model/i$b;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;ILkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    and-int/lit8 p7, p1, 0x11

    const/16 v0, 0x11

    if-eq v0, p7, :cond_0

    sget-object p7, Lcom/vungle/ads/internal/model/i$a;->INSTANCE:Lcom/vungle/ads/internal/model/i$a;

    invoke-virtual {p7}, Lcom/vungle/ads/internal/model/i$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/m1;->a(IILkotlinx/serialization/descriptors/f;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    and-int/lit8 p2, p1, 0x2

    const/4 p7, 0x0

    if-nez p2, :cond_1

    iput-object p7, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object p7, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    :goto_1
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    iput-object p7, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    goto :goto_2

    :cond_3
    iput-object p5, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    :goto_2
    iput p6, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;I)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    iput-object p4, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    iput p5, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/model/i;-><init>(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/i;Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;IILjava/lang/Object;)Lcom/vungle/ads/internal/model/i;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/vungle/ads/internal/model/i;->copy(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;I)Lcom/vungle/ads/internal/model/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getOrdinalView$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/i;Le00/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/model/d$a;->INSTANCE:Lcom/vungle/ads/internal/model/d$a;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Le00/d;->C(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/vungle/ads/internal/model/c$j$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$j$a;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lcom/vungle/ads/internal/model/c$h$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$h$a;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lcom/vungle/ads/internal/model/h$a;->INSTANCE:Lcom/vungle/ads/internal/model/h$a;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x4

    iget p0, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    invoke-interface {p1, p2, v0, p0}, Le00/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/vungle/ads/internal/model/d;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    return-object v0
.end method

.method public final component2()Lcom/vungle/ads/internal/model/c$j;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    return-object v0
.end method

.method public final component3()Lcom/vungle/ads/internal/model/c$h;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    return-object v0
.end method

.method public final component4()Lcom/vungle/ads/internal/model/h;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    return v0
.end method

.method public final copy(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;I)Lcom/vungle/ads/internal/model/i;
    .locals 7

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/model/i;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/model/i;-><init>(Lcom/vungle/ads/internal/model/d;Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$h;Lcom/vungle/ads/internal/model/h;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/model/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/model/i;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    iget p1, p1, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDevice()Lcom/vungle/ads/internal/model/d;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    return-object v0
.end method

.method public final getExt()Lcom/vungle/ads/internal/model/c$h;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    return-object v0
.end method

.method public final getOrdinalView()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    return v0
.end method

.method public final getRequest()Lcom/vungle/ads/internal/model/h;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    return-object v0
.end method

.method public final getUser()Lcom/vungle/ads/internal/model/c$j;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/c$j;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/c$h;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/h;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RtbToken(device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->device:Lcom/vungle/ads/internal/model/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->user:Lcom/vungle/ads/internal/model/c$j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->ext:Lcom/vungle/ads/internal/model/c$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/i;->request:Lcom/vungle/ads/internal/model/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ordinalView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/i;->ordinalView:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
