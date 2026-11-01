.class public final Lcom/vungle/ads/internal/util/q;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/util/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/util/q;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/q;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/util/q;->INSTANCE:Lcom/vungle/ads/internal/util/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic isInRange$default(Lcom/vungle/ads/internal/util/q;FFFILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/internal/util/q;->isInRange(FFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic isInRange$default(Lcom/vungle/ads/internal/util/q;IIIILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const p3, 0x7fffffff

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/internal/util/q;->isInRange(III)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final isInRange(FFF)Z
    .locals 1

    cmpg-float p2, p2, p1

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isInRange(III)Z
    .locals 1

    const/4 v0, 0x0

    if-gt p2, p1, :cond_0

    if-gt p1, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
