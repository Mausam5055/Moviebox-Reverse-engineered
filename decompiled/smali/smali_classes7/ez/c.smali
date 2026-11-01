.class public final Lez/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lez/c$b;,
        Lez/c$a;
    }
.end annotation


# static fields
.field public static final Companion:Lez/c$b;


# instance fields
.field private country:Ljava/lang/String;

.field private dma:Ljava/lang/Integer;

.field private regionState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lez/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lez/c$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lez/c;->Companion:Lez/c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    if-nez p5, :cond_0

    iput-object v0, p0, Lez/c;->country:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lez/c;->country:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lez/c;->regionState:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lez/c;->regionState:Ljava/lang/String;

    :goto_1
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iput-object v0, p0, Lez/c;->dma:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lez/c;->dma:Ljava/lang/Integer;

    :goto_2
    return-void
.end method

.method private static synthetic getCountry$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getDma$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getRegionState$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lez/c;Le00/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lez/c;->country:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v2, p0, Lez/c;->country:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lez/c;->regionState:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v2, p0, Lez/c;->regionState:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lez/c;->dma:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    iget-object p0, p0, Lez/c;->dma:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, p0}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final setCountry(Ljava/lang/String;)Lez/c;
    .locals 1

    const-string v0, "country"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lez/c;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final setDma(I)Lez/c;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lez/c;->dma:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setRegionState(Ljava/lang/String;)Lez/c;
    .locals 1

    const-string v0, "regionState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lez/c;->regionState:Ljava/lang/String;

    return-object p0
.end method
