.class public final Lzr/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lzr/b;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzr/b;

    invoke-direct {v0}, Lzr/b;-><init>()V

    sput-object v0, Lzr/b;->a:Lzr/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzr/b;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getNeedPaid()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->isPaid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    return v0

    :cond_2
    if-nez p2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getNeedPaid()I

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    return v2
.end method


# virtual methods
.method public final b(Lcom/transsion/shorttv/bean/Subject;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-ne p2, v0, :cond_0

    const-string p1, "ad"

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->isPaid()I

    move-result p1

    if-ne p1, v0, :cond_1

    const-string p1, "buy"

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final c(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lzr/b;->a(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z

    move-result p1

    return p1
.end method

.method public final d(Lcom/transsion/shorttv/bean/ShortTVItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 0

    return-void
.end method

.method public final f(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 4

    const-string v0, "subject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;I)V
    .locals 3

    const-string v0, "subject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
