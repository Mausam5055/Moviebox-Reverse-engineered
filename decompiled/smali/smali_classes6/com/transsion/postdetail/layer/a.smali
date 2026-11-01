.class public final Lcom/transsion/postdetail/layer/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LayerManager"

    iput-object v0, p0, Lcom/transsion/postdetail/layer/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/layer/a;->b:Ljava/util/List;

    return-void
.end method

.method public static final varargs synthetic a(Lcom/transsion/postdetail/layer/a;Lcom/transsion/postdetail/layer/BaseLayer;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/a;->i(Lcom/transsion/postdetail/layer/BaseLayer;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final varargs synthetic b(Lcom/transsion/postdetail/layer/a;Lvo/d;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/a;->j(Lvo/d;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final varargs synthetic c(Lcom/transsion/postdetail/layer/a;Lcom/transsion/player/orplayer/f;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/a;->k(Lcom/transsion/player/orplayer/f;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    return-void
.end method

.method private final f(Lvo/a;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/layer/a;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/a;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/postdetail/layer/BaseLayer;

    invoke-interface {p1, v3}, Lvo/a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/postdetail/layer/BaseLayer;

    :try_start_0
    invoke-interface {p1, v1}, Lvo/a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final varargs i(Lcom/transsion/postdetail/layer/BaseLayer;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/transsion/postdetail/layer/a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p2, p3

    if-ne p2, v2, :cond_3

    aget-object p2, p3, v0

    const-string p3, "null cannot be cast to non-null type com.transsion.postdetail.layer.LayerManager"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/transsion/postdetail/layer/a;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/layer/BaseLayer;->L(Lcom/transsion/postdetail/layer/a;)V

    goto :goto_0

    :cond_1
    array-length p2, p3

    if-ne p2, v1, :cond_3

    aget-object p2, p3, v0

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    aget-object p3, p3, v2

    const-string v0, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.PostSubjectItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/postdetail/layer/BaseLayer;->N(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto :goto_0

    :cond_2
    array-length p2, p3

    if-ne p2, v1, :cond_3

    aget-object p2, p3, v0

    const-string v0, "null cannot be cast to non-null type com.transsion.player.orplayer.ORPlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/transsion/player/orplayer/g;

    aget-object p3, p3, v2

    const-string v0, "null cannot be cast to non-null type com.transsion.player.ui.ORPlayerView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/postdetail/layer/BaseLayer;->M(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final varargs j(Lvo/d;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 12

    sget-object v2, Lcom/transsion/postdetail/layer/a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "null cannot be cast to non-null type android.view.View"

    const/4 v4, 0x3

    const-string v5, "null cannot be cast to non-null type com.transsion.baselib.db.download.DownloadBean"

    const-string v6, "null cannot be cast to non-null type com.transsion.postdetail.layer.local.LocalUiType"

    const-string v7, "null cannot be cast to non-null type kotlin.Boolean"

    const/4 v8, 0x2

    const-string v9, "null cannot be cast to non-null type kotlin.String"

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {p1}, Lvo/d;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->X([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v1}, Lvo/d;->j(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p1}, Lvo/d;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->X([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v1}, Lvo/d;->t(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {p1}, Lvo/d;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->X([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/transsion/videofloat/bean/FloatActionType;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/transsion/videofloat/bean/FloatActionType;

    invoke-interface {p1, v1}, Lvo/d;->e(Lcom/transsion/videofloat/bean/FloatActionType;)Z

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->X([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lvo/d;->B(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->X([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-interface {p1, v1}, Lvo/d;->o(F)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {p1}, Lvo/d;->d()V

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {p1}, Lvo/d;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v2, p3

    if-ne v2, v8, :cond_1

    aget-object v2, p3, v11

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    aget-object v1, p3, v10

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lvo/d;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    array-length v2, p3

    if-ne v2, v10, :cond_1

    aget-object v1, p3, v11

    const-string v2, "null cannot be cast to non-null type com.transsion.postdetail.layer.listener.SeriesEvent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lvo/c;

    invoke-interface {p1, v1}, Lvo/d;->C(Lvo/c;)V

    goto/16 :goto_0

    :pswitch_8
    array-length v2, p3

    if-ne v2, v8, :cond_1

    aget-object v2, p3, v11

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    aget-object v1, p3, v10

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lvo/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    array-length v2, p3

    if-ne v2, v8, :cond_1

    aget-object v2, p3, v11

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aget-object v1, p3, v10

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lvo/d;->f(ZLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-interface {p1}, Lvo/d;->g()V

    goto/16 :goto_0

    :pswitch_b
    array-length v2, p3

    if-ne v2, v10, :cond_1

    aget-object v1, p3, v11

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v1}, Lvo/d;->v(Z)V

    goto/16 :goto_0

    :pswitch_c
    invoke-interface {p1}, Lvo/d;->s()V

    goto/16 :goto_0

    :pswitch_d
    array-length v2, p3

    if-ne v2, v10, :cond_0

    aget-object v1, p3, v11

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lvo/d$a;->l(Lvo/d;Ljava/lang/String;JILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    array-length v2, p3

    if-ne v2, v8, :cond_1

    aget-object v2, p3, v11

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    aget-object v1, p3, v10

    const-string v3, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lvo/d;->i(Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_e
    array-length v2, p3

    if-ne v2, v10, :cond_1

    aget-object v1, p3, v11

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {p1, v1}, Lvo/d;->E(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto/16 :goto_0

    :pswitch_f
    array-length v2, p3

    if-ne v2, v10, :cond_1

    aget-object v1, p3, v11

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lvo/d;->x(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    array-length v2, p3

    if-ne v2, v10, :cond_1

    aget-object v1, p3, v11

    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.Int, kotlin.Int>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v1}, Lvo/d;->l(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_11
    array-length v2, p3

    if-ne v2, v10, :cond_1

    aget-object v1, p3, v11

    const-string v2, "null cannot be cast to non-null type com.transsion.subtitle.VideoSubtitleControl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-interface {p1, v1}, Lvo/d;->A(Lcom/transsion/subtitle/VideoSubtitleControl;)V

    goto/16 :goto_0

    :pswitch_12
    array-length v2, p3

    if-ne v2, v8, :cond_1

    aget-object v2, p3, v11

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aget-object v1, p3, v10

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v2, v1}, Lvo/d;->b(ZZ)V

    goto/16 :goto_0

    :pswitch_13
    invoke-interface {p1}, Lvo/d;->c()V

    goto/16 :goto_0

    :pswitch_14
    invoke-interface {p1}, Lvo/d;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lvo/d;->z()V

    goto/16 :goto_0

    :pswitch_15
    invoke-interface {p1}, Lvo/d;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lvo/d;->n()V

    goto/16 :goto_0

    :pswitch_16
    invoke-interface {p1}, Lvo/d;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lvo/d;->onViewPause()V

    goto/16 :goto_0

    :pswitch_17
    invoke-interface {p1}, Lvo/d;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lvo/d;->onViewResume()V

    goto/16 :goto_0

    :pswitch_18
    invoke-interface {p1}, Lvo/d;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lvo/d;->onBackPressed()V

    goto/16 :goto_0

    :pswitch_19
    array-length v2, p3

    if-ne v2, v10, :cond_1

    aget-object v1, p3, v11

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lvo/d;->updateTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    array-length v2, p3

    if-ne v2, v4, :cond_1

    aget-object v2, p3, v11

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    aget-object v3, p3, v10

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    aget-object v1, p3, v8

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v2, v3, v1}, Lvo/d;->k(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_1b
    array-length v2, p3

    if-ne v2, v10, :cond_1

    aget-object v1, p3, v11

    const-string v2, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.PostSubjectItem"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-interface {p1, v1}, Lvo/d;->w(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto/16 :goto_0

    :pswitch_1c
    array-length v2, p3

    if-ne v2, v10, :cond_1

    aget-object v1, p3, v11

    const-string v2, "null cannot be cast to non-null type com.transsion.postdetail.layer.listener.LayerEvent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lvo/b;

    invoke-interface {p1, v1}, Lvo/d;->D(Lvo/b;)V

    goto/16 :goto_0

    :pswitch_1d
    array-length v2, p3

    if-ne v2, v10, :cond_1

    aget-object v1, p3, v11

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/postdetail/layer/local/LocalUiType;

    invoke-interface {p1, v1}, Lvo/d;->a(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    goto/16 :goto_0

    :pswitch_1e
    array-length v2, p3

    if-ne v2, v10, :cond_1

    aget-object v1, p3, v11

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/postdetail/layer/local/LocalUiType;

    invoke-interface {p1, v1}, Lvo/d;->m(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    goto/16 :goto_0

    :pswitch_1f
    array-length v2, p3

    if-ne v2, v8, :cond_1

    aget-object v2, p3, v11

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, p3, v10

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lvo/d;->q(II)V

    goto :goto_0

    :pswitch_20
    array-length v2, p3

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    aget-object v2, p3, v11

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    aget-object v3, p3, v10

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    aget-object v5, p3, v8

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    aget-object v4, p3, v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v6, 0x4

    aget-object v1, p3, v6

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, p1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lvo/d;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :pswitch_21
    array-length v2, p3

    if-ne v2, v8, :cond_1

    aget-object v2, p3, v11

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    aget-object v1, p3, v10

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/postdetail/layer/local/LocalUiType;

    invoke-interface {p1, v2, v1}, Lvo/d;->r(Landroid/view/View;Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    goto :goto_0

    :pswitch_22
    array-length v2, p3

    if-ne v2, v8, :cond_1

    aget-object v2, p3, v11

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    aget-object v1, p3, v10

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v2, v1}, Lvo/d;->y(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final varargs k(Lcom/transsion/player/orplayer/f;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 6

    sget-object v0, Lcom/transsion/postdetail/layer/a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->onPlayerReset()V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->onLoopingStart()V

    goto :goto_0

    :pswitch_2
    array-length p2, p3

    if-ne p2, v2, :cond_0

    aget-object p2, p3, v1

    const-string p3, "null cannot be cast to non-null type com.transsion.player.orplayer.PlayError"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/transsion/player/orplayer/PlayError;

    invoke-static {p1, p2, v3, v0, v3}, Lcom/transsion/player/orplayer/f$a;->r(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/PlayError;Lao/e;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    array-length p2, p3

    if-ne p2, v2, :cond_0

    aget-object p2, p3, v1

    const-string p3, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/player/orplayer/f$a;->z(Lcom/transsion/player/orplayer/f;JLao/e;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v3, v2, v3}, Lcom/transsion/player/orplayer/f$a;->G(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v3, v2, v3}, Lcom/transsion/player/orplayer/f$a;->J(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v3, v2, v3}, Lcom/transsion/player/orplayer/f$a;->l(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v3, v2, v3}, Lcom/transsion/player/orplayer/f$a;->j(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    array-length p2, p3

    if-ne p2, v0, :cond_0

    aget-object p2, p3, v1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p3, p3, v2

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onVideoSizeChanged(II)V

    goto :goto_0

    :pswitch_9
    invoke-static {p1, v3, v2, v3}, Lcom/transsion/player/orplayer/f$a;->f(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_a
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->onRenderFirstFrame()V

    goto :goto_0

    :pswitch_b
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->initPlayer()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final d(Lcom/transsion/postdetail/layer/BaseLayer;)V
    .locals 7

    const-string v0, "layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already add"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs e(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "flag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/postdetail/layer/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/postdetail/layer/a$b;-><init>(Lcom/transsion/postdetail/layer/a;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/a;->f(Lvo/a;)V

    return-void
.end method

.method public final varargs g(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "flag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/postdetail/layer/a$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/postdetail/layer/a$c;-><init>(Lcom/transsion/postdetail/layer/a;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/a;->f(Lvo/a;)V

    return-void
.end method

.method public final varargs h(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "flag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/postdetail/layer/a$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/postdetail/layer/a$d;-><init>(Lcom/transsion/postdetail/layer/a;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/a;->f(Lvo/a;)V

    return-void
.end method
