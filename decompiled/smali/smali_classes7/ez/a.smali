.class public final Lez/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lez/a$b;,
        Lez/a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lez/a$b;


# instance fields
.field private ageRange:Ljava/lang/Integer;

.field private lengthOfResidence:Ljava/lang/Integer;

.field private medianHomeValueUSD:Ljava/lang/Integer;

.field private monthlyHousingPaymentUSD:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lez/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lez/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lez/a;->Companion:Lez/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p6, p1, 0x1

    const/4 v0, 0x0

    if-nez p6, :cond_0

    iput-object v0, p0, Lez/a;->ageRange:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lez/a;->ageRange:Ljava/lang/Integer;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lez/a;->lengthOfResidence:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lez/a;->lengthOfResidence:Ljava/lang/Integer;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lez/a;->medianHomeValueUSD:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lez/a;->medianHomeValueUSD:Ljava/lang/Integer;

    :goto_2
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    iput-object v0, p0, Lez/a;->monthlyHousingPaymentUSD:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lez/a;->monthlyHousingPaymentUSD:Ljava/lang/Integer;

    :goto_3
    return-void
.end method

.method private static synthetic getAgeRange$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLengthOfResidence$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getMedianHomeValueUSD$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getMonthlyHousingPaymentUSD$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lez/a;Le00/d;Lkotlinx/serialization/descriptors/f;)V
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
    iget-object v1, p0, Lez/a;->ageRange:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    iget-object v2, p0, Lez/a;->ageRange:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lez/a;->lengthOfResidence:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    iget-object v2, p0, Lez/a;->lengthOfResidence:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lez/a;->medianHomeValueUSD:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    iget-object v2, p0, Lez/a;->medianHomeValueUSD:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lez/a;->monthlyHousingPaymentUSD:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    iget-object p0, p0, Lez/a;->monthlyHousingPaymentUSD:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, p0}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final setAgeRange(I)Lez/a;
    .locals 1

    sget-object v0, Lcom/vungle/ads/fpd/AgeRange;->Companion:Lcom/vungle/ads/fpd/AgeRange$a;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/fpd/AgeRange$a;->fromAge$vungle_ads_release(I)Lcom/vungle/ads/fpd/AgeRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/fpd/AgeRange;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lez/a;->ageRange:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setLengthOfResidence(I)Lez/a;
    .locals 1

    sget-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->Companion:Lcom/vungle/ads/fpd/LengthOfResidence$a;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/fpd/LengthOfResidence$a;->fromYears$vungle_ads_release(I)Lcom/vungle/ads/fpd/LengthOfResidence;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/fpd/LengthOfResidence;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lez/a;->lengthOfResidence:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMedianHomeValueUSD(I)Lez/a;
    .locals 1

    sget-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->Companion:Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;->fromPrice$vungle_ads_release(I)Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lez/a;->medianHomeValueUSD:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMonthlyHousingCosts(I)Lez/a;
    .locals 1

    sget-object v0, Lcom/vungle/ads/fpd/MonthlyHousingCosts;->Companion:Lcom/vungle/ads/fpd/MonthlyHousingCosts$a;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/fpd/MonthlyHousingCosts$a;->fromCost$vungle_ads_release(I)Lcom/vungle/ads/fpd/MonthlyHousingCosts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/fpd/MonthlyHousingCosts;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lez/a;->monthlyHousingPaymentUSD:Ljava/lang/Integer;

    return-object p0
.end method
