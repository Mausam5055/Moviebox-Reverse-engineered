.class public final Lcom/vungle/ads/internal/model/c$j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/c$j$b;,
        Lcom/vungle/ads/internal/model/c$j$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/c$j$b;


# instance fields
.field private ccpa:Lcom/vungle/ads/internal/model/c$c;

.field private coppa:Lcom/vungle/ads/internal/model/c$d;

.field private fpd:Lez/b;

.field private gdpr:Lcom/vungle/ads/internal/model/c$f;

.field private iab:Lcom/vungle/ads/internal/model/c$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/model/c$j$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/c$j$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/model/c$j;->Companion:Lcom/vungle/ads/internal/model/c$j$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/vungle/ads/internal/model/c$j;-><init>(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lez/b;Lcom/vungle/ads/internal/model/c$g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lez/b;Lcom/vungle/ads/internal/model/c$g;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    const/4 v0, 0x0

    if-nez p7, :cond_0

    iput-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    :goto_3
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    iput-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    :goto_4
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lez/b;Lcom/vungle/ads/internal/model/c$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    iput-object p2, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    iput-object p4, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    iput-object p5, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lez/b;Lcom/vungle/ads/internal/model/c$g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v0

    goto :goto_4

    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    invoke-direct/range {p1 .. p6}, Lcom/vungle/ads/internal/model/c$j;-><init>(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lez/b;Lcom/vungle/ads/internal/model/c$g;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/c$j;Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lez/b;Lcom/vungle/ads/internal/model/c$g;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/c$j;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/vungle/ads/internal/model/c$j;->copy(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lez/b;Lcom/vungle/ads/internal/model/c$g;)Lcom/vungle/ads/internal/model/c$j;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/c$j;Le00/d;Lkotlinx/serialization/descriptors/f;)V
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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/vungle/ads/internal/model/c$f$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$f$a;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lcom/vungle/ads/internal/model/c$c$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$c$a;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lcom/vungle/ads/internal/model/c$d$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$d$a;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lez/b$a;->INSTANCE:Lez/b$a;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_7
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    if-eqz v1, :cond_9

    :goto_4
    sget-object v1, Lcom/vungle/ads/internal/model/c$g$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$g$a;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    invoke-interface {p1, p2, v0, v1, p0}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public final component1()Lcom/vungle/ads/internal/model/c$f;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    return-object v0
.end method

.method public final component2()Lcom/vungle/ads/internal/model/c$c;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    return-object v0
.end method

.method public final component3()Lcom/vungle/ads/internal/model/c$d;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    return-object v0
.end method

.method public final component4()Lez/b;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    return-object v0
.end method

.method public final component5()Lcom/vungle/ads/internal/model/c$g;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    return-object v0
.end method

.method public final copy(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lez/b;Lcom/vungle/ads/internal/model/c$g;)Lcom/vungle/ads/internal/model/c$j;
    .locals 7

    new-instance v6, Lcom/vungle/ads/internal/model/c$j;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/model/c$j;-><init>(Lcom/vungle/ads/internal/model/c$f;Lcom/vungle/ads/internal/model/c$c;Lcom/vungle/ads/internal/model/c$d;Lez/b;Lcom/vungle/ads/internal/model/c$g;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/model/c$j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/model/c$j;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCcpa()Lcom/vungle/ads/internal/model/c$c;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    return-object v0
.end method

.method public final getCoppa()Lcom/vungle/ads/internal/model/c$d;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    return-object v0
.end method

.method public final getFpd()Lez/b;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    return-object v0
.end method

.method public final getGdpr()Lcom/vungle/ads/internal/model/c$f;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    return-object v0
.end method

.method public final getIab()Lcom/vungle/ads/internal/model/c$g;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/c$f;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/c$c;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/c$d;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/c$g;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCcpa(Lcom/vungle/ads/internal/model/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    return-void
.end method

.method public final setCoppa(Lcom/vungle/ads/internal/model/c$d;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    return-void
.end method

.method public final setFpd(Lez/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    return-void
.end method

.method public final setGdpr(Lcom/vungle/ads/internal/model/c$f;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    return-void
.end method

.method public final setIab(Lcom/vungle/ads/internal/model/c$g;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User(gdpr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->gdpr:Lcom/vungle/ads/internal/model/c$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ccpa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->ccpa:Lcom/vungle/ads/internal/model/c$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coppa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->coppa:Lcom/vungle/ads/internal/model/c$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fpd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->fpd:Lez/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c$j;->iab:Lcom/vungle/ads/internal/model/c$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
