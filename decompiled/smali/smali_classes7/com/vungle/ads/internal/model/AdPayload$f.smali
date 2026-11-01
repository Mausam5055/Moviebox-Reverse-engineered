.class public final Lcom/vungle/ads/internal/model/AdPayload$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/AdPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/AdPayload$f$b;,
        Lcom/vungle/ads/internal/model/AdPayload$f$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/AdPayload$f$b;


# instance fields
.field private final adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

.field private final placementReferenceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload$f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/AdPayload$f$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/model/AdPayload$f;->Companion:Lcom/vungle/ads/internal/model/AdPayload$f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/vungle/ads/internal/model/AdPayload$f;-><init>(Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$c;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$c;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    iput-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$c;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/model/AdPayload$f;-><init>(Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$c;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/AdPayload$f;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$c;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/AdPayload$f;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/AdPayload$f;->copy(Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$c;)Lcom/vungle/ads/internal/model/AdPayload$f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAdMarkup$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPlacementReferenceId$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/AdPayload$f;Le00/d;Lkotlinx/serialization/descriptors/f;)V
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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lcom/vungle/ads/internal/model/AdPayload$c$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$c$a;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    invoke-interface {p1, p2, v0, v1, p0}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/vungle/ads/internal/model/AdPayload$c;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$c;)Lcom/vungle/ads/internal/model/AdPayload$f;
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload$f;

    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/internal/model/AdPayload$f;-><init>(Ljava/lang/String;Lcom/vungle/ads/internal/model/AdPayload$c;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/model/AdPayload$f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/model/AdPayload$f;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAdMarkup()Lcom/vungle/ads/internal/model/AdPayload$c;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    return-object v0
.end method

.method public final getPlacementReferenceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/AdPayload$c;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlacementAdUnit(placementReferenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->placementReferenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adMarkup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/AdPayload$f;->adMarkup:Lcom/vungle/ads/internal/model/AdPayload$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
