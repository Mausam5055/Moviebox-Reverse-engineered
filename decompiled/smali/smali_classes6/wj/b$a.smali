.class public final Lwj/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwj/b;
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

    invoke-direct {p0}, Lwj/b$a;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/Map;Ljava/lang/String;)Lcom/transsion/baselib/report/recent_event/ActionEvent;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "module_name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "group_id"

    const-string v6, "subject_id"

    const-string v7, "post_id"

    const/4 v8, 0x0

    if-nez v4, :cond_2

    invoke-static {}, Lwj/b;->b()Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lwj/b;->c()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_0
    move v11, v8

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/transsion/baselib/report/recent_event/ActionEvent;

    invoke-static {}, Lwj/b;->b()Ljava/util/HashMap;

    move-result-object v2

    if-nez v3, :cond_1

    const-string v3, "0"

    :cond_1
    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v10

    const/16 v17, 0x60

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Lcom/transsion/baselib/report/recent_event/ActionEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_2
    const-string v3, "Trending"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lwj/b;->c()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_3
    move v11, v8

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/transsion/baselib/report/recent_event/ActionEvent;

    const/16 v17, 0x60

    const/16 v18, 0x0

    const/4 v10, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Lcom/transsion/baselib/report/recent_event/ActionEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private final b(Ljava/util/Map;Ljava/lang/String;)Lcom/transsion/baselib/report/recent_event/ActionEvent;
    .locals 12

    const-string v0, "postdetail"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lwj/b;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    move v4, v1

    const-string p2, "post_id"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "subject_id"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "group_id"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance p1, Lcom/transsion/baselib/report/recent_event/ActionEvent;

    const/16 v10, 0x60

    const/4 v11, 0x0

    const/16 v3, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lcom/transsion/baselib/report/recent_event/ActionEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_1
    const-string p1, "searchpage"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lwj/b;->c()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    move v4, v1

    new-instance p1, Lcom/transsion/baselib/report/recent_event/ActionEvent;

    const/16 v10, 0x60

    const/4 v11, 0x0

    const/16 v3, 0x13

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lcom/transsion/baselib/report/recent_event/ActionEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private final c(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/transsion/baselib/report/recent_event/ActionEvent;
    .locals 10

    invoke-static {}, Lwj/b;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lwj/b;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    move v4, p3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    const-string p3, "post_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p3}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p3, "subject_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p3}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p3, "group_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p3}, Lwj/b$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p3, "play_duration"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    move v8, p3

    goto :goto_1

    :cond_1
    move v8, v0

    :goto_1
    const-string p3, "completeCount"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    move v9, v0

    invoke-static {}, Lwj/b;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance v1, Lcom/transsion/baselib/report/recent_event/ActionEvent;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/transsion/baselib/report/recent_event/ActionEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    return-object v1
.end method

.method private final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string v0, "pageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "click"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p1}, Lwj/b$a;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/transsion/baselib/report/recent_event/ActionEvent;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v0, "pt"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, p1}, Lwj/b$a;->b(Ljava/util/Map;Ljava/lang/String;)Lcom/transsion/baselib/report/recent_event/ActionEvent;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string v0, "video_play"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "audio_play"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p2, p3, p1}, Lwj/b$a;->c(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/transsion/baselib/report/recent_event/ActionEvent;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    invoke-static {}, Lwj/b;->d()Lwj/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lwj/a;->offer(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final e()Ljava/util/Queue;
    .locals 1

    invoke-static {}, Lwj/b;->d()Lwj/a;

    move-result-object v0

    return-object v0
.end method
