.class public final Lcom/vungle/ads/internal/model/AdPayload$i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/AdPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/AdPayload$i$b;,
        Lcom/vungle/ads/internal/model/AdPayload$i$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/AdPayload$i$b;


# instance fields
.field private final om:Lcom/vungle/ads/internal/model/AdPayload$j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload$i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/AdPayload$i$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdPayload$i;->Companion:Lcom/vungle/ads/internal/model/AdPayload$i$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/vungle/ads/internal/model/AdPayload$i;-><init>(Lcom/vungle/ads/internal/model/AdPayload$j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/AdPayload$j;Lkotlinx/serialization/internal/w1;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/AdPayload$j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/AdPayload$j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/model/AdPayload$i;-><init>(Lcom/vungle/ads/internal/model/AdPayload$j;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/AdPayload$i;Lcom/vungle/ads/internal/model/AdPayload$j;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/AdPayload$i;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/AdPayload$i;->copy(Lcom/vungle/ads/internal/model/AdPayload$j;)Lcom/vungle/ads/internal/model/AdPayload$i;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/AdPayload$i;Le00/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 2
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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/vungle/ads/internal/model/AdPayload$j$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$j$a;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    invoke-interface {p1, p2, v0, v1, p0}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final component1()Lcom/vungle/ads/internal/model/AdPayload$j;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    return-object v0
.end method

.method public final copy(Lcom/vungle/ads/internal/model/AdPayload$j;)Lcom/vungle/ads/internal/model/AdPayload$i;
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload$i;

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/model/AdPayload$i;-><init>(Lcom/vungle/ads/internal/model/AdPayload$j;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/model/AdPayload$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/model/AdPayload$i;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getOm()Lcom/vungle/ads/internal/model/AdPayload$j;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload$j;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewAbility(om="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$i;->om:Lcom/vungle/ads/internal/model/AdPayload$j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
