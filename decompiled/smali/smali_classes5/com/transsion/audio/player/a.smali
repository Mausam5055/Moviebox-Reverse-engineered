.class public final Lcom/transsion/audio/player/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/transsion/baselib/db/audio/AudioBean;

.field private final b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:J

.field private m:J

.field private n:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 8

    const-string v0, "audioBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/transsion/audio/player/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/player/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/audio/player/a;->c:J

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "video_play"

    const-string v4, "initView"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final a()V
    .locals 8

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    const-string v2, "post_id"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    :cond_3
    const-string v2, "subject_id"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getOps()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getOps()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v0

    :cond_6
    :goto_1
    const-string v0, "ops"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-wide v0, p0, Lcom/transsion/audio/player/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "delay_v"

    const-string v2, "is_start"

    if-lez v0, :cond_9

    const-string v0, "1"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lcom/transsion/audio/player/a;->d:J

    iget-wide v6, p0, Lcom/transsion/audio/player/a;->c:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/transsion/audio/player/a;->e:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffer_time"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/audio/player/a;->g:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffer_count"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/transsion/audio/player/a;->h:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/audio/player/a;->a:Lcom/transsion/baselib/db/audio/AudioBean;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_8
    const-wide/16 v1, 0x1

    :goto_2
    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/audio/player/a;->k:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    const-string v1, "play_complete"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/transsion/audio/player/a;->j:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "play_duration"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/transsion/audio/player/a;->m:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pause_duration"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    const-string v0, "0"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/transsion/audio/player/a;->c:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v0, p0, Lcom/transsion/audio/player/a;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget-object v0, Lhj/i;->a:Lhj/i;

    const-string v2, "audio_play"

    iget-wide v3, p0, Lcom/transsion/audio/player/a;->j:J

    const-string v1, "postdetail"

    invoke-virtual/range {v0 .. v5}, Lhj/i;->H(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/player/a;->a()V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/audio/player/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/audio/player/a;->f:J

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/audio/player/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/audio/player/a;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/audio/player/a;->f:J

    iget-wide v2, p0, Lcom/transsion/audio/player/a;->e:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/audio/player/a;->e:J

    iget v0, p0, Lcom/transsion/audio/player/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/audio/player/a;->g:I

    :cond_0
    return-void
.end method

.method public final e(Lcom/transsion/player/orplayer/PlayError;)V
    .locals 1

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/player/a;->n:Ljava/lang/Integer;

    return-void
.end method

.method public final f(J)V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/audio/player/a;->i:J

    sub-long v2, p1, v0

    const-wide/16 v4, 0x1

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/transsion/audio/player/a;->j:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/audio/player/a;->j:J

    :cond_0
    iput-wide p1, p0, Lcom/transsion/audio/player/a;->i:J

    iget-wide v0, p0, Lcom/transsion/audio/player/a;->h:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iput-wide p1, p0, Lcom/transsion/audio/player/a;->h:J

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "video_play"

    const-string v2, "onRenderFirstFrame"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-wide v0, p0, Lcom/transsion/audio/player/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/audio/player/a;->d:J

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/audio/player/a;->l:J

    return-void
.end method

.method public final i()V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/audio/player/a;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/audio/player/a;->l:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/audio/player/a;->l:J

    iget-wide v2, p0, Lcom/transsion/audio/player/a;->m:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/audio/player/a;->m:J

    :cond_0
    return-void
.end method
