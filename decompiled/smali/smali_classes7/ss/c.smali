.class public final Lss/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/f;


# instance fields
.field private A:I

.field private B:Lcom/transsion/shorttv/bean/Subject;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:Z

.field private H:Ljava/lang/String;

.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

.field private final c:Ljava/lang/String;

.field private d:Lcom/transsion/player/orplayer/g;

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:I

.field private k:J

.field private l:J

.field private m:J

.field private n:I

.field private o:J

.field private p:J

.field private q:J

.field private r:Ljava/lang/Integer;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/c;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lss/c;->b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const-class p1, Lss/c;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lss/c;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lss/c;->v:Z

    const-string p1, ""

    iput-object p1, p0, Lss/c;->w:Ljava/lang/String;

    iput-object p1, p0, Lss/c;->x:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lss/c;->y:I

    iput-object p1, p0, Lss/c;->C:Ljava/lang/String;

    iput-object p1, p0, Lss/c;->D:Ljava/lang/String;

    const-string p1, "postdetail"

    iput-object p1, p0, Lss/c;->H:Ljava/lang/String;

    return-void
.end method

.method public static synthetic f(Lss/c;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lss/c;->d(Z)V

    return-void
.end method

.method private final i(Z)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lss/c;->e:J

    iput-wide v0, p0, Lss/c;->f:J

    iput-wide v0, p0, Lss/c;->g:J

    iput-wide v0, p0, Lss/c;->h:J

    iput-wide v0, p0, Lss/c;->i:J

    const/4 v2, 0x0

    iput v2, p0, Lss/c;->j:I

    iput-wide v0, p0, Lss/c;->k:J

    iput-wide v0, p0, Lss/c;->l:J

    iput-wide v0, p0, Lss/c;->m:J

    iput v2, p0, Lss/c;->n:I

    iput-wide v0, p0, Lss/c;->o:J

    iput-wide v0, p0, Lss/c;->p:J

    iput-wide v0, p0, Lss/c;->q:J

    const/4 v0, 0x0

    iput-object v0, p0, Lss/c;->r:Ljava/lang/Integer;

    iput-boolean v2, p0, Lss/c;->G:Z

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lss/c;->y:I

    iput-boolean v2, p0, Lss/c;->u:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lss/c;->f:J

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

    iget-object v1, p0, Lss/c;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "clickPause"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "pause"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content_type"

    const-string v2, "ugc_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    iget-object v2, p0, Lss/c;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final c()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lss/c;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "clickPlay"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "play"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content_type"

    const-string v2, "ugc_video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    iget-object v2, p0, Lss/c;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public final d(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lss/c;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "TAG"

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lss/c;->u:Z

    if-nez v2, :cond_0

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, v0, Lss/c;->c:Ljava/lang/String;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "exitPlay, return"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v2, v0, Lss/c;->u:Z

    if-nez v2, :cond_1

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, v0, Lss/c;->c:Ljava/lang/String;

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

    iput-boolean v1, v0, Lss/c;->u:Z

    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "opt_type"

    iget-object v6, v0, Lss/c;->C:Ljava/lang/String;

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lss/c;->B:Lcom/transsion/shorttv/bean/Subject;

    const-string v6, ""

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v6

    :cond_3
    const-string v7, "subject_id"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lss/c;->s:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v3, v6

    :cond_4
    const-string v7, "base_post_id"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "item_type"

    const-string v7, "7"

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ep"

    iget-object v7, v0, Lss/c;->D:Ljava/lang/String;

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lss/c;->t:Ljava/lang/String;

    if-nez v3, :cond_5

    move-object v3, v6

    :cond_5
    const-string v7, "base_item_type"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lss/c;->B:Lcom/transsion/shorttv/bean/Subject;

    const/4 v7, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_6
    move-object v3, v7

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "has_resource"

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lss/c;->w:Ljava/lang/String;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_7

    sget-object v3, Lhj/i;->a:Lhj/i;

    invoke-virtual {v3}, Lhj/i;->i()Ljava/lang/String;

    move-result-object v3

    :cond_7
    const-string v8, "page_from"

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lss/c;->B:Lcom/transsion/shorttv/bean/Subject;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v7

    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v0, Lss/c;->B:Lcom/transsion/shorttv/bean/Subject;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    move-object v6, v3

    :cond_a
    :goto_1
    const-string v3, "ops"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget v3, v0, Lss/c;->E:I

    if-lez v3, :cond_c

    const-string v6, "subject_type"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-wide v6, v0, Lss/c;->g:J

    cmp-long v3, v6, v4

    const-string v6, "delay"

    const-string v7, "delay_v"

    const-string v8, "is_start"

    const-string v9, "1"

    const-string v10, "0"

    if-gtz v3, :cond_10

    iget-boolean v3, v0, Lss/c;->u:Z

    if-eqz v3, :cond_d

    iget-wide v11, v0, Lss/c;->m:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_d

    goto :goto_4

    :cond_d
    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v11, v0, Lss/c;->e:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v0, Lss/c;->e:J

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_e
    move-object v3, v10

    :goto_2
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v0, Lss/c;->f:J

    cmp-long v3, v7, v4

    if-lez v3, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v11, v0, Lss/c;->f:J

    sub-long/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_f
    move-object v3, v10

    :goto_3
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_10
    :goto_4
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v11, v0, Lss/c;->e:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_11

    iget-wide v13, v0, Lss/c;->g:J

    cmp-long v3, v13, v4

    if-lez v3, :cond_11

    sub-long/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_11
    move-object v3, v10

    :goto_5
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v0, Lss/c;->f:J

    cmp-long v3, v7, v4

    if-lez v3, :cond_12

    iget-wide v11, v0, Lss/c;->g:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_12

    sub-long/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_12
    move-object v3, v10

    :goto_6
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lss/c;->h:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v6, "buffer_time"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lss/c;->j:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "buffer_count"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lss/c;->k:J

    long-to-float v3, v6

    iget-wide v6, v0, Lss/c;->q:J

    long-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v3, v6

    iget v7, v0, Lss/c;->n:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    const-string v6, "play_complete"

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lss/c;->m:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v6, "play_duration"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lss/c;->p:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v6, "pause_duration"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lss/c;->n:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "completeCount"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    if-eqz v1, :cond_13

    move-object v3, v9

    goto :goto_8

    :cond_13
    move-object v3, v10

    :goto_8
    const-string v6, "app_to_background"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "url"

    iget-object v6, v0, Lss/c;->x:Ljava/lang/String;

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lss/c;->F:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "download_status"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lss/c;->q:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_14

    const-string v3, "total_duration"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget v3, v0, Lss/c;->y:I

    if-ltz v3, :cond_15

    const-string v6, "position"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const-string v3, "player_type"

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lss/c;->r:Ljava/lang/Integer;

    if-eqz v3, :cond_16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "error_code"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget v3, v0, Lss/c;->F:I

    if-nez v3, :cond_19

    iget-wide v6, v0, Lss/c;->g:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_17

    iget-wide v11, v0, Lss/c;->e:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_17

    sub-long/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_17
    iget-wide v6, v0, Lss/c;->e:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v11, v0, Lss/c;->e:J

    sub-long/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_18
    move-object v3, v10

    :goto_9
    const-string v6, "delay_net_source"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-boolean v3, v0, Lss/c;->G:Z

    if-eqz v3, :cond_1a

    goto :goto_a

    :cond_1a
    move-object v9, v10

    :goto_a
    const-string v3, "is_first_play"

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v0, Lss/c;->u:Z

    if-eqz v3, :cond_1b

    iget-wide v6, v0, Lss/c;->m:J

    cmp-long v3, v6, v4

    if-gtz v3, :cond_1b

    iget-boolean v3, v0, Lss/c;->v:Z

    if-nez v3, :cond_1b

    return-void

    :cond_1b
    if-eqz v1, :cond_1c

    const/4 v3, 0x0

    iput-boolean v3, v0, Lss/c;->v:Z

    :cond_1c
    iget-object v3, v0, Lss/c;->b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D0()Lqs/a;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget-wide v4, v0, Lss/c;->m:J

    invoke-interface {v3, v4, v5}, Lqs/a;->b(J)V

    :cond_1d
    iget v3, v0, Lss/c;->z:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "video_bitrate"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lss/c;->A:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio_bitrate"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lhj/i;->a:Lhj/i;

    iget-object v13, v0, Lss/c;->H:Ljava/lang/String;

    const-string v14, "video_play"

    iget-wide v3, v0, Lss/c;->m:J

    move-wide v15, v3

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Lhj/i;->H(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    invoke-direct/range {p0 .. p1}, Lss/c;->i(Z)V

    return-void
.end method

.method public final e(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lss/c;->d(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lss/c;->i(Z)V

    :goto_0
    return-void
.end method

.method public final g(Landroid/view/View;Z)V
    .locals 6

    const-string p2, "rootView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lss/c;->e:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lss/c;->v:Z

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "video_play"

    const-string v2, "initView"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lss/c;->f(Lss/c;ZILjava/lang/Object;)V

    return-void
.end method

.method public initPlayer()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lss/c;->t:Ljava/lang/String;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lss/c;->s:Ljava/lang/String;

    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lss/c;->F:I

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lss/c;->D:Ljava/lang/String;

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lss/c;->G:Z

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lss/c;->C:Ljava/lang/String;

    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->c(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 6

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->e(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-wide v1, p0, Lss/c;->q:J

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/transsion/player/orplayer/f$a;->z(Lcom/transsion/player/orplayer/f;JLao/e;ILjava/lang/Object;)V

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lss/c;->i:J

    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 6

    iget-wide v0, p0, Lss/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lss/c;->i:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lss/c;->h:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lss/c;->h:J

    iget p1, p0, Lss/c;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lss/c;->j:I

    iput-wide v2, p0, Lss/c;->i:J

    :cond_0
    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 2

    iget v0, p0, Lss/c;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lss/c;->n:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lss/c;->k:J

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 0

    const-string p2, "errorInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lss/c;->r:Ljava/lang/Integer;

    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->t(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->v(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->w(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 6

    iget-wide v0, p0, Lss/c;->q:J

    const-wide/16 v2, 0x0

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    iget-object p3, p0, Lss/c;->d:Lcom/transsion/player/orplayer/g;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lss/c;->q:J

    :cond_1
    iget-wide v0, p0, Lss/c;->l:J

    sub-long v2, p1, v0

    const-wide/16 v4, 0x1

    cmp-long p3, v4, v2

    if-gtz p3, :cond_2

    const-wide/16 v4, 0x3e8

    cmp-long p3, v2, v4

    if-gez p3, :cond_2

    iget-wide v2, p0, Lss/c;->m:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lss/c;->m:J

    :cond_2
    iput-wide p1, p0, Lss/c;->l:J

    iget-wide v0, p0, Lss/c;->k:J

    cmp-long p3, p1, v0

    if-lez p3, :cond_3

    iput-wide p1, p0, Lss/c;->k:J

    :cond_3
    iget-object p1, p0, Lss/c;->b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D0()Lqs/a;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-wide p2, p0, Lss/c;->m:J

    invoke-interface {p1, p2, p3}, Lqs/a;->a(J)V

    :cond_4
    return-void
.end method

.method public onRenderFirstFrame()V
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

    iput-wide v0, p0, Lss/c;->g:J

    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->B(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    iput p1, p0, Lss/c;->A:I

    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    iput p1, p0, Lss/c;->z:I

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lss/c;->o:J

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->H(Lcom/transsion/player/orplayer/f;II)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 6

    iget-wide v0, p0, Lss/c;->o:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lss/c;->o:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lss/c;->p:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lss/c;->p:J

    iput-wide v2, p0, Lss/c;->o:J

    :cond_0
    return-void
.end method

.method public final p(Lcom/transsion/player/orplayer/g;)V
    .locals 0

    iput-object p1, p0, Lss/c;->d:Lcom/transsion/player/orplayer/g;

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pageFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lss/c;->w:Ljava/lang/String;

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lss/c;->H:Ljava/lang/String;

    return-void
.end method

.method public final s(Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lss/c;->y:I

    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public final t(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 0

    iput-object p1, p0, Lss/c;->B:Lcom/transsion/shorttv/bean/Subject;

    return-void
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Lss/c;->E:I

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lss/c;->x:Ljava/lang/String;

    return-void
.end method
