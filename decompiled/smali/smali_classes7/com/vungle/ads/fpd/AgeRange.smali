.class public final enum Lcom/vungle/ads/fpd/AgeRange;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/fpd/AgeRange$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/fpd/AgeRange;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0086\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vungle/ads/fpd/AgeRange;",
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
        "AGE_18_20",
        "AGE_21_30",
        "AGE_31_40",
        "AGE_41_50",
        "AGE_51_60",
        "AGE_61_70",
        "AGE_71_75",
        "OTHERS",
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
.field private static final synthetic $VALUES:[Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_18_20:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_21_30:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_31_40:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_41_50:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_51_60:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_61_70:Lcom/vungle/ads/fpd/AgeRange;

.field public static final enum AGE_71_75:Lcom/vungle/ads/fpd/AgeRange;

.field public static final Companion:Lcom/vungle/ads/fpd/AgeRange$a;

.field public static final enum OTHERS:Lcom/vungle/ads/fpd/AgeRange;


# instance fields
.field private final id:I

.field private final range:Lkotlin/ranges/IntRange;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/fpd/AgeRange;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/vungle/ads/fpd/AgeRange;

    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_18_20:Lcom/vungle/ads/fpd/AgeRange;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_21_30:Lcom/vungle/ads/fpd/AgeRange;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_31_40:Lcom/vungle/ads/fpd/AgeRange;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_41_50:Lcom/vungle/ads/fpd/AgeRange;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_51_60:Lcom/vungle/ads/fpd/AgeRange;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_61_70:Lcom/vungle/ads/fpd/AgeRange;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->AGE_71_75:Lcom/vungle/ads/fpd/AgeRange;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/fpd/AgeRange;->OTHERS:Lcom/vungle/ads/fpd/AgeRange;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x12

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "AGE_18_20"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_18_20:Lcom/vungle/ads/fpd/AgeRange;

    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x15

    const/16 v5, 0x1e

    invoke-direct {v1, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "AGE_21_30"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_21_30:Lcom/vungle/ads/fpd/AgeRange;

    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x1f

    const/16 v4, 0x28

    invoke-direct {v1, v2, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "AGE_31_40"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v5, v4, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_31_40:Lcom/vungle/ads/fpd/AgeRange;

    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x29

    const/16 v5, 0x32

    invoke-direct {v1, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "AGE_41_50"

    const/4 v5, 0x4

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_41_50:Lcom/vungle/ads/fpd/AgeRange;

    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x33

    const/16 v4, 0x3c

    invoke-direct {v1, v2, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "AGE_51_60"

    const/4 v4, 0x5

    invoke-direct {v0, v2, v5, v4, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_51_60:Lcom/vungle/ads/fpd/AgeRange;

    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x3d

    const/16 v5, 0x46

    invoke-direct {v1, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "AGE_61_70"

    const/4 v5, 0x6

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_61_70:Lcom/vungle/ads/fpd/AgeRange;

    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/16 v2, 0x47

    const/16 v4, 0x4b

    invoke-direct {v1, v2, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "AGE_71_75"

    const/4 v4, 0x7

    invoke-direct {v0, v2, v5, v4, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->AGE_71_75:Lcom/vungle/ads/fpd/AgeRange;

    new-instance v0, Lcom/vungle/ads/fpd/AgeRange;

    new-instance v1, Lkotlin/ranges/IntRange;

    const/high16 v2, -0x80000000

    const v5, 0x7fffffff

    invoke-direct {v1, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    const-string v2, "OTHERS"

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/vungle/ads/fpd/AgeRange;-><init>(Ljava/lang/String;IILkotlin/ranges/IntRange;)V

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->OTHERS:Lcom/vungle/ads/fpd/AgeRange;

    invoke-static {}, Lcom/vungle/ads/fpd/AgeRange;->$values()[Lcom/vungle/ads/fpd/AgeRange;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->$VALUES:[Lcom/vungle/ads/fpd/AgeRange;

    new-instance v0, Lcom/vungle/ads/fpd/AgeRange$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/fpd/AgeRange$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/fpd/AgeRange;->Companion:Lcom/vungle/ads/fpd/AgeRange$a;

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

    iput p3, p0, Lcom/vungle/ads/fpd/AgeRange;->id:I

    iput-object p4, p0, Lcom/vungle/ads/fpd/AgeRange;->range:Lkotlin/ranges/IntRange;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/fpd/AgeRange;
    .locals 1

    const-class v0, Lcom/vungle/ads/fpd/AgeRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/fpd/AgeRange;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/fpd/AgeRange;
    .locals 1

    sget-object v0, Lcom/vungle/ads/fpd/AgeRange;->$VALUES:[Lcom/vungle/ads/fpd/AgeRange;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/fpd/AgeRange;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/fpd/AgeRange;->id:I

    return v0
.end method

.method public final getRange()Lkotlin/ranges/IntRange;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/fpd/AgeRange;->range:Lkotlin/ranges/IntRange;

    return-object v0
.end method
