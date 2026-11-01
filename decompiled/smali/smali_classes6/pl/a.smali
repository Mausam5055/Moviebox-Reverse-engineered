.class public final Lpl/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:Z

.field private m:Ljava/lang/Integer;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "long_video_play"

    iput-object v0, p0, Lpl/a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lpl/a;->d:Ljava/lang/String;

    return-void
.end method

.method private final j()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lpl/a;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpl/a;->c:J

    iput-wide v0, p0, Lpl/a;->e:J

    iput-wide v0, p0, Lpl/a;->f:J

    iput-wide v0, p0, Lpl/a;->g:J

    iput-wide v0, p0, Lpl/a;->h:J

    iput-wide v0, p0, Lpl/a;->i:J

    iput-wide v0, p0, Lpl/a;->j:J

    const/4 v0, 0x0

    iput v0, p0, Lpl/a;->k:I

    iput-boolean v0, p0, Lpl/a;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lpl/a;->m:Ljava/lang/Integer;

    iput-object v0, p0, Lpl/a;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    iget-wide v0, p0, Lpl/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lpl/a;->d:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v5, p0, Lpl/a;->a:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, "TvLiveDot exitPlay skip: not initialized"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-wide v0, p0, Lpl/a;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lpl/a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lpl/a;->e:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lpl/a;->f:J

    iput-wide v2, p0, Lpl/a;->e:J

    :cond_1
    iget-wide v0, p0, Lpl/a;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lpl/a;->h:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lpl/a;->g:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lpl/a;->h:J

    iput-wide v2, p0, Lpl/a;->g:J

    :cond_2
    iget-wide v0, p0, Lpl/a;->c:J

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    iget-wide v2, p0, Lpl/a;->b:J

    :goto_1
    sub-long v2, v0, v2

    goto :goto_2

    :cond_4
    iget-wide v0, p0, Lpl/a;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lpl/a;->b:J

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "content_id"

    iget-object v1, p0, Lpl/a;->d:Ljava/lang/String;

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1"

    const-string v1, "0"

    if-eqz v4, :cond_6

    move-object v4, v0

    goto :goto_3

    :cond_6
    move-object v4, v1

    :goto_3
    const-string v6, "is_start"

    invoke-interface {v11, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, p0, Lpl/a;->f:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v7, "play_duration"

    invoke-interface {v11, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, p0, Lpl/a;->h:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v7, "pause_duration"

    invoke-interface {v11, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "play_complete"

    invoke-interface {v11, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "complete_count"

    invoke-interface {v11, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "delay_v"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, p0, Lpl/a;->j:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v7, "buffer_time"

    invoke-interface {v11, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p0, Lpl/a;->k:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "buffer_count"

    invoke-interface {v11, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, p0, Lpl/a;->l:Z

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v0, v1

    :goto_4
    const-string v1, "is_load_success"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lpl/a;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v1, "error_code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lpl/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v1, "error_msg"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lpl/a;->a:Ljava/lang/String;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v6, p0, Lpl/a;->f:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TvLiveDot exitPlay is_start="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " play_duration="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " delay_v="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v6, Lhj/i;->a:Lhj/i;

    const-string v8, "long_video_play"

    iget-wide v9, p0, Lpl/a;->f:J

    const-string v7, "tv_channel_detail"

    invoke-virtual/range {v6 .. v11}, Lhj/i;->H(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    invoke-direct {p0}, Lpl/a;->j()V

    return-void
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/a;->b:J

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lpl/a;->a:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "TvLiveDot initView"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/a;->i:J

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lpl/a;->a:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "TvLiveDot onLoadingBegin"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 10

    iget-wide v0, p0, Lpl/a;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lpl/a;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lpl/a;->i:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lpl/a;->j:J

    iget v0, p0, Lpl/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/a;->k:I

    iput-wide v2, p0, Lpl/a;->i:J

    :cond_0
    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v5, p0, Lpl/a;->a:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, "TvLiveDot onLoadingEnd"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/transsion/player/orplayer/PlayError;)V
    .locals 7

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lpl/a;->m:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpl/a;->n:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/a;->l:Z

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lpl/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lpl/a;->m:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TvLiveDot onPlayError code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " msg="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 7

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpl/a;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpl/a;->c:J

    iput-wide v0, p0, Lpl/a;->e:J

    iput-wide v0, p0, Lpl/a;->f:J

    iput-wide v0, p0, Lpl/a;->g:J

    iput-wide v0, p0, Lpl/a;->h:J

    iput-wide v0, p0, Lpl/a;->i:J

    iput-wide v0, p0, Lpl/a;->j:J

    const/4 v0, 0x0

    iput v0, p0, Lpl/a;->k:I

    iput-boolean v0, p0, Lpl/a;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lpl/a;->m:Ljava/lang/Integer;

    iput-object v0, p0, Lpl/a;->n:Ljava/lang/String;

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lpl/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TvLiveDot onPlayStream url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/a;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/a;->l:Z

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lpl/a;->a:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "TvLiveDot onRenderFirstFrame"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 8

    iget-wide v0, p0, Lpl/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lpl/a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lpl/a;->e:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lpl/a;->f:J

    iput-wide v2, p0, Lpl/a;->e:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/a;->g:J

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lpl/a;->a:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "TvLiveDot onVideoPause"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final i()V
    .locals 8

    iget-wide v0, p0, Lpl/a;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lpl/a;->h:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lpl/a;->g:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lpl/a;->h:J

    iput-wide v2, p0, Lpl/a;->g:J

    :cond_0
    iget-boolean v0, p0, Lpl/a;->l:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/a;->l:Z

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/a;->e:J

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lpl/a;->a:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "TvLiveDot onVideoStart"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
