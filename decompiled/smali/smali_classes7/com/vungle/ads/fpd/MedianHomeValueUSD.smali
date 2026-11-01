.class public final enum Lcom/vungle/ads/fpd/MedianHomeValueUSD;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/fpd/MedianHomeValueUSD;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0086\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vungle/ads/fpd/MedianHomeValueUSD;",
        "",
        "",
        "id",
        "Lkotlin/ranges/IntRange;",
        "range",
        "<init>",
        "(Ljava/lang/String;IILkotlin/ranges/IntRange;)V",
        "I",
        "getId",
        "()I",
        "Lkotlin/ranges/IntRange;",
        "getRange",
        "()Lkotlin/ranges/IntRange;",
        "Companion",
        "a",
        "UNDER_100K",
        "FROM_100K_TO_300K",
        "FROM_300K_TO_500K",
        "FROM_500K_TO_700K",
        "FROM_700K_TO_900K",
        "FROM_900K_TO_1M1",
        "FROM_1M1_TO_1M3",
        "FROM_1M3_TO_1M5",
        "FROM_1M5_TO_1M7",
        "OVER_1M7",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final Companion:Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;

.field public static final enum FROM_100K_TO_300K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_1M1_TO_1M3:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_1M3_TO_1M5:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_1M5_TO_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_300K_TO_500K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_500K_TO_700K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_700K_TO_900K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum FROM_900K_TO_1M1:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum OVER_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

.field public static final enum UNDER_100K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;


# instance fields
.field private final id:I

.field private final range:Lkotlin/ranges/IntRange;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/fpd/MedianHomeValueUSD;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->UNDER_100K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_100K_TO_300K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_300K_TO_500K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_500K_TO_700K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_700K_TO_900K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_900K_TO_1M1:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M1_TO_1M3:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M3_TO_1M5:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M5_TO_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->OVER_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/high16 v2, -0x80000000

    const v3, 0x186a0

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "UNDER_100K"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->UNDER_100K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v1, Lkotlin/ranges/IntRange;

    const v2, 0x186a1

    const v3, 0x493e0

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "FROM_100K_TO_300K"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_100K_TO_300K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v1, Lkotlin/ranges/IntRange;

    const v2, 0x493e1

    const v3, 0x7a120

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "FROM_300K_TO_500K"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_300K_TO_500K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v1, Lkotlin/ranges/IntRange;

    const v2, 0x7a121

    const v3, 0xaae60

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "FROM_500K_TO_700K"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_500K_TO_700K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v1, Lkotlin/ranges/IntRange;

    const v2, 0xaae61

    const v3, 0xdbba0

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "FROM_700K_TO_900K"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_700K_TO_900K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v1, Lkotlin/ranges/IntRange;

    const v2, 0xdbba1

    const v3, 0x10c8e0

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "FROM_900K_TO_1M1"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_900K_TO_1M1:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v1, Lkotlin/ranges/IntRange;

    const v2, 0x10c8e1

    const v3, 0x13d620

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "FROM_1M1_TO_1M3"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M1_TO_1M3:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v1, Lkotlin/ranges/IntRange;

    const v2, 0x13d621

    const v3, 0x16e360

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "FROM_1M3_TO_1M5"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M3_TO_1M5:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v1, Lkotlin/ranges/IntRange;

    const v2, 0x16e361

    const v3, 0x19f0a0

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "FROM_1M5_TO_1M7"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->FROM_1M5_TO_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v1, Lkotlin/ranges/IntRange;

    const v2, 0x19f0a1

    const v3, 0x7fffffff

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "OVER_1M7"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->OVER_1M7:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    invoke-static {}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->$values()[Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->$VALUES:[Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    new-instance v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->Companion:Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/ranges/IntRange;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->id:I

    iput-object p4, p0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->range:Lkotlin/ranges/IntRange;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/fpd/MedianHomeValueUSD;
    .locals 1

    const-class v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/fpd/MedianHomeValueUSD;
    .locals 1

    sget-object v0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->$VALUES:[Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->id:I

    return v0
.end method

.method public final getRange()Lkotlin/ranges/IntRange;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->range:Lkotlin/ranges/IntRange;

    return-object v0
.end method
