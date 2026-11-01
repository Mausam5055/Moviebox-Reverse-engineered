.class public final Lcom/vungle/ads/internal/model/ConfigPayload$i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/ConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/ConfigPayload$i$b;,
        Lcom/vungle/ads/internal/model/ConfigPayload$i$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/ConfigPayload$i$b;


# instance fields
.field private final gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

.field private final iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/model/ConfigPayload$i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/ConfigPayload$i$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->Companion:Lcom/vungle/ads/internal/model/ConfigPayload$i$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;-><init>(Lcom/vungle/ads/internal/model/ConfigPayload$g;Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/ConfigPayload$g;Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    iput-object v0, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/ConfigPayload$g;Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/ConfigPayload$g;Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/model/ConfigPayload$i;-><init>(Lcom/vungle/ads/internal/model/ConfigPayload$g;Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/ConfigPayload$i;Lcom/vungle/ads/internal/model/ConfigPayload$g;Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/ConfigPayload$i;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->copy(Lcom/vungle/ads/internal/model/ConfigPayload$g;Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;)Lcom/vungle/ads/internal/model/ConfigPayload$i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getGdpr$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getIab$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/ConfigPayload$i;Le00/d;Lkotlinx/serialization/descriptors/f;)V
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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$g$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$g$a;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$a;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    invoke-interface {p1, p2, v0, v1, p0}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()Lcom/vungle/ads/internal/model/ConfigPayload$g;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    return-object v0
.end method

.method public final component2()Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    return-object v0
.end method

.method public final copy(Lcom/vungle/ads/internal/model/ConfigPayload$g;Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;)Lcom/vungle/ads/internal/model/ConfigPayload$i;
    .locals 1

    new-instance v0, Lcom/vungle/ads/internal/model/ConfigPayload$i;

    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/internal/model/ConfigPayload$i;-><init>(Lcom/vungle/ads/internal/model/ConfigPayload$g;Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/model/ConfigPayload$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/model/ConfigPayload$i;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    return-object v0
.end method

.method public final getIab()Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserPrivacy(gdpr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->gdpr:Lcom/vungle/ads/internal/model/ConfigPayload$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/ConfigPayload$i;->iab:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
