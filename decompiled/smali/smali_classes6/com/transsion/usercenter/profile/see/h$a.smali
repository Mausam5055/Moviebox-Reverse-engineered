.class final Lcom/transsion/usercenter/profile/see/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Llz/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/see/h;->o(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/see/h;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/see/h;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/h$a;->a:Lcom/transsion/usercenter/profile/see/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/lib/net/bean/BaseDto;)Lio/reactivex/rxjava3/core/m;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeData;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget-object v5, p0, Lcom/transsion/usercenter/profile/see/h$a;->a:Lcom/transsion/usercenter/profile/see/h;

    invoke-virtual {v3}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeData;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    check-cast v3, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeItem;

    invoke-virtual {v7}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeItem;->getSubject()Lcom/transsion/usercenter/profile/see/bean/ProfileSeeSubjectItem;

    move-result-object v8

    invoke-virtual {v7}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeItem;->getStaff()Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;

    move-result-object v7

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Subject;->getMySeeTime()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    :cond_0
    invoke-static {v5, v9, v10}, Lcom/transsion/usercenter/profile/see/h;->d(Lcom/transsion/usercenter/profile/see/h;J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Lcom/transsion/usercenter/profile/see/h;->f(Lcom/transsion/usercenter/profile/see/h;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-array v7, v2, [Ln6/a;

    aput-object v8, v7, v1

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lcom/transsion/usercenter/profile/see/h;->f(Lcom/transsion/usercenter/profile/see/h;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;

    invoke-direct {v9, v7}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;-><init>(Ljava/lang/String;)V

    new-array v7, v0, [Ln6/a;

    aput-object v9, v7, v1

    aput-object v8, v7, v2

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Staff;->getMySeeTime()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    :cond_3
    invoke-static {v5, v9, v10}, Lcom/transsion/usercenter/profile/see/h;->d(Lcom/transsion/usercenter/profile/see/h;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Lcom/transsion/usercenter/profile/see/h;->f(Lcom/transsion/usercenter/profile/see/h;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-array v8, v2, [Ln6/a;

    aput-object v7, v8, v1

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lcom/transsion/usercenter/profile/see/h;->f(Lcom/transsion/usercenter/profile/see/h;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;

    invoke-direct {v9, v8}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;-><init>(Ljava/lang/String;)V

    new-array v8, v0, [Ln6/a;

    aput-object v9, v8, v1

    aput-object v7, v8, v2

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    :goto_1
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/16 :goto_0

    :cond_6
    move-object v6, v4

    :cond_7
    if-nez v6, :cond_9

    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    new-instance v0, Lcom/tn/lib/net/bean/BaseDto;

    invoke-direct {v0}, Lcom/tn/lib/net/bean/BaseDto;-><init>()V

    new-instance v1, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeData;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v4

    :cond_a
    invoke-direct {v1, v4, v6}, Lcom/transsion/usercenter/profile/see/bean/ProfileSeeMultiItemData;-><init>(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tn/lib/net/bean/BaseDto;->setData(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/net/bean/BaseDto;->setCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/net/bean/BaseDto;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tn/lib/net/bean/BaseDto;->setReason(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/see/h$a;->a(Lcom/tn/lib/net/bean/BaseDto;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method
