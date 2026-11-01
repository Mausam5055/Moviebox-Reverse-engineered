.class public abstract Lcom/transsion/mbwidget/data/c;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/util/List;)Lcom/transsion/mbwidget/data/ServerMatchItem;
    .locals 5

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/mbwidget/data/ServerMatchItem;

    sget-object v4, Lcom/transsion/mbwidget/data/MatchStatus;->Companion:Lcom/transsion/mbwidget/data/MatchStatus$a;

    invoke-virtual {v3}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/mbwidget/data/MatchStatus$a;->a(Ljava/lang/String;)Lcom/transsion/mbwidget/data/MatchStatus;

    move-result-object v3

    sget-object v4, Lcom/transsion/mbwidget/data/MatchStatus;->NOT_START:Lcom/transsion/mbwidget/data/MatchStatus;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/transsion/mbwidget/data/ServerMatchItem;

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/mbwidget/data/ServerMatchItem;

    sget-object v3, Lcom/transsion/mbwidget/data/MatchStatus;->Companion:Lcom/transsion/mbwidget/data/MatchStatus$a;

    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsion/mbwidget/data/MatchStatus$a;->a(Ljava/lang/String;)Lcom/transsion/mbwidget/data/MatchStatus;

    move-result-object v2

    sget-object v3, Lcom/transsion/mbwidget/data/MatchStatus;->ING:Lcom/transsion/mbwidget/data/MatchStatus;

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_6
    move-object v0, v1

    :goto_1
    check-cast v0, Lcom/transsion/mbwidget/data/ServerMatchItem;

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    return-object v1
.end method

.method public static final b(Lcom/transsion/mbwidget/data/ServerMatchItem;)Lcom/transsion/mbwidget/data/SportMatch;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/mbwidget/data/SportType;->Companion:Lcom/transsion/mbwidget/data/SportType$a;

    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/mbwidget/data/SportType$a;->a(Ljava/lang/String;)Lcom/transsion/mbwidget/data/SportType;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getTeam1()Lcom/transsion/mbwidget/data/ServerTeam;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getTeam2()Lcom/transsion/mbwidget/data/ServerTeam;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/transsion/mbwidget/data/ServerTeam;->getAbbreviation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {v3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v3

    goto :goto_0

    :cond_3
    move-object v5, v0

    :goto_0
    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/ServerTeam;->getAbbreviation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {v3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    move-object v7, v3

    goto :goto_1

    :cond_5
    move-object v7, v0

    :goto_1
    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Lcom/transsion/mbwidget/data/SportMatch;

    invoke-virtual {v1}, Lcom/transsion/mbwidget/data/ServerTeam;->getAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/transsion/mbwidget/data/ServerTeam;->getAvatar()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getStartTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_2
    move-wide v9, v1

    goto :goto_3

    :cond_8
    const-wide/16 v1, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getDeeplink()Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lcom/transsion/mbwidget/data/MatchStatus;->Companion:Lcom/transsion/mbwidget/data/MatchStatus$a;

    invoke-virtual {p0}, Lcom/transsion/mbwidget/data/ServerMatchItem;->getStatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/mbwidget/data/MatchStatus$a;->a(Ljava/lang/String;)Lcom/transsion/mbwidget/data/MatchStatus;

    move-result-object v12

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/transsion/mbwidget/data/SportMatch;-><init>(Ljava/lang/String;Lcom/transsion/mbwidget/data/SportType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/transsion/mbwidget/data/MatchStatus;)V

    :cond_9
    :goto_4
    return-object v0
.end method
