.class public final Lcom/transsion/videofloat/manager/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/videofloat/manager/d$a;
    }
.end annotation


# instance fields
.field private final a:Lpx/a;

.field private final b:Z

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/lang/Integer;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lyj/c;


# direct methods
.method public constructor <init>(Lpx/a;Z)V
    .locals 1

    const-string v0, "floatBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    iput-boolean p2, p0, Lcom/transsion/videofloat/manager/d;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/videofloat/manager/d;->q:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videofloat/manager/d;->q(J)V

    :cond_0
    return-void
.end method

.method private final c()Lyj/c;
    .locals 2

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->t:Lyj/c;

    if-nez v0, :cond_0

    sget-object v0, Lyj/a;->a:Lyj/a$a;

    const-class v1, Lyj/c;

    invoke-virtual {v0, v1}, Lyj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyj/c;

    iput-object v0, p0, Lcom/transsion/videofloat/manager/d;->t:Lyj/c;

    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->t:Lyj/c;

    return-object v0
.end method

.method private final o()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->c:J

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->d:J

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->e:J

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->f:J

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->g:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/transsion/videofloat/manager/d;->h:I

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->i:J

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->j:J

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->k:J

    iput v2, p0, Lcom/transsion/videofloat/manager/d;->l:I

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->m:J

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->n:J

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->o:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/videofloat/manager/d;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->d:J

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "video_play"

    const-string v4, "addSurface"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 13

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_positive"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "post_id"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->r()Ljava/lang/String;

    move-result-object v0

    const-string v2, "subject_id"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const-string v0, "play_type"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "opt_type"

    const-string v1, "float"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->q()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "se"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->c()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ep"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v1, "page_from"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v1, "ops"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->s()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->s()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "subject_type"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "delay"

    const-string v4, "delay_v"

    const-string v6, "is_start"

    const-string v7, "1"

    const-string v8, "0"

    if-gtz v0, :cond_c

    iget-boolean v0, p0, Lcom/transsion/videofloat/manager/d;->b:Z

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v9, p0, Lcom/transsion/videofloat/manager/d;->c:J

    cmp-long v0, v9, v2

    if-lez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/transsion/videofloat/manager/d;->c:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    move-object v0, v8

    :goto_3
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v9, p0, Lcom/transsion/videofloat/manager/d;->d:J

    cmp-long v0, v9, v2

    if-lez v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/transsion/videofloat/manager/d;->d:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v8

    :goto_4
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_c
    :goto_5
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v9, p0, Lcom/transsion/videofloat/manager/d;->e:J

    cmp-long v0, v9, v2

    if-lez v0, :cond_f

    iget-wide v11, p0, Lcom/transsion/videofloat/manager/d;->c:J

    cmp-long v0, v11, v2

    if-lez v0, :cond_d

    cmp-long v0, v9, v2

    if-lez v0, :cond_d

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    move-object v0, v8

    :goto_6
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v9, p0, Lcom/transsion/videofloat/manager/d;->d:J

    cmp-long v0, v9, v2

    if-lez v0, :cond_e

    iget-wide v11, p0, Lcom/transsion/videofloat/manager/d;->e:J

    cmp-long v0, v11, v2

    if-lez v0, :cond_e

    sub-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_e
    move-object v0, v8

    :goto_7
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->f:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffer_time"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/videofloat/manager/d;->h:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffer_count"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->i:J

    long-to-float v0, v0

    iget-wide v9, p0, Lcom/transsion/videofloat/manager/d;->o:J

    long-to-float v1, v9

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v4, p0, Lcom/transsion/videofloat/manager/d;->l:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v0, v4

    const-string v1, "play_complete"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->k:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "play_duration"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->n:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pause_duration"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/videofloat/manager/d;->l:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "completeCount"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->k:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "play_duration_float"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->r:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string v1, "is_preloaded"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v0, "url"

    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->q:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v8, v7

    :cond_11
    const-string v0, "builtin"

    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->o:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    const-string v2, "total_duration"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v0, "player_type"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/d;->c()Lyj/c;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-wide v1, p0, Lcom/transsion/videofloat/manager/d;->k:J

    invoke-interface {v0, v1, v2}, Lyj/c;->b(J)V

    :cond_14
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->i()Lcom/transsion/videofloat/bean/FloatPlayType;

    move-result-object v0

    sget-object v1, Lcom/transsion/videofloat/manager/d$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    const-string v2, "long_video_play"

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    return-void

    :cond_15
    const-string v0, "local_video_detail"

    :goto_9
    move-object v1, v0

    goto :goto_a

    :cond_16
    const-string v0, "stream_detail"

    goto :goto_9

    :cond_17
    const-string v0, "minitv_play"

    const-string v1, "video_play"

    move-object v2, v1

    goto :goto_9

    :goto_a
    sget-object v0, Lhj/i;->a:Lhj/i;

    iget-wide v3, p0, Lcom/transsion/videofloat/manager/d;->k:J

    invoke-virtual/range {v0 .. v5}, Lhj/i;->H(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    invoke-direct {p0}, Lcom/transsion/videofloat/manager/d;->o()V

    return-void
.end method

.method public final d()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->c:J

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "video_play"

    const-string v4, "initView"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->o:J

    invoke-virtual {p0, v0, v1}, Lcom/transsion/videofloat/manager/d;->h(J)V

    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->g:J

    return-void
.end method

.method public final g()V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/videofloat/manager/d;->g:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/transsion/videofloat/manager/d;->f:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/transsion/videofloat/manager/d;->f:J

    iget v0, p0, Lcom/transsion/videofloat/manager/d;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/videofloat/manager/d;->h:I

    iput-wide v2, p0, Lcom/transsion/videofloat/manager/d;->g:J

    :cond_0
    return-void
.end method

.method public final h(J)V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->j:J

    sub-long v2, p1, v0

    const-wide/16 v4, 0x1

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/transsion/videofloat/manager/d;->k:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/videofloat/manager/d;->k:J

    :cond_0
    iput-wide p1, p0, Lcom/transsion/videofloat/manager/d;->j:J

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->i:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iput-wide p1, p0, Lcom/transsion/videofloat/manager/d;->i:J

    :cond_1
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/d;->c()Lyj/c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->k:J

    invoke-interface {p1, v0, v1}, Lyj/c;->a(J)V

    :cond_2
    return-void
.end method

.method public final i()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v0}, Lpx/a;->f()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/videofloat/manager/d;->q(J)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "video_play"

    const-string v4, "onRenderFirstFrame"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->e:J

    return-void
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->m:J

    return-void
.end method

.method public final k()V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/videofloat/manager/d;->m:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/transsion/videofloat/manager/d;->n:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/transsion/videofloat/manager/d;->n:J

    iput-wide v2, p0, Lcom/transsion/videofloat/manager/d;->m:J

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v1}, Lpx/a;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subject_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "action"

    const-string v2, "float_back_to_detail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v1}, Lpx/a;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "ops"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    iget-object v2, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v2}, Lpx/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final m()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v1}, Lpx/a;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subject_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "action"

    const-string v2, "float_close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v1}, Lpx/a;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "ops"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    iget-object v2, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v2}, Lpx/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final n()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v1}, Lpx/a;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subject_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "action"

    const-string v2, "float_show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v1}, Lpx/a;->w()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_positive"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v1}, Lpx/a;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "ops"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    iget-object v2, p0, Lcom/transsion/videofloat/manager/d;->a:Lpx/a;

    invoke-virtual {v2}, Lpx/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/videofloat/manager/d;->s:Ljava/lang/String;

    return-void
.end method

.method public final q(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/videofloat/manager/d;->o:J

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/videofloat/manager/d;->q:Ljava/lang/String;

    return-void
.end method
