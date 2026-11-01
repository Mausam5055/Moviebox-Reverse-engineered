.class public final Lcom/transsion/postdetail/layer/b;
.super Ljava/lang/Object;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Lyj/c;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:I

.field private G:Ljava/lang/String;

.field private final a:Ljava/lang/String;

.field private b:Lcom/transsion/player/orplayer/g;

.field private c:Ljava/lang/String;

.field private d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:I

.field private k:Ljava/lang/Double;

.field private l:J

.field private m:J

.field private n:J

.field private o:I

.field private p:J

.field private q:J

.field private r:Ljava/lang/Double;

.field private s:J

.field private t:Ljava/lang/Integer;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/transsion/postdetail/layer/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/b;->y:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->A:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/postdetail/layer/b;->B:I

    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->E:Ljava/lang/String;

    const-string v0, "postdetail"

    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->G:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e(Lcom/transsion/postdetail/layer/b;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/b;->d(Z)V

    return-void
.end method

.method private final f()Lyj/c;
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/b;->C:Lyj/c;

    if-nez v0, :cond_0

    sget-object v0, Lyj/a;->a:Lyj/a$a;

    const-class v1, Lyj/c;

    invoke-virtual {v0, v1}, Lyj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyj/c;

    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->C:Lyj/c;

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/b;->C:Lyj/c;

    return-object v0
.end method

.method private final q(Z)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->e:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->f:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->g:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->h:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->i:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/transsion/postdetail/layer/b;->j:I

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->l:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->m:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->n:J

    iput v2, p0, Lcom/transsion/postdetail/layer/b;->o:I

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->p:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->q:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->s:J

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/postdetail/layer/b;->B:I

    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/b;->x:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->A:Ljava/lang/String;

    return-void
.end method

.method public final a(II)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/postdetail/layer/b;->f:J

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "video_play"

    const-string v2, "addSurface"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "clickPause"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "pause"

    const-string v2, "module_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    iget-object v3, p0, Lcom/transsion/postdetail/layer/b;->G:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final c()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "clickPlay"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "play"

    const-string v2, "module_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    iget-object v3, p0, Lcom/transsion/postdetail/layer/b;->G:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final d(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lcom/transsion/postdetail/layer/b;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "TAG"

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/transsion/postdetail/layer/b;->x:Z

    if-nez v2, :cond_0

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, v0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "exitPlay, return"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v2, v0, Lcom/transsion/postdetail/layer/b;->x:Z

    if-nez v2, :cond_1

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, v0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curVideoIsApp2Background = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-boolean v1, v0, Lcom/transsion/postdetail/layer/b;->x:Z

    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const-string v6, ""

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v6

    :cond_3
    const-string v7, "post_id"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "opt_type"

    iget-object v7, v0, Lcom/transsion/postdetail/layer/b;->D:Ljava/lang/String;

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    move-object v3, v6

    :cond_5
    const-string v7, "subject_id"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->u:Ljava/lang/String;

    if-nez v3, :cond_6

    move-object v3, v6

    :cond_6
    const-string v7, "base_post_id"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getItemType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_7
    move-object v3, v6

    :cond_8
    const-string v7, "item_type"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ep"

    iget-object v7, v0, Lcom/transsion/postdetail/layer/b;->E:Ljava/lang/String;

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->v:Ljava/lang/String;

    if-nez v3, :cond_9

    move-object v3, v6

    :cond_9
    const-string v7, "base_item_type"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v7, 0x0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_a
    move-object v3, v7

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "has_resource"

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->z:Ljava/lang/String;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_b

    sget-object v3, Lhj/i;->a:Lhj/i;

    invoke-virtual {v3}, Lhj/i;->i()Ljava/lang/String;

    move-result-object v3

    :cond_b
    const-string v8, "page_from"

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getRec_ops()Ljava/lang/String;

    move-result-object v7

    :cond_c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getRec_ops()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    :cond_d
    move-object v3, v6

    :cond_e
    const-string v7, "ops"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    sget-object v3, Lko/l0;->a:Lko/l0;

    invoke-virtual {v3}, Lko/l0;->i()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->w:Ljava/lang/String;

    if-eqz v3, :cond_12

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_10

    goto :goto_2

    :cond_10
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->w:Ljava/lang/String;

    if-nez v3, :cond_11

    goto :goto_1

    :cond_11
    move-object v6, v3

    :goto_1
    const-string v3, "subpage_name"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_2
    iget v3, v0, Lcom/transsion/postdetail/layer/b;->F:I

    if-lez v3, :cond_13

    const-string v6, "subject_type"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->g:J

    cmp-long v3, v6, v4

    const-string v6, "delay"

    const-string v7, "delay_v"

    const-string v8, "is_start"

    const-string v9, "1"

    const-string v10, "0"

    if-gtz v3, :cond_17

    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/b;->x:Z

    if-eqz v3, :cond_14

    iget-wide v11, v0, Lcom/transsion/postdetail/layer/b;->n:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_14

    goto :goto_5

    :cond_14
    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v11, v0, Lcom/transsion/postdetail/layer/b;->e:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/transsion/postdetail/layer/b;->e:J

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_15
    move-object v3, v10

    :goto_3
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v0, Lcom/transsion/postdetail/layer/b;->f:J

    cmp-long v3, v7, v4

    if-lez v3, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v11, v0, Lcom/transsion/postdetail/layer/b;->f:J

    sub-long/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_16
    move-object v3, v10

    :goto_4
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_17
    :goto_5
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v11, v0, Lcom/transsion/postdetail/layer/b;->e:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_18

    iget-wide v13, v0, Lcom/transsion/postdetail/layer/b;->g:J

    cmp-long v3, v13, v4

    if-lez v3, :cond_18

    sub-long/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_18
    move-object v3, v10

    :goto_6
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v0, Lcom/transsion/postdetail/layer/b;->f:J

    cmp-long v3, v7, v4

    if-lez v3, :cond_19

    iget-wide v11, v0, Lcom/transsion/postdetail/layer/b;->g:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_19

    sub-long/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_19
    move-object v3, v10

    :goto_7
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->h:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v6, "buffer_time"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/transsion/postdetail/layer/b;->j:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "buffer_count"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->l:J

    long-to-float v3, v6

    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->s:J

    long-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v3, v6

    iget v7, v0, Lcom/transsion/postdetail/layer/b;->o:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    const-string v6, "play_complete"

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->n:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v6, "play_duration"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->q:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v6, "pause_duration"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/transsion/postdetail/layer/b;->o:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "completeCount"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->k:Ljava/lang/Double;

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    cmpl-double v3, v11, v6

    if-lez v3, :cond_1a

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->k:Ljava/lang/Double;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "redundancyRate"

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->r:Ljava/lang/Double;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    cmpl-double v3, v11, v6

    if-lez v3, :cond_1b

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->r:Ljava/lang/Double;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "poolPercentDouble"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    if-eqz v1, :cond_1c

    move-object v3, v9

    goto :goto_9

    :cond_1c
    move-object v3, v10

    :goto_9
    const-string v6, "app_to_background"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {v3}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v3

    iget-object v6, v0, Lcom/transsion/postdetail/layer/b;->A:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v9

    goto :goto_a

    :cond_1d
    move-object v3, v10

    :goto_a
    const-string v6, "is_preloaded"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "url"

    iget-object v6, v0, Lcom/transsion/postdetail/layer/b;->A:Ljava/lang/String;

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1e

    goto :goto_b

    :cond_1e
    move-object v9, v10

    :goto_b
    const-string v3, "builtin"

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->s:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_1f

    const-string v3, "total_duration"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget v3, v0, Lcom/transsion/postdetail/layer/b;->B:I

    if-ltz v3, :cond_20

    const-string v6, "position"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->t:Ljava/lang/Integer;

    if-eqz v3, :cond_21

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "error_code"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/b;->x:Z

    if-eqz v3, :cond_22

    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->n:J

    cmp-long v3, v6, v4

    if-gtz v3, :cond_22

    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/b;->y:Z

    if-nez v3, :cond_22

    return-void

    :cond_22
    if-eqz v1, :cond_23

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/transsion/postdetail/layer/b;->y:Z

    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/layer/b;->f()Lyj/c;

    move-result-object v3

    if-eqz v3, :cond_24

    iget-wide v4, v0, Lcom/transsion/postdetail/layer/b;->n:J

    invoke-interface {v3, v4, v5}, Lyj/c;->b(J)V

    :cond_24
    sget-object v12, Lhj/i;->a:Lhj/i;

    iget-object v13, v0, Lcom/transsion/postdetail/layer/b;->G:Ljava/lang/String;

    const-string v14, "video_play"

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/b;->n:J

    move-wide v15, v3

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Lhj/i;->H(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/layer/b;->q(Z)V

    return-void
.end method

.method public final g()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/b;->y:Z

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "video_play"

    const-string v3, "initView"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->i:J

    return-void
.end method

.method public final i()V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/b;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/b;->i:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/b;->h:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/transsion/postdetail/layer/b;->h:J

    iget v0, p0, Lcom/transsion/postdetail/layer/b;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/layer/b;->j:I

    iput-wide v2, p0, Lcom/transsion/postdetail/layer/b;->i:J

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    iget v0, p0, Lcom/transsion/postdetail/layer/b;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/layer/b;->o:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->l:J

    return-void
.end method

.method public final k(Lcom/transsion/player/orplayer/PlayError;)V
    .locals 1

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->t:Ljava/lang/Integer;

    return-void
.end method

.method public final l(J)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/postdetail/layer/b;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->s:J

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/b;->m:J

    sub-long v2, p1, v0

    const-wide/16 v4, 0x1

    cmp-long v4, v4, v2

    if-gtz v4, :cond_1

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/transsion/postdetail/layer/b;->n:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/postdetail/layer/b;->n:J

    :cond_1
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/b;->m:J

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/b;->l:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iput-wide p1, p0, Lcom/transsion/postdetail/layer/b;->l:J

    :cond_2
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/b;->f()Lyj/c;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/b;->n:J

    invoke-interface {p1, v0, v1}, Lyj/c;->a(J)V

    :cond_3
    return-void
.end method

.method public final m()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "video_play"

    const-string v2, "onRenderFirstFrame"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->g:J

    return-void
.end method

.method public final n()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->p:J

    return-void
.end method

.method public final o()V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/b;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/b;->p:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/b;->q:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/transsion/postdetail/layer/b;->q:J

    iput-wide v2, p0, Lcom/transsion/postdetail/layer/b;->p:J

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/postdetail/layer/b;->e(Lcom/transsion/postdetail/layer/b;ZILjava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->v:Ljava/lang/String;

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->u:Ljava/lang/String;

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pageFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->z:Ljava/lang/String;

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->G:Ljava/lang/String;

    return-void
.end method

.method public final v(Lcom/transsion/player/orplayer/g;)V
    .locals 7

    const-string v0, "orPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "setPlayer----->"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->b:Lcom/transsion/player/orplayer/g;

    return-void
.end method

.method public final w(Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/transsion/postdetail/layer/b;->B:I

    return-void
.end method

.method public final x(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "setPostData----->"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    return-void
.end method

.method public final y(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/postdetail/layer/b;->F:I

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1

    const-string v0, "subpageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->w:Ljava/lang/String;

    return-void
.end method
