.class public final Lcom/transsion/home/fragment/filter/UGCFilterFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lhl/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/filter/UGCFilterFragment;->k1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$c;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 9

    iget-object p4, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$c;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p4}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->H0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lcom/transsion/home/adapter/filter/a;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s0()Z

    move-result p4

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sub-int/2addr p1, v1

    iget-object p4, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$c;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p4}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->H0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lcom/transsion/home/adapter/filter/a;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    :cond_1
    if-ltz p1, :cond_19

    if-ge p1, v0, :cond_19

    iget-object p4, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$c;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p4}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->H0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lcom/transsion/home/adapter/filter/a;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/home/bean/UGCFilterVideoItem;

    goto :goto_1

    :cond_2
    move-object p4, v0

    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "browse_duration"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "module_name"

    const-string p3, "item"

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$c;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->L0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lcom/transsion/home/bean/ugc/UGCFilterResponse;

    move-result-object p2

    const-string p3, ""

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/transsion/home/bean/ugc/UGCFilterResponse;->getItems()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_b

    check-cast p2, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$c;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v3, p3

    move-object v4, v3

    move-object v5, v4

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/home/bean/ugc/UGCFilterItem;

    invoke-virtual {v6}, Lcom/transsion/home/bean/ugc/UGCFilterItem;->getCategoryId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->P0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_4
    move-object v8, v0

    :goto_3
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/transsion/home/bean/ugc/UGCFilterItem;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v3, p3

    :cond_5
    invoke-virtual {v6}, Lcom/transsion/home/bean/ugc/UGCFilterItem;->getCategoryId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->P0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_6
    move-object v8, v0

    :goto_4
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lcom/transsion/home/bean/ugc/UGCFilterItem;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, p3

    goto :goto_2

    :cond_7
    invoke-static {v2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->Q0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_8
    move-object v8, v0

    :goto_5
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v6}, Lcom/transsion/home/bean/ugc/UGCFilterItem;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, p3

    goto :goto_2

    :cond_9
    invoke-static {v2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->R0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_a
    move-object v8, v0

    :goto_6
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/transsion/home/bean/ugc/UGCFilterItem;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, p3

    goto :goto_2

    :cond_b
    move-object v3, p3

    move-object v4, v3

    move-object v5, v4

    :cond_c
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$c;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    const-string v2, "categoryLve2"

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "categoryLve3"

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "categoryLve4"

    invoke-virtual {p2, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->O0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move-object v2, p3

    :cond_d
    const-string v3, "grade"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->J0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;->getApiValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sort"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "rank_category"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$c;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->G0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_e

    move-object p2, p3

    :cond_e
    const-string v0, "from_opt_id"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$c;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    sget v0, Lcom/transsion/home/R$string;->filter:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "title"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_f

    invoke-virtual {p4}, Lcom/transsion/home/bean/UGCFilterVideoItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_10

    :cond_f
    move-object p2, p3

    :cond_10
    const-string v0, "belong_to_collection_id"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_11

    invoke-virtual {p4}, Lcom/transsion/home/bean/UGCFilterVideoItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_13

    :cond_11
    if-eqz p4, :cond_12

    invoke-virtual {p4}, Lcom/transsion/home/bean/UGCFilterVideoItem;->getVideoId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_13

    :cond_12
    move-object p2, p3

    :cond_13
    const-string v0, "content_id"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_14

    invoke-virtual {p4}, Lcom/transsion/home/bean/UGCFilterVideoItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    move-result-object p2

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p2

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_15

    :cond_14
    move-object p2, p3

    :cond_15
    const-string v0, "refer_subject_id"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "content_type"

    const-string v0, "ugc_video"

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "position"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_17

    invoke-virtual {p4}, Lcom/transsion/home/bean/UGCFilterVideoItem;->getOps()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_7

    :cond_16
    move-object p3, p1

    goto :goto_8

    :cond_17
    :goto_7
    if-eqz p4, :cond_18

    invoke-virtual {p4}, Lcom/transsion/home/bean/UGCFilterVideoItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    :cond_18
    :goto_8
    const-string p1, "ops"

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string p2, "/home/ugc_filter"

    invoke-virtual {p1, p2, v1}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_19
    return-void
.end method
