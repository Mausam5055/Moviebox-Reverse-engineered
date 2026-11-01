.class public final Lcom/vungle/ads/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/y$a;
    }
.end annotation


# static fields
.field public static final BANNER:Lcom/vungle/ads/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final BANNER_LEADERBOARD:Lcom/vungle/ads/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final BANNER_SHORT:Lcom/vungle/ads/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final Companion:Lcom/vungle/ads/y$a;

.field public static final MREC:Lcom/vungle/ads/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private final height:I

.field private isAdaptiveHeight:Z

.field private isAdaptiveWidth:Z

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vungle/ads/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    new-instance v0, Lcom/vungle/ads/y;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/y;-><init>(II)V

    sput-object v0, Lcom/vungle/ads/y;->BANNER:Lcom/vungle/ads/y;

    new-instance v0, Lcom/vungle/ads/y;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/y;-><init>(II)V

    sput-object v0, Lcom/vungle/ads/y;->BANNER_SHORT:Lcom/vungle/ads/y;

    new-instance v0, Lcom/vungle/ads/y;

    const/16 v2, 0x2d8

    const/16 v3, 0x5a

    invoke-direct {v0, v2, v3}, Lcom/vungle/ads/y;-><init>(II)V

    sput-object v0, Lcom/vungle/ads/y;->BANNER_LEADERBOARD:Lcom/vungle/ads/y;

    new-instance v0, Lcom/vungle/ads/y;

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/y;-><init>(II)V

    sput-object v0, Lcom/vungle/ads/y;->MREC:Lcom/vungle/ads/y;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vungle/ads/y;->width:I

    iput p2, p0, Lcom/vungle/ads/y;->height:I

    return-void
.end method

.method public static final getAdSizeWithWidth(Landroid/content/Context;I)Lcom/vungle/ads/y;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/y$a;->getAdSizeWithWidth(Landroid/content/Context;I)Lcom/vungle/ads/y;

    move-result-object p0

    return-object p0
.end method

.method public static final getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/y$a;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;

    move-result-object p0

    return-object p0
.end method

.method public static final getValidAdSizeFromSize(IILjava/lang/String;)Lcom/vungle/ads/y;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vungle/ads/y$a;->getValidAdSizeFromSize(IILjava/lang/String;)Lcom/vungle/ads/y;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/y;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/y;->width:I

    return v0
.end method

.method public final isAdaptiveHeight$vungle_ads_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/y;->isAdaptiveHeight:Z

    return v0
.end method

.method public final isAdaptiveWidth$vungle_ads_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/y;->isAdaptiveWidth:Z

    return v0
.end method

.method public final isValidSize$vungle_ads_release()Z
    .locals 1

    iget v0, p0, Lcom/vungle/ads/y;->width:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/vungle/ads/y;->height:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setAdaptiveHeight$vungle_ads_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vungle/ads/y;->isAdaptiveHeight:Z

    return-void
.end method

.method public final setAdaptiveWidth$vungle_ads_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vungle/ads/y;->isAdaptiveWidth:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VungleAdSize(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/y;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/y;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
