.class public final enum Lcom/vungle/ads/internal/network/HttpMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/network/HttpMethod$b;,
        Lcom/vungle/ads/internal/network/HttpMethod$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/internal/network/HttpMethod;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0087\u0001\u0018\u0000 \u00042\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0005\u0006B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vungle/ads/internal/network/HttpMethod;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Companion",
        "a",
        "b",
        "GET",
        "POST",
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

.annotation runtime Lkotlinx/serialization/f;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/internal/network/HttpMethod;

.field public static final Companion:Lcom/vungle/ads/internal/network/HttpMethod$b;

.field public static final enum GET:Lcom/vungle/ads/internal/network/HttpMethod;

.field public static final enum POST:Lcom/vungle/ads/internal/network/HttpMethod;


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/internal/network/HttpMethod;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vungle/ads/internal/network/HttpMethod;

    sget-object v1, Lcom/vungle/ads/internal/network/HttpMethod;->GET:Lcom/vungle/ads/internal/network/HttpMethod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/ads/internal/network/HttpMethod;->POST:Lcom/vungle/ads/internal/network/HttpMethod;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vungle/ads/internal/network/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/network/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/network/HttpMethod;->GET:Lcom/vungle/ads/internal/network/HttpMethod;

    new-instance v0, Lcom/vungle/ads/internal/network/HttpMethod;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/network/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/network/HttpMethod;->POST:Lcom/vungle/ads/internal/network/HttpMethod;

    invoke-static {}, Lcom/vungle/ads/internal/network/HttpMethod;->$values()[Lcom/vungle/ads/internal/network/HttpMethod;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/network/HttpMethod;->$VALUES:[Lcom/vungle/ads/internal/network/HttpMethod;

    new-instance v0, Lcom/vungle/ads/internal/network/HttpMethod$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/network/HttpMethod$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/network/HttpMethod;->Companion:Lcom/vungle/ads/internal/network/HttpMethod$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/network/HttpMethod;
    .locals 1

    const-class v0, Lcom/vungle/ads/internal/network/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/network/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/network/HttpMethod;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/network/HttpMethod;->$VALUES:[Lcom/vungle/ads/internal/network/HttpMethod;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/network/HttpMethod;

    return-object v0
.end method
