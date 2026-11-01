.class public final Lcom/vungle/ads/internal/model/AdPayload$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/AdPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/model/AdPayload$e;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/b;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/model/AdPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$a;

    return-object v0
.end method
