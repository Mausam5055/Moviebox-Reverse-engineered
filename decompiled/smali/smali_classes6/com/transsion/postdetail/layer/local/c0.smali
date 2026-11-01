.class public final Lcom/transsion/postdetail/layer/local/c0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/local/c0$a;
    }
.end annotation


# static fields
.field public static final g0:Lcom/transsion/postdetail/layer/local/c0$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Lcom/transsion/baselib/db/download/DownloadBean;

.field private K:Ljava/lang/String;

.field private L:I

.field private M:Z

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/util/Map;

.field private final Z:Ljava/util/List;

.field private a:Lcom/transsion/player/orplayer/g;

.field private a0:Z

.field private final b:Ljava/lang/String;

.field private b0:Lcom/transsion/player/orplayer/global/TnPlayerType;

.field private c:J

.field private c0:Z

.field private d:J

.field private d0:Z

.field private e:J

.field private e0:Lyj/c;

.field private f:J

.field private f0:Z

.field private g:J

.field private h:I

.field private i:I

.field private j:Ljava/lang/Double;

.field private k:Ljava/lang/Double;

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:J

.field private w:J

.field private x:I

.field private y:J

.field private z:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/layer/local/c0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/layer/local/c0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/layer/local/c0;->g0:Lcom/transsion/postdetail/layer/local/c0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "long_video_play"

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/c0;->s:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/postdetail/layer/local/c0;->G:I

    iput v1, p0, Lcom/transsion/postdetail/layer/local/c0;->P:I

    iput v1, p0, Lcom/transsion/postdetail/layer/local/c0;->Q:I

    const-string v1, "local_video_detail"

    iput-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->T:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->Y:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->Z:Ljava/util/List;

    return-void
.end method

.method public static synthetic c(Lcom/transsion/postdetail/layer/local/c0;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/c0;->b(Z)V

    return-void
.end method

.method private final f()Lyj/c;
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->e0:Lyj/c;

    if-nez v0, :cond_0

    sget-object v0, Lyj/a;->a:Lyj/a$a;

    const-class v1, Lyj/c;

    invoke-virtual {v0, v1}, Lyj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyj/c;

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->e0:Lyj/c;

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->e0:Lyj/c;

    return-object v0
.end method

.method private final y(Z)V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->d:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->e:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->f:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->g:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/transsion/postdetail/layer/local/c0;->h:I

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->m:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->n:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->v:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->w:J

    iput v2, p0, Lcom/transsion/postdetail/layer/local/c0;->x:I

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->o:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->p:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->q:J

    iput v2, p0, Lcom/transsion/postdetail/layer/local/c0;->i:I

    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->r:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/transsion/postdetail/layer/local/c0;->z:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/transsion/postdetail/layer/local/c0;->A:Ljava/lang/String;

    iput v2, p0, Lcom/transsion/postdetail/layer/local/c0;->L:I

    const-string v4, ""

    iput-object v4, p0, Lcom/transsion/postdetail/layer/local/c0;->B:Ljava/lang/String;

    if-nez p1, :cond_0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->l:J

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->y:J

    iput-object v3, p0, Lcom/transsion/postdetail/layer/local/c0;->b0:Lcom/transsion/player/orplayer/global/TnPlayerType;

    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->c0:Z

    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->d0:Z

    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->u:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 6

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->K:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string p2, "0"

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->H:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->I:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->H:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->I:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "2"

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->H:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object p2

    :cond_3
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->I:Ljava/lang/String;

    :goto_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "setData"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final B(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/postdetail/layer/local/c0;->Q:I

    return-void
.end method

.method public final C(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/postdetail/layer/local/c0;->P:I

    return-void
.end method

.method public final D(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/c0;->t:Z

    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->T:Ljava/lang/String;

    return-void
.end method

.method public final F(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/c0;->a0:Z

    return-void
.end method

.method public final G(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/c0;->f0:Z

    return-void
.end method

.method public final H(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget v1, p0, Lcom/transsion/postdetail/layer/local/c0;->L:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/postdetail/layer/local/c0;->L:I

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->B:Ljava/lang/String;

    return-void
.end method

.method public final I(Lcom/transsion/player/orplayer/g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->a:Lcom/transsion/player/orplayer/g;

    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->S:Ljava/lang/String;

    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->H:Ljava/lang/String;

    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->R:Ljava/lang/String;

    return-void
.end method

.method public final M(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/c0;->d0:Z

    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->V:Ljava/lang/String;

    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->X:Ljava/lang/String;

    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->W:Ljava/lang/String;

    return-void
.end method

.method public final Q(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->U:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    return-void
.end method

.method public final a()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->d:J

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "addSurface"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b(Z)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/transsion/postdetail/layer/local/c0;->u:Z

    if-nez v2, :cond_0

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, v0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, " exitPlay, return"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v2, v0, Lcom/transsion/postdetail/layer/local/c0;->u:Z

    if-nez v2, :cond_1

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, v0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " curVideoIsApp2Background = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-boolean v1, v0, Lcom/transsion/postdetail/layer/local/c0;->u:Z

    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    const-string v6, ""

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v6

    :cond_3
    const-string v7, "post_id"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    move-object v3, v6

    :cond_5
    const-string v7, "subject_id"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    move-object v3, v6

    :cond_7
    const-string v8, "resource_id"

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Ljava/lang/String;

    if-nez v3, :cond_8

    move-object v3, v6

    :cond_8
    const-string v9, "play_type"

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->K:Ljava/lang/String;

    if-nez v3, :cond_9

    sget-object v3, Lhj/i;->a:Lhj/i;

    invoke-virtual {v3}, Lhj/i;->i()Ljava/lang/String;

    move-result-object v3

    :cond_9
    const-string v10, "page_from"

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->I:Ljava/lang/String;

    if-nez v3, :cond_a

    move-object v3, v6

    :cond_a
    const-string v10, "url"

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    invoke-virtual {v3}, Lcom/transsion/baselib/helper/d;->d()F

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    const-string v11, "speed"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/transsion/baselib/helper/d;->c()Lcom/transsion/player/enum/ScaleMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/player/enum/ScaleMode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v10, "scale_mode"

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/local/c0;->a0:Z

    const-string v10, "1"

    const-string v11, "0"

    if-eqz v3, :cond_b

    move-object v3, v10

    goto :goto_0

    :cond_b
    move-object v3, v11

    :goto_0
    const-string v12, "lock"

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lko/l0;->a:Lko/l0;

    invoke-virtual {v3}, Lko/l0;->i()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->j:Ljava/lang/Double;

    const-wide/16 v12, 0x0

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    cmpl-double v3, v14, v12

    if-lez v3, :cond_c

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->j:Ljava/lang/Double;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v14, "redundancyRate"

    invoke-interface {v2, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->k:Ljava/lang/Double;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    cmpl-double v3, v14, v12

    if-lez v3, :cond_d

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->k:Ljava/lang/Double;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "poolPercentDouble"

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->U:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    :cond_e
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_f
    const/4 v3, 0x0

    :cond_10
    :goto_1
    if-eqz v3, :cond_17

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_11

    goto :goto_3

    :cond_11
    iget-object v13, v0, Lcom/transsion/postdetail/layer/local/c0;->U:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v13

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_14

    :cond_12
    iget-object v13, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_13
    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_14

    move-object v13, v6

    :cond_14
    const-string v14, "content_id"

    invoke-interface {v2, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "belong_to_collection_id"

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "content_type"

    const-string v13, "ugc_video"

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    :cond_15
    move-object v3, v6

    :cond_16
    const-string v13, "refer_subject_id"

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    :goto_3
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->V:Ljava/lang/String;

    if-eqz v3, :cond_18

    const-string v13, "parent_content_id"

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->W:Ljava/lang/String;

    if-eqz v3, :cond_19

    const-string v13, "track_id"

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->X:Ljava/lang/String;

    if-eqz v3, :cond_1a

    const-string v13, "parent_track_id"

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    sget-object v3, Lox/e;->a:Lox/e$a;

    invoke-virtual {v3}, Lox/e$a;->b()Lox/e;

    move-result-object v13

    invoke-interface {v13}, Lox/e;->c()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    const-string v14, "pip_feature"

    invoke-interface {v2, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lox/e$a;->b()Lox/e;

    move-result-object v3

    invoke-interface {v3}, Lox/e;->g()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v13, "pip_system_feature"

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->R:Ljava/lang/String;

    if-eqz v3, :cond_1b

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1b

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->R:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v13, "resolution"

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Ljava/lang/String;

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Ljava/lang/String;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1c
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_1d
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "item_type"

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_1f
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_21

    :cond_20
    move-object v3, v6

    :cond_21
    const-string v13, "ops"

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    const-string v3, "resource_size"

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    const/high16 v13, 0x42c80000    # 100.0f

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v14

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Ljava/lang/String;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    long-to-float v3, v14

    mul-float/2addr v3, v13

    iget-object v14, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v14, :cond_24

    invoke-virtual {v14}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_24

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_6

    :cond_24
    const-wide/16 v14, 0x1

    :goto_6
    long-to-float v14, v14

    div-float/2addr v3, v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v14, "downloaded_percent"

    invoke-interface {v2, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->Y:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Leu/a;

    invoke-virtual {v15}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v15

    invoke-virtual {v15}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result v15

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Leu/a;

    invoke-virtual/range {v16 .. v16}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subtitle_use_time_"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    const/high16 v13, 0x42c80000    # 100.0f

    goto :goto_7

    :cond_26
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v3

    if-ne v3, v4, :cond_2b

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v3

    goto :goto_8

    :cond_27
    const/4 v3, 0x0

    :goto_8
    if-lez v3, :cond_29

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v3

    goto :goto_9

    :cond_28
    const/4 v3, 0x0

    :goto_9
    iget-object v12, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v12, :cond_2c

    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v12

    goto :goto_b

    :cond_29
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    goto :goto_a

    :cond_2a
    const/4 v3, 0x0

    :goto_a
    iget-object v12, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v12, :cond_2c

    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v12

    rem-int/lit8 v12, v12, 0x64

    goto :goto_b

    :cond_2b
    const/4 v3, 0x0

    :cond_2c
    const/4 v12, 0x0

    :goto_b
    if-lez v3, :cond_2d

    const-string v13, "seasons"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    if-lez v12, :cond_2e

    const-string v3, "episode"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->P:I

    if-ltz v3, :cond_2f

    const-string v12, "position"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->Q:I

    if-ltz v3, :cond_30

    const-string v12, "parent_position"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    iget-wide v12, v0, Lcom/transsion/postdetail/layer/local/c0;->v:J

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v4, v0, Lcom/transsion/postdetail/layer/local/c0;->v:J

    sub-long/2addr v12, v4

    iget-wide v4, v0, Lcom/transsion/postdetail/layer/local/c0;->w:J

    add-long/2addr v4, v12

    iput-wide v4, v0, Lcom/transsion/postdetail/layer/local/c0;->w:J

    iput-wide v14, v0, Lcom/transsion/postdetail/layer/local/c0;->v:J

    :cond_31
    iget-wide v4, v0, Lcom/transsion/postdetail/layer/local/c0;->e:J

    cmp-long v4, v4, v14

    const-string v5, "delay"

    const-string v12, "delay_v"

    const-string v13, "is_start"

    if-gtz v4, :cond_35

    iget-boolean v4, v0, Lcom/transsion/postdetail/layer/local/c0;->u:Z

    if-eqz v4, :cond_32

    goto :goto_e

    :cond_32
    invoke-interface {v2, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    cmp-long v3, v3, v14

    if-lez v3, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v14, v0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    sub-long/2addr v3, v14

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_33
    move-object v3, v11

    :goto_c
    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->d:J

    const-wide/16 v14, 0x0

    cmp-long v3, v3, v14

    if-lez v3, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v14, v0, Lcom/transsion/postdetail/layer/local/c0;->d:J

    sub-long/2addr v3, v14

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_34
    move-object v3, v11

    :goto_d
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->B:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "not_play_error_msg"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    goto/16 :goto_12

    :cond_35
    :goto_e
    invoke-interface {v2, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    const-wide/16 v14, 0x0

    cmp-long v18, v3, v14

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    if-lez v18, :cond_36

    iget-wide v9, v0, Lcom/transsion/postdetail/layer/local/c0;->e:J

    cmp-long v18, v9, v14

    if-lez v18, :cond_36

    sub-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_36
    move-object v3, v11

    :goto_f
    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->d:J

    cmp-long v9, v3, v14

    if-lez v9, :cond_37

    iget-wide v9, v0, Lcom/transsion/postdetail/layer/local/c0;->e:J

    cmp-long v12, v9, v14

    if-lez v12, :cond_37

    sub-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_37
    move-object v3, v11

    :goto_10
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->f:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "buffer_time"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->h:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "buffer_count"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->i:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "seek_count"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->y:J

    const-wide/16 v9, 0x0

    cmp-long v5, v3, v9

    if-lez v5, :cond_38

    iget-wide v9, v0, Lcom/transsion/postdetail/layer/local/c0;->l:J

    long-to-float v5, v9

    long-to-float v3, v3

    div-float/2addr v5, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v5, v3

    const-string v3, "play_complete"

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->y:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "total_duration"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->n:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "play_duration"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->p:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "play_duration_middlepage"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->o:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "play_duration_fullscreen"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->q:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "play_duration_pip"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->w:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pause_duration"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->x:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pause_count"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/local/c0;->r:Z

    if-eqz v3, :cond_39

    move-object/from16 v3, v20

    goto :goto_11

    :cond_39
    move-object v3, v11

    :goto_11
    const-string v4, "complete"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->N:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "video_bitrate"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->O:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio_bitrate"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    if-eqz v1, :cond_3a

    move-object/from16 v3, v20

    goto :goto_13

    :cond_3a
    move-object v3, v11

    :goto_13
    const-string v4, "app_to_background"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/local/c0;->M:Z

    if-eqz v3, :cond_3b

    move-object/from16 v3, v20

    goto :goto_14

    :cond_3b
    move-object v3, v11

    :goto_14
    const-string v4, "is_replay"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->b0:Lcom/transsion/player/orplayer/global/TnPlayerType;

    if-eqz v3, :cond_3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_player"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/local/c0;->c0:Z

    if-eqz v3, :cond_3d

    move-object/from16 v3, v20

    goto :goto_15

    :cond_3d
    move-object v3, v11

    :goto_15
    const-string v4, "aliyun_2_sfotdecoder"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/local/c0;->d0:Z

    if-eqz v3, :cond_3e

    move-object/from16 v10, v20

    goto :goto_16

    :cond_3e
    move-object v10, v11

    :goto_16
    const-string v3, "timeout_replay"

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/transsnet/downloader/util/i;->a:Lcom/transsnet/downloader/util/i;

    invoke-virtual {v3}, Lcom/transsnet/downloader/util/i;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_3f
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->z:Ljava/lang/Integer;

    if-eqz v3, :cond_40

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "player_error_code"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->A:Ljava/lang/String;

    if-eqz v3, :cond_41

    const-string v4, "player_error_msg"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->Z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "subtitle_downloaded"

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_19

    :cond_42
    :try_start_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v4, v0, Lcom/transsion/postdetail/layer/local/c0;->Z:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_43
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/a;

    invoke-virtual {v5}, Leu/a;->d()Z

    move-result v9

    if-eqz v9, :cond_43

    invoke-virtual {v5}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v9

    invoke-virtual {v9}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    goto :goto_18

    :cond_44
    invoke-virtual {v5}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_18

    :catchall_0
    :cond_45
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->E:Ljava/lang/String;

    if-nez v3, :cond_46

    move-object v3, v6

    :cond_46
    const-string v4, "subtitle_type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    if-nez v3, :cond_47

    move-object v3, v6

    :cond_47
    const-string v4, "subtitle_lan"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Lcom/transsion/postdetail/layer/local/c0;->G:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "subtitle_from"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v20, Llg/a;->a:Llg/a$a;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->E:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    iget v5, v0, Lcom/transsion/postdetail/layer/local/c0;->G:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LanName= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",Lan = "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", From = "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x4

    const/16 v25, 0x0

    const-string v21, "ORSubtitle"

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_19
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->C:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->D:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    :cond_48
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->C:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/postdetail/layer/local/c0;->D:Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "subtitle_bilingual"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4a

    const/4 v5, 0x1

    goto :goto_1a

    :cond_4a
    const/4 v5, 0x0

    :goto_1a
    if-nez v5, :cond_4b

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/layer/local/c0;->f()Lyj/c;

    move-result-object v3

    if-eqz v3, :cond_4b

    iget-wide v4, v0, Lcom/transsion/postdetail/layer/local/c0;->n:J

    invoke-interface {v3, v4, v5}, Lyj/c;->b(J)V

    :cond_4b
    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/16 v24, 0x4

    const/16 v25, 0x0

    const-string v22, "video exit\uff0c report and reset data"

    const/16 v23, 0x0

    move-object/from16 v20, v4

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v25}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->z:Ljava/lang/Integer;

    if-eqz v3, :cond_4c

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    sget-object v5, Lhj/i;->a:Lhj/i;

    invoke-virtual {v5, v2}, Lhj/i;->o(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v4, v3, v5, v9}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1d

    :cond_4c
    iget-object v5, v0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v10, :cond_4d

    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v10

    goto :goto_1b

    :cond_4d
    const/4 v10, 0x0

    :goto_1b
    iget-object v11, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v11, :cond_4e

    invoke-virtual {v11}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v12

    goto :goto_1c

    :cond_4e
    const/4 v12, 0x0

    :goto_1c
    iget-object v11, v0, Lcom/transsion/postdetail/layer/local/c0;->I:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "is_start="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " subject_id="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " requestId="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " urlOrPath="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x1

    invoke-virtual {v4, v5, v9, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1d
    sget-object v12, Lhj/i;->a:Lhj/i;

    iget-object v13, v0, Lcom/transsion/postdetail/layer/local/c0;->S:Ljava/lang/String;

    iget-object v14, v0, Lcom/transsion/postdetail/layer/local/c0;->T:Ljava/lang/String;

    iget-wide v3, v0, Lcom/transsion/postdetail/layer/local/c0;->n:J

    move-wide v15, v3

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Lhj/i;->H(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_50

    :cond_4f
    move-object v3, v6

    :cond_50
    invoke-virtual {v2, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v3, :cond_51

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_52

    :cond_51
    move-object v3, v6

    :cond_52
    invoke-virtual {v2, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/transsion/postdetail/layer/local/c0;->H:Ljava/lang/String;

    if-nez v3, :cond_53

    :goto_1e
    move-object/from16 v3, v19

    goto :goto_1f

    :cond_53
    move-object v6, v3

    goto :goto_1e

    :goto_1f
    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_music_liked_fragment"

    iget-boolean v4, v0, Lcom/transsion/postdetail/layer/local/c0;->f0:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v3, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    iget-object v4, v0, Lcom/transsion/postdetail/layer/local/c0;->T:Ljava/lang/String;

    sget-object v5, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v5}, Lcom/transsion/baselib/report/l;->o()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/transsion/baselib/report/e;->l(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/layer/local/c0;->y(Z)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/c0;->a0:Z

    return v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->Y:Ljava/util/Map;

    return-object v0
.end method

.method public final g()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->c:J

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "initView"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final h(Ljava/lang/Double;JJLjava/lang/Double;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onBandwidthRedundancyRate"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBandwidthRedundancyRate: redundancyRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0ctotalDownloadBytesAll : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\uff0cconsumed:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",poolPercent:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->j:Ljava/lang/Double;

    iput-object p6, p0, Lcom/transsion/postdetail/layer/local/c0;->k:Ljava/lang/Double;

    return-void
.end method

.method public final i()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onCompletion"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/c0;->r:Z

    return-void
.end method

.method public final j()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onLoadingBegin"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->g:J

    return-void
.end method

.method public final k()V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->g:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->f:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->f:J

    iget v0, p0, Lcom/transsion/postdetail/layer/local/c0;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/layer/local/c0;->h:I

    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->g:J

    :cond_0
    return-void
.end method

.method public final l(Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 7

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/c0;->s:Z

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocalUiChanged\uff0c uiType= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final m(Lcom/transsion/player/orplayer/PlayError;)V
    .locals 6

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->z:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->A:Ljava/lang/String;

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/c0;->z:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayError, playerErrorCode  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", playerErrorMessage ="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->A:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/postdetail/layer/local/c0;->H(ILjava/lang/String;)V

    return-void
.end method

.method public final n(J)V
    .locals 6

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->y:J

    :cond_1
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->m:J

    sub-long v2, p1, v0

    const-wide/16 v4, 0x1

    cmp-long v4, v4, v2

    if-gtz v4, :cond_4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->n:J

    sub-long v4, p1, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->n:J

    iget-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->t:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->q:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->q:J

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/transsion/postdetail/layer/local/c0;->s:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->p:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->p:J

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->o:J

    sub-long v0, p1, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->o:J

    :cond_4
    :goto_0
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/c0;->m:J

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->l:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_5

    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/c0;->l:J

    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->J:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/c0;->f()Lyj/c;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->n:J

    invoke-interface {p1, v0, v1}, Lyj/c;->a(J)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final o()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onRenderFirstFrame"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->e:J

    return-void
.end method

.method public final p()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "oonReplayonReplay"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/c0;->M:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/c0;->u:Z

    return-void
.end method

.method public final q()V
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/layer/local/c0;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/layer/local/c0;->i:I

    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c0;->Z:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubtitleSelected = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->E:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->F:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/postdetail/layer/local/c0;->G:I

    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c0;->C:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/c0;->D:Ljava/lang/String;

    return-void
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/postdetail/layer/local/c0;->O:I

    return-void
.end method

.method public final v(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/postdetail/layer/local/c0;->N:I

    return-void
.end method

.method public final w()V
    .locals 7

    iget v0, p0, Lcom/transsion/postdetail/layer/local/c0;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/layer/local/c0;->x:I

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "onVideoPause"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->v:J

    return-void
.end method

.method public final x()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/c0;->b:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onVideoStart"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/c0;->v:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->v:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->w:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/transsion/postdetail/layer/local/c0;->w:J

    iput-wide v2, p0, Lcom/transsion/postdetail/layer/local/c0;->v:J

    :cond_0
    return-void
.end method

.method public final z(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/local/c0;->c0:Z

    return-void
.end method
