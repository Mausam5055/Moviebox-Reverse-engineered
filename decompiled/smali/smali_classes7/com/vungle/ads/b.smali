.class public Lcom/vungle/ads/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/b$a;
    }
.end annotation


# static fields
.field public static final AUTO_ROTATE:I = 0x2

.field public static final Companion:Lcom/vungle/ads/b$a;

.field public static final IMMEDIATE_BACK:I = 0x2

.field public static final LANDSCAPE:I = 0x1

.field public static final PORTRAIT:I = 0x0

.field private static final WATERMARK:Ljava/lang/String; = "WATERMARK"


# instance fields
.field private adOrientation:I

.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private settings:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/b;->Companion:Lcom/vungle/ads/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/b;->extras:Ljava/util/Map;

    const/4 v0, 0x2

    iput v0, p0, Lcom/vungle/ads/b;->adOrientation:I

    return-void
.end method

.method public static synthetic getAdOrientation$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getAdOrientation()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/b;->adOrientation:I

    return v0
.end method

.method public final getSettings()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/b;->settings:I

    return v0
.end method

.method public final getWatermark$vungle_ads_release()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/b;->extras:Ljava/util/Map;

    const-string v1, "WATERMARK"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final setAdOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/b;->adOrientation:I

    return-void
.end method

.method public final setBackButtonImmediatelyEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/vungle/ads/b;->settings:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/vungle/ads/b;->settings:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    iput p1, p0, Lcom/vungle/ads/b;->settings:I

    return-void
.end method

.method public final setWatermark(Ljava/lang/String;)V
    .locals 2

    const-string v0, "watermark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/b;->extras:Ljava/util/Map;

    const-string v1, "WATERMARK"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
