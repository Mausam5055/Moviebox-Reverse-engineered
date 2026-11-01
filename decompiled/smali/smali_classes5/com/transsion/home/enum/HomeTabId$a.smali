.class public final Lcom/transsion/home/enum/HomeTabId$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/enum/HomeTabId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/enum/HomeTabId$a;-><init>()V

    return-void
.end method

.method private final c()I
    .locals 1

    sget-object v0, Lak/g;->a:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Kids_Education:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Education:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Education:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {}, Lcom/transsion/home/enum/HomeTabId;->access$getEducationList$cp()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Kids_Animation:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Animation:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final d()I
    .locals 1

    sget-object v0, Lak/g;->a:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Kids_Movie:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Movie:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Movie:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final e()I
    .locals 1

    sget-object v0, Lak/g;->a:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Music:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->MusicOperate:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final f()I
    .locals 1

    sget-object v0, Lak/g;->a:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_TVShow:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->TVShow:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final g()I
    .locals 1

    sget-object v0, Lak/g;->a:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Trending:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v0}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final h(Ljava/lang/Integer;Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    sget-object p2, Lcom/transsion/home/enum/HomeTabId;->Education:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {p2}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p2, :cond_2

    :goto_0
    invoke-static {}, Lcom/transsion/home/enum/HomeTabId;->access$getEducationList$cp()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/home/enum/HomeTabId$a;->c()I

    move-result p2

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p2, :cond_6

    :goto_2
    invoke-static {}, Lcom/transsion/home/enum/HomeTabId;->access$getEducationList$cp()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :cond_6
    :goto_3
    return v0
.end method
