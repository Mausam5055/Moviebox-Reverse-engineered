.class public abstract Lvm/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lvm/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lvm/a;->h(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: consume"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lvm/a;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1}, Lvm/a;->q(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchAllMemberRights"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lvm/a;Ljava/lang/String;IIILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lvm/a;->c(Ljava/lang/String;II)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchInviteUserRewards"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lvm/a;Ljava/lang/String;Lcom/transsion/member/bean/request/InviteUserShareInfoReq;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1, p2}, Lvm/a;->e(Ljava/lang/String;Lcom/transsion/member/bean/request/InviteUserShareInfoReq;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchInviteUserShareInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e(Lvm/a;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1}, Lvm/a;->p(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchMemberDetail"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic f(Lvm/a;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1}, Lvm/a;->j(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchMemberGoods"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Lvm/a;Ljava/lang/String;Lokhttp3/RequestBody;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object p3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string p4, "application/json"

    invoke-virtual {p3, p4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    const-string p4, "{}"

    invoke-virtual {p2, p4, p3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    :cond_1
    invoke-interface {p0, p1, p2}, Lvm/a;->n(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchMemberRemind"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic h(Lvm/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/16 p2, 0x14

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p3}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lvm/a;->b(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchPointsHistory"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic i(Lvm/a;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1}, Lvm/a;->k(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchSkuList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic j(Lvm/a;JLjava/lang/String;Lokhttp3/RequestBody;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p3, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p3}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    sget-object p4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object p5, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string p6, "application/json"

    invoke-virtual {p5, p6}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p5

    const-string p6, "{}"

    invoke-virtual {p4, p6, p5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p4

    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lvm/a;->i(JLjava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: migrateVipAssets"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic k(Lvm/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, "0"

    :cond_1
    invoke-interface {p0, p1, p2}, Lvm/a;->d(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: receiveRewards"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic l(Lvm/a;Ljava/lang/String;Lcom/transsion/member/bean/request/MemberPromoCodeReq;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1, p2}, Lvm/a;->m(Ljava/lang/String;Lcom/transsion/member/bean/request/MemberPromoCodeReq;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: submitPromoCode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic m(Lvm/a;Ljava/lang/String;Lokhttp3/RequestBody;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object p3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string p4, "application/json"

    invoke-virtual {p3, p4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    const-string p4, "{}"

    invoke-virtual {p2, p4, p3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    :cond_1
    invoke-interface {p0, p1, p2}, Lvm/a;->g(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: taskCheckInSubmit"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
