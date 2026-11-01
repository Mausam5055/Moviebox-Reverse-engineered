.class public final Lcom/transsion/player/longvideo/intercept/h0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/player/longvideo/intercept/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/player/longvideo/intercept/h0;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/intercept/h0;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/intercept/h0;->a:Lcom/transsion/player/longvideo/intercept/h0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/Subject;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/VipInfo;->getFreeEpisodeCount()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Lcom/transsion/moviedetailapi/bean/Subject;)I
    .locals 3

    const v0, 0x493e0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/VipInfo;->getRequireMemberType()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/VipInfo;->getPreviewSeconds()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v1, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/memberapi/IPremiumApi;->w()I

    move-result v0

    :cond_2
    :goto_1
    return v0
.end method

.method public final c(Lcom/transsion/moviedetailapi/bean/Subject;I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/VipInfo;->getFreeEpisodeCount()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-le p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final d(Lcom/transsion/moviedetailapi/bean/Subject;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->isMovieType()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->isTvType()Z

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final e(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/memberapi/IPremiumApi;->t()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d0

    :goto_0
    if-eqz p2, :cond_4

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p2, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/transsion/player/longvideo/member/q;->a:Lcom/transsion/player/longvideo/member/q;

    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsion/player/longvideo/member/q;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/transsion/player/longvideo/member/q;->a:Lcom/transsion/player/longvideo/member/q;

    invoke-static {v3}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/player/longvideo/member/q;->e(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object p2, v2

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3

    :cond_4
    move p2, v0

    :goto_3
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/VipInfo;->getRequireMemberType()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    if-lt p2, v1, :cond_7

    :goto_5
    move v0, v2

    :cond_7
    return v0
.end method

.method public final f(Lcom/transsion/moviedetailapi/bean/Subject;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/VipInfo;->getRequireMemberType()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method
