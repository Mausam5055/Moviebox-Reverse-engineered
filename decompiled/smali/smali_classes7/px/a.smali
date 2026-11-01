.class public final Lpx/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/transsion/player/ui/ORPlayerView;

.field private final b:Lcom/transsion/player/orplayer/g;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Lcom/transsion/videofloat/bean/FloatPlayType;

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Lcom/transsion/player/enum/PlayMimeType;

.field private m:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field private n:Lcom/transsion/baselib/db/download/DownloadBean;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Integer;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field private final w:Z


# direct methods
.method public constructor <init>(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/player/orplayer/g;Landroid/view/ViewGroup;Lcom/transsion/videofloat/bean/FloatPlayType;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "playerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orPlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subjectId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpx/a;->a:Lcom/transsion/player/ui/ORPlayerView;

    iput-object p2, p0, Lpx/a;->b:Lcom/transsion/player/orplayer/g;

    iput-object p3, p0, Lpx/a;->c:Landroid/view/ViewGroup;

    iput-object p4, p0, Lpx/a;->d:Lcom/transsion/videofloat/bean/FloatPlayType;

    iput-object p5, p0, Lpx/a;->e:Ljava/lang/String;

    iput p6, p0, Lpx/a;->f:I

    iput p7, p0, Lpx/a;->g:I

    iput-object p8, p0, Lpx/a;->h:Ljava/lang/String;

    iput-object p9, p0, Lpx/a;->i:Ljava/lang/String;

    sget-object p1, Lcom/transsion/videofloat/bean/FloatPlayType;->LOCAL:Lcom/transsion/videofloat/bean/FloatPlayType;

    if-eq p4, p1, :cond_1

    sget-object p1, Lcom/transsion/videofloat/bean/FloatPlayType;->STREAM:Lcom/transsion/videofloat/bean/FloatPlayType;

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lpx/a;->w:Z

    return-void
.end method

.method private final d()Z
    .locals 2

    iget-object v0, p0, Lpx/a;->l:Lcom/transsion/player/enum/PlayMimeType;

    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->DASH:Lcom/transsion/player/enum/PlayMimeType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->HLS:Lcom/transsion/player/enum/PlayMimeType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpx/a;->q:Ljava/lang/String;

    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpx/a;->s:Ljava/lang/String;

    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpx/a;->u:Ljava/lang/String;

    return-void
.end method

.method public final D(Z)V
    .locals 0

    iput-boolean p1, p0, Lpx/a;->v:Z

    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpx/a;->r:Ljava/lang/String;

    return-void
.end method

.method public final F(J)V
    .locals 0

    iput-wide p1, p0, Lpx/a;->j:J

    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpx/a;->k:Ljava/lang/String;

    return-void
.end method

.method public final H(I)V
    .locals 0

    iput p1, p0, Lpx/a;->f:I

    return-void
.end method

.method public final I(Lcom/transsion/player/enum/PlayMimeType;)V
    .locals 0

    iput-object p1, p0, Lpx/a;->l:Lcom/transsion/player/enum/PlayMimeType;

    return-void
.end method

.method public final J(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lpx/a;->p:Ljava/lang/Integer;

    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpx/a;->o:Ljava/lang/String;

    return-void
.end method

.method public final L(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 0

    iput-object p1, p0, Lpx/a;->m:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lpx/a;->t:Z

    return v0
.end method

.method public final b()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    iget-object v0, p0, Lpx/a;->n:Lcom/transsion/baselib/db/download/DownloadBean;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lpx/a;->g:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpx/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lpx/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lpx/a;

    iget-object v1, p0, Lpx/a;->a:Lcom/transsion/player/ui/ORPlayerView;

    iget-object v3, p1, Lpx/a;->a:Lcom/transsion/player/ui/ORPlayerView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lpx/a;->b:Lcom/transsion/player/orplayer/g;

    iget-object v3, p1, Lpx/a;->b:Lcom/transsion/player/orplayer/g;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lpx/a;->c:Landroid/view/ViewGroup;

    iget-object v3, p1, Lpx/a;->c:Landroid/view/ViewGroup;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lpx/a;->d:Lcom/transsion/videofloat/bean/FloatPlayType;

    iget-object v3, p1, Lpx/a;->d:Lcom/transsion/videofloat/bean/FloatPlayType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lpx/a;->e:Ljava/lang/String;

    iget-object v3, p1, Lpx/a;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lpx/a;->f:I

    iget v3, p1, Lpx/a;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lpx/a;->g:I

    iget v3, p1, Lpx/a;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lpx/a;->h:Ljava/lang/String;

    iget-object v3, p1, Lpx/a;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lpx/a;->i:Ljava/lang/String;

    iget-object p1, p1, Lpx/a;->i:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final f()Lcom/transsion/player/orplayer/g;
    .locals 1

    iget-object v0, p0, Lpx/a;->b:Lcom/transsion/player/orplayer/g;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpx/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpx/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lpx/a;->a:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpx/a;->b:Lcom/transsion/player/orplayer/g;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpx/a;->c:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpx/a;->d:Lcom/transsion/videofloat/bean/FloatPlayType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpx/a;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpx/a;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpx/a;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpx/a;->h:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpx/a;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Lcom/transsion/videofloat/bean/FloatPlayType;
    .locals 1

    iget-object v0, p0, Lpx/a;->d:Lcom/transsion/videofloat/bean/FloatPlayType;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpx/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lpx/a;->m:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpx/a;->d:Lcom/transsion/videofloat/bean/FloatPlayType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpx/a;->m:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ugcVideo"

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lpx/a;->n:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lpx/a;->d:Lcom/transsion/videofloat/bean/FloatPlayType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpx/a;->n:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "ugcLocalVideo"

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lpx/a;->d:Lcom/transsion/videofloat/bean/FloatPlayType;

    sget-object v1, Lcom/transsion/videofloat/bean/FloatPlayType;->LOCAL:Lcom/transsion/videofloat/bean/FloatPlayType;

    if-ne v0, v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpx/a;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpx/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final l()Lcom/transsion/player/ui/ORPlayerView;
    .locals 1

    iget-object v0, p0, Lpx/a;->a:Lcom/transsion/player/ui/ORPlayerView;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpx/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lpx/a;->j:J

    return-wide v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpx/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpx/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lpx/a;->f:I

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpx/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lpx/a;->p:Ljava/lang/Integer;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lpx/a;->m:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    const-string v1, "_"

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpx/a;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lpx/a;->n:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lpx/a;->e:Ljava/lang/String;

    iget v2, p0, Lpx/a;->f:I

    iget v3, p0, Lpx/a;->g:I

    invoke-direct {p0}, Lpx/a;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_en_"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lpx/a;->a:Lcom/transsion/player/ui/ORPlayerView;

    iget-object v1, p0, Lpx/a;->b:Lcom/transsion/player/orplayer/g;

    iget-object v2, p0, Lpx/a;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lpx/a;->d:Lcom/transsion/videofloat/bean/FloatPlayType;

    iget-object v4, p0, Lpx/a;->e:Ljava/lang/String;

    iget v5, p0, Lpx/a;->f:I

    iget v6, p0, Lpx/a;->g:I

    iget-object v7, p0, Lpx/a;->h:Ljava/lang/String;

    iget-object v8, p0, Lpx/a;->i:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VideoFloatBean(playerView="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", orPlayer="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", subtitleViewGroup="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", playType="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", subjectId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", se="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ep="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resolution="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pageName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lpx/a;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final v()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;
    .locals 1

    iget-object v0, p0, Lpx/a;->m:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    iget-boolean v0, p0, Lpx/a;->v:Z

    return v0
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lpx/a;->w:Z

    return v0
.end method

.method public final y(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    iput-object p1, p0, Lpx/a;->n:Lcom/transsion/baselib/db/download/DownloadBean;

    return-void
.end method

.method public final z(I)V
    .locals 0

    iput p1, p0, Lpx/a;->g:I

    return-void
.end method
