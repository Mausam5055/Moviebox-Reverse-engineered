.class public final enum Lcom/vungle/ads/fpd/LengthOfResidence;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/fpd/LengthOfResidence$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/fpd/LengthOfResidence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0086\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vungle/ads/fpd/LengthOfResidence;",
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
        "LESS_THAN_ONE_YEAR",
        "ONE_TO_FIVE_YEARS",
        "SIX_TO_TEN_YEARS",
        "ELEVEN_TO_TWENTY_YEARS",
        "TWENTY_ONE_TO_THIRTY_YEARS",
        "THIRTY_ONE_TO_FORTY_YEARS",
        "FORTY_ONE_TO_FIFTY_YEARS",
        "FIFTY_ONE_TO_SIXTY_YEARS",
        "SIXTY_ONE_TO_SEVENTY_YEARS",
        "OVER_SEVENTY_ONE_YEARS",
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
.field private static final synthetic $VALUES:[Lcom/vungle/ads/fpd/LengthOfResidence;

.field public static final Companion:Lcom/vungle/ads/fpd/LengthOfResidence$a;

.field public static final enum ELEVEN_TO_TWENTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

.field public static final enum FIFTY_ONE_TO_SIXTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

.field public static final enum FORTY_ONE_TO_FIFTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

.field public static final enum LESS_THAN_ONE_YEAR:Lcom/vungle/ads/fpd/LengthOfResidence;

.field public static final enum ONE_TO_FIVE_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

.field public static final enum OVER_SEVENTY_ONE_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

.field public static final enum SIXTY_ONE_TO_SEVENTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

.field public static final enum SIX_TO_TEN_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

.field public static final enum THIRTY_ONE_TO_FORTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

.field public static final enum TWENTY_ONE_TO_THIRTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;


# instance fields
.field private final id:I

.field private final range:Lkotlin/ranges/IntRange;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/fpd/LengthOfResidence;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/vungle/ads/fpd/LengthOfResidence;

    sget-object v1, Lcom/vungle/ads/fpd/LengthOfResidence;->LESS_THAN_ONE_YEAR:Lcom/vungle/ads/fpd/LengthOfResidence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/LengthOfResidence;->ONE_TO_FIVE_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/LengthOfResidence;->SIX_TO_TEN_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/LengthOfResidence;->ELEVEN_TO_TWENTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/LengthOfResidence;->TWENTY_ONE_TO_THIRTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/LengthOfResidence;->THIRTY_ONE_TO_FORTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/LengthOfResidence;->FORTY_ONE_TO_FIFTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/LengthOfResidence;->FIFTY_ONE_TO_SIXTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/LengthOfResidence;->SIXTY_ONE_TO_SEVENTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/LengthOfResidence;->OVER_SEVENTY_ONE_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "LESS_THAN_ONE_YEAR"

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/LengthOfResidence;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->LESS_THAN_ONE_YEAR:Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v0, Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v4, "ONE_TO_FIVE_YEARS"

    invoke-direct {v0, v4, v2, v2, v1}, Lcom/vungle/ads/fpd/LengthOfResidence;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->ONE_TO_FIVE_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v0, Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0xa

    const/4 v4, 0x6

    invoke-direct {v1, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "SIX_TO_TEN_YEARS"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v5, v1}, Lcom/vungle/ads/fpd/LengthOfResidence;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->SIX_TO_TEN_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v0, Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0xb

    const/16 v5, 0x14

    invoke-direct {v1, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "ELEVEN_TO_TWENTY_YEARS"

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5, v5, v1}, Lcom/vungle/ads/fpd/LengthOfResidence;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->ELEVEN_TO_TWENTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v0, Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x15

    const/16 v5, 0x1e

    invoke-direct {v1, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "TWENTY_ONE_TO_THIRTY_YEARS"

    const/4 v5, 0x4

    invoke-direct {v0, v2, v5, v5, v1}, Lcom/vungle/ads/fpd/LengthOfResidence;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->TWENTY_ONE_TO_THIRTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v0, Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x1f

    const/16 v5, 0x28

    invoke-direct {v1, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "THIRTY_ONE_TO_FORTY_YEARS"

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/LengthOfResidence;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->THIRTY_ONE_TO_FORTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v0, Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x29

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "FORTY_ONE_TO_FIFTY_YEARS"

    invoke-direct {v0, v2, v4, v4, v1}, Lcom/vungle/ads/fpd/LengthOfResidence;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->FORTY_ONE_TO_FIFTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v0, Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x33

    const/16 v3, 0x3c

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "FIFTY_ONE_TO_SIXTY_YEARS"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/LengthOfResidence;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->FIFTY_ONE_TO_SIXTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v0, Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x3d

    const/16 v3, 0x46

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "SIXTY_ONE_TO_SEVENTY_YEARS"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/LengthOfResidence;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->SIXTY_ONE_TO_SEVENTY_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v0, Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x47

    const v3, 0x7fffffff

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "OVER_SEVENTY_ONE_YEARS"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/vungle/ads/fpd/LengthOfResidence;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->OVER_SEVENTY_ONE_YEARS:Lcom/vungle/ads/fpd/LengthOfResidence;

    invoke-static {}, Lcom/vungle/ads/fpd/LengthOfResidence;->$values()[Lcom/vungle/ads/fpd/LengthOfResidence;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->$VALUES:[Lcom/vungle/ads/fpd/LengthOfResidence;

    new-instance v0, Lcom/vungle/ads/fpd/LengthOfResidence$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/fpd/LengthOfResidence$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->Companion:Lcom/vungle/ads/fpd/LengthOfResidence$a;

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

    iput p3, p0, Lcom/vungle/ads/fpd/LengthOfResidence;->id:I

    iput-object p4, p0, Lcom/vungle/ads/fpd/LengthOfResidence;->range:Lkotlin/ranges/IntRange;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/fpd/LengthOfResidence;
    .locals 1

    const-class v0, Lcom/vungle/ads/fpd/LengthOfResidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/fpd/LengthOfResidence;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/fpd/LengthOfResidence;
    .locals 1

    sget-object v0, Lcom/vungle/ads/fpd/LengthOfResidence;->$VALUES:[Lcom/vungle/ads/fpd/LengthOfResidence;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/fpd/LengthOfResidence;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/fpd/LengthOfResidence;->id:I

    return v0
.end method

.method public final getRange()Lkotlin/ranges/IntRange;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/fpd/LengthOfResidence;->range:Lkotlin/ranges/IntRange;

    return-object v0
.end method
