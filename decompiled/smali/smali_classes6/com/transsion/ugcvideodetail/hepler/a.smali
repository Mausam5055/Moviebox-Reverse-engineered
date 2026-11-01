.class public final Lcom/transsion/ugcvideodetail/hepler/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/transsion/player/orplayer/g;

.field private e:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:J

.field private m:J

.field private n:J

.field private o:I

.field private p:J

.field private q:J

.field private r:J

.field private s:Ljava/lang/Integer;

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Lyj/c;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->b:Ljava/lang/String;

    const-class p1, Lcom/transsion/ugcvideodetail/hepler/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->u:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->v:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->w:I

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->y:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lcom/transsion/ugcvideodetail/hepler/a;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/hepler/a;->b(Z)V

    return-void
.end method

.method private final e()Lyj/c;
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->x:Lyj/c;

    if-nez v0, :cond_0

    sget-object v0, Lyj/a;->a:Lyj/a$a;

    const-class v1, Lyj/c;

    invoke-virtual {v0, v1}, Lyj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyj/c;

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->x:Lyj/c;

    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->x:Lyj/c;

    return-object v0
.end method

.method private final q(Z)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->g:J

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->h:J

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->i:J

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->j:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->k:I

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->l:J

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->m:J

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    iput v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->o:I

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->p:J

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->q:J

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->w:I

    iput-boolean v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->g:J

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "video_play"

    const-string v4, "addSurface"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "TAG"

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    if-nez v2, :cond_0

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, v0, Lcom/transsion/ugcvideodetail/hepler/a;->c:Ljava/lang/String;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "exitPlay, return"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v2, v0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    if-nez v2, :cond_1

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, v0, Lcom/transsion/ugcvideodetail/hepler/a;->c:Ljava/lang/String;

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

    iput-boolean v1, v0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "ep"

    iget-object v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->y:Ljava/lang/String;

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->b:Ljava/lang/String;

    if-nez v3, :cond_2

    sget-object v3, Lhj/i;->a:Lhj/i;

    invoke-virtual {v3}, Lhj/i;->i()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v6, "page_from"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->e:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, ""

    :cond_4
    const-string v6, "ops"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->z:I

    if-lez v3, :cond_5

    const-string v6, "subject_type"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->h:J

    cmp-long v3, v6, v4

    const-string v6, "delay"

    const-string v7, "delay_v"

    const-string v8, "is_start"

    const-string v9, "1"

    const-string v10, "0"

    if-gtz v3, :cond_9

    iget-boolean v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    if-eqz v3, :cond_6

    iget-wide v11, v0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v11, v0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_7
    move-object v3, v10

    :goto_0
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v0, Lcom/transsion/ugcvideodetail/hepler/a;->g:J

    cmp-long v3, v7, v4

    if-lez v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v11, v0, Lcom/transsion/ugcvideodetail/hepler/a;->g:J

    sub-long/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_8
    move-object v3, v10

    :goto_1
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_9
    :goto_2
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v11, v0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_a

    iget-wide v13, v0, Lcom/transsion/ugcvideodetail/hepler/a;->h:J

    cmp-long v3, v13, v4

    if-lez v3, :cond_a

    sub-long/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    move-object v3, v10

    :goto_3
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v0, Lcom/transsion/ugcvideodetail/hepler/a;->g:J

    cmp-long v3, v7, v4

    if-lez v3, :cond_b

    iget-wide v11, v0, Lcom/transsion/ugcvideodetail/hepler/a;->h:J

    cmp-long v3, v11, v4

    if-lez v3, :cond_b

    sub-long/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_b
    move-object v3, v10

    :goto_4
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->i:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v6, "buffer_time"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->k:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "buffer_count"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->l:J

    long-to-float v3, v6

    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    long-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v3, v6

    iget v7, v0, Lcom/transsion/ugcvideodetail/hepler/a;->o:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    const-string v6, "play_complete"

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v6, "play_duration"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->q:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v6, "pause_duration"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->o:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "completeCount"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v1, :cond_c

    move-object v3, v9

    goto :goto_6

    :cond_c
    move-object v3, v10

    :goto_6
    const-string v6, "app_to_background"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {v3}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v3

    iget-object v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->v:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_7

    :cond_d
    move-object v9, v10

    :goto_7
    const-string v3, "is_preloaded"

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "url"

    iget-object v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->v:Ljava/lang/String;

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_e

    const-string v3, "total_duration"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->w:I

    if-ltz v3, :cond_f

    const-string v6, "position"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->s:Ljava/lang/Integer;

    if-eqz v3, :cond_10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "error_code"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-boolean v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    if-eqz v3, :cond_11

    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    cmp-long v3, v6, v4

    if-gtz v3, :cond_11

    iget-boolean v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->u:Z

    if-nez v3, :cond_11

    return-void

    :cond_11
    if-eqz v1, :cond_12

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->u:Z

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ugcvideodetail/hepler/a;->e()Lyj/c;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-wide v4, v0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    invoke-interface {v3, v4, v5}, Lyj/c;->b(J)V

    :cond_13
    sget-object v12, Lhj/i;->a:Lhj/i;

    iget-object v13, v0, Lcom/transsion/ugcvideodetail/hepler/a;->a:Ljava/lang/String;

    const-string v14, "video_play"

    iget-wide v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    move-wide v15, v3

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Lhj/i;->H(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    invoke-direct/range {p0 .. p1}, Lcom/transsion/ugcvideodetail/hepler/a;->q(Z)V

    return-void
.end method

.method public final c(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/ugcvideodetail/hepler/a;->b(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/ugcvideodetail/hepler/a;->q(Z)V

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->u:Z

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "video_play"

    const-string v3, "initView"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    invoke-virtual {p0, v0, v1}, Lcom/transsion/ugcvideodetail/hepler/a;->l(J)V

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->j:J

    return-void
.end method

.method public final i()V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->j:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->i:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->i:J

    iget v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->k:I

    iput-wide v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->j:J

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    iget v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->o:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->l:J

    return-void
.end method

.method public final k(Lcom/transsion/player/orplayer/PlayError;)V
    .locals 1

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->s:Ljava/lang/Integer;

    return-void
.end method

.method public final l(J)V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->d:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    :cond_1
    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->m:J

    sub-long v2, p1, v0

    const-wide/16 v4, 0x1

    cmp-long v4, v4, v2

    if-gtz v4, :cond_2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-wide v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    :cond_2
    iput-wide p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->m:J

    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->l:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    iput-wide p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->l:J

    :cond_3
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/a;->e()Lyj/c;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    invoke-interface {p1, v0, v1}, Lyj/c;->a(J)V

    :cond_4
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

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->h:J

    return-void
.end method

.method public final n()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->p:J

    return-void
.end method

.method public final o()V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->p:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->q:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->q:J

    iput-wide v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->p:J

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/ugcvideodetail/hepler/a;->d(Lcom/transsion/ugcvideodetail/hepler/a;ZILjava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->w:I

    return-void
.end method

.method public final s(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "setData----->"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->e:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    return-void
.end method

.method public final t(Lcom/transsion/player/orplayer/g;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->c:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "setPlayer----->"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->d:Lcom/transsion/player/orplayer/g;

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->v:Ljava/lang/String;

    return-void
.end method
