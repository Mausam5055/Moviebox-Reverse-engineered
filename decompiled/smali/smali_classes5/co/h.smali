.class public final Lco/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/h$a;,
        Lco/h$b;,
        Lco/h$c;,
        Lco/h$d;,
        Lco/h$e;
    }
.end annotation


# static fields
.field public static final M:Lco/h$b;


# instance fields
.field private A:J

.field private final B:Ljava/util/LinkedHashMap;

.field private final C:Ljava/util/List;

.field private D:J

.field private E:J

.field private final F:Landroidx/media3/common/a0$d;

.field private G:Landroidx/media3/exoplayer/b4;

.field private H:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private I:Landroidx/media3/exoplayer/u2;

.field private final J:Landroid/os/Handler;

.field private final K:Ljava/lang/Runnable;

.field private L:Lcom/transsion/player/enum/ScaleMode;

.field private final a:Landroid/content/Context;

.field private final b:Lco/m;

.field private c:Z

.field private d:Z

.field private e:Lcom/transsion/player/ui/render/SurfaceRenderView;

.field private f:Lcom/transsion/player/ui/render/TextureRenderView;

.field private g:Lcom/transsion/player/orplayer/c;

.field private h:Ljava/lang/Double;

.field private i:Lao/e;

.field private j:Ljava/lang/Float;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:F

.field private o:I

.field private p:I

.field private q:Z

.field private r:Lcom/transsion/player/orplayer/e;

.field private s:Landroidx/media3/exoplayer/ExoPlayer;

.field private t:Ljava/lang/Boolean;

.field private u:I

.field private final v:J

.field private final w:J

.field private x:Ljava/lang/String;

.field private y:Lcom/transsion/player/exo/ORExoDecoderType;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/h$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/h;->M:Lco/h$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lco/m;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lco/h;->b:Lco/m;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lco/h;->n:F

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lco/h;->t:Ljava/lang/Boolean;

    const/16 p1, 0x2d0

    iput p1, p0, Lco/h;->u:I

    const-wide/16 p1, 0x4e20

    iput-wide p1, p0, Lco/h;->v:J

    const-wide/16 p1, 0x1f4

    iput-wide p1, p0, Lco/h;->w:J

    sget-object p1, Lcom/transsion/player/exo/ORExoDecoderType;->HARDWARE:Lcom/transsion/player/exo/ORExoDecoderType;

    iput-object p1, p0, Lco/h;->y:Lcom/transsion/player/exo/ORExoDecoderType;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lco/h;->B:Ljava/util/LinkedHashMap;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lco/h;->C:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lco/h;->D:J

    new-instance p2, Lco/h$g;

    invoke-direct {p2, p0}, Lco/h$g;-><init>(Lco/h;)V

    iput-object p2, p0, Lco/h;->F:Landroidx/media3/common/a0$d;

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lco/h;->X()V

    :cond_0
    invoke-direct {p0, p1}, Lco/h;->U(Lcom/transsion/player/exo/ORExoDecoderType;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lco/h;->J:Landroid/os/Handler;

    new-instance p1, Lco/e;

    invoke-direct {p1, p0}, Lco/e;-><init>(Lco/h;)V

    iput-object p1, p0, Lco/h;->K:Ljava/lang/Runnable;

    sget-object p1, Lcom/transsion/player/enum/ScaleMode;->SCALE_TO_FILL:Lcom/transsion/player/enum/ScaleMode;

    iput-object p1, p0, Lco/h;->L:Lcom/transsion/player/enum/ScaleMode;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lco/m;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-static {}, Lco/n;->a()Lco/m;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lco/h;-><init>(Landroid/content/Context;Lco/m;Z)V

    return-void
.end method

.method public static final synthetic A(Lco/h;)Z
    .locals 0

    iget-boolean p0, p0, Lco/h;->c:Z

    return p0
.end method

.method public static final synthetic B(Lco/h;)Z
    .locals 0

    iget-boolean p0, p0, Lco/h;->d:Z

    return p0
.end method

.method public static final synthetic C(Lco/h;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lco/h;->t:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic D(Lco/h;Ly1/c$a;Landroidx/media3/common/i0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lco/h;->h0(Ly1/c$a;Landroidx/media3/common/i0;)V

    return-void
.end method

.method public static final synthetic E(Lco/h;)V
    .locals 0

    invoke-direct {p0}, Lco/h;->i0()V

    return-void
.end method

.method public static final synthetic F(Lco/h;Z)V
    .locals 0

    iput-boolean p1, p0, Lco/h;->q:Z

    return-void
.end method

.method public static final synthetic G(Lco/h;J)V
    .locals 0

    iput-wide p1, p0, Lco/h;->E:J

    return-void
.end method

.method public static final synthetic H(Lco/h;Z)V
    .locals 0

    iput-boolean p1, p0, Lco/h;->c:Z

    return-void
.end method

.method public static final synthetic I(Lco/h;Z)V
    .locals 0

    iput-boolean p1, p0, Lco/h;->d:Z

    return-void
.end method

.method public static final synthetic J(Lco/h;J)V
    .locals 0

    iput-wide p1, p0, Lco/h;->z:J

    return-void
.end method

.method public static final synthetic K(Lco/h;J)V
    .locals 0

    iput-wide p1, p0, Lco/h;->A:J

    return-void
.end method

.method public static final synthetic L(Lco/h;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lco/h;->m0(J)V

    return-void
.end method

.method public static final synthetic M(Lco/h;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lco/h;->o0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final N(Lao/e;)V
    .locals 5

    new-instance v0, Landroidx/media3/datasource/rtmp/RtmpDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/rtmp/RtmpDataSource$Factory;-><init>()V

    sget-object v1, Loo/e;->a:Loo/e;

    const-string v2, "addRtmpDataSource "

    const/4 v3, 0x1

    const-string v4, "ORExoPlayer"

    invoke-virtual {v1, v4, v2, v3}, Loo/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Landroidx/media3/exoplayer/source/b0$b;

    check-cast v0, Landroidx/media3/datasource/a$a;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/b0$b;-><init>(Landroidx/media3/datasource/a$a;)V

    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/t;->b(Ljava/lang/String;)Landroidx/media3/common/t;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/b0$b;->h(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/b0;

    move-result-object p1

    const-string v0, "createMediaSource(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->U(Landroidx/media3/exoplayer/source/r;)V

    :cond_0
    return-void
.end method

.method private static final P(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;
    .locals 0

    sget-object p0, Landroidx/media3/exoplayer/drm/t;->a:Landroidx/media3/exoplayer/drm/t;

    return-object p0
.end method

.method private final Q(Ljava/lang/String;IIJJJJ)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p10, p11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final R()Lao/e;
    .locals 6

    iget-object v0, p0, Lco/h;->i:Lao/e;

    iget-object v1, p0, Lco/h;->x:Ljava/lang/String;

    invoke-direct {p0}, Lco/h;->a0()V

    const-string v2, "video/av01"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/transsion/player/exo/ORExoDecoderType;->AV1:Lcom/transsion/player/exo/ORExoDecoderType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/transsion/player/exo/ORExoDecoderType;->FFMPEG:Lcom/transsion/player/exo/ORExoDecoderType;

    :goto_0
    iput-object v2, p0, Lco/h;->y:Lcom/transsion/player/exo/ORExoDecoderType;

    sget-object v3, Loo/e;->a:Loo/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u91cd\u65b0\u521b\u5efa\u64ad\u653e\u5668\u5207\u6362\u7f16\u7801, DecoderType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",MimeTyp:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v4, "ORExoPlayer"

    invoke-virtual {v3, v4, v1, v2}, Loo/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lco/h;->y:Lcom/transsion/player/exo/ORExoDecoderType;

    invoke-direct {p0, v1}, Lco/h;->U(Lcom/transsion/player/exo/ORExoDecoderType;)V

    invoke-direct {p0}, Lco/h;->Z()V

    return-object v0
.end method

.method private final S(J)V
    .locals 4

    iget-wide v0, p0, Lco/h;->D:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lco/h;->C:Ljava/util/List;

    new-instance v3, Lco/h$d;

    invoke-direct {v3, v0, v1, p1, p2}, Lco/h$d;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lco/h;->D:J

    return-void
.end method

.method private final T(Ljava/util/List;)J
    .locals 24

    move-object/from16 v9, p0

    iget-object v0, v9, Lco/h;->B:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v0, 0x0

    move-wide v11, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v0

    check-cast v13, Lco/h$c;

    invoke-virtual {v13}, Lco/h$c;->b()I

    move-result v0

    invoke-direct {v9, v0}, Lco/h;->b0(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v13}, Lco/h$c;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {v13}, Lco/h$c;->a()J

    move-result-wide v0

    long-to-double v0, v0

    add-double/2addr v11, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v13}, Lco/h$c;->d()J

    move-result-wide v14

    invoke-virtual {v13}, Lco/h$c;->c()J

    move-result-wide v16

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v14, v0

    if-eqz v2, :cond_1

    cmp-long v0, v16, v0

    if-eqz v0, :cond_1

    cmp-long v0, v16, v14

    if-gtz v0, :cond_2

    :cond_1
    move-object/from16 v23, v10

    goto :goto_3

    :cond_2
    sub-long v0, v16, v14

    long-to-double v7, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const-wide/16 v0, 0x0

    move-wide v5, v0

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/h$d;

    invoke-virtual {v0}, Lco/h$d;->b()J

    move-result-wide v19

    invoke-virtual {v0}, Lco/h$d;->a()J

    move-result-wide v21

    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide/from16 v3, v16

    move-object/from16 v23, v10

    move-wide v9, v5

    move-wide/from16 v5, v19

    move-wide/from16 v19, v7

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v8}, Lco/h;->j0(JJJJ)J

    move-result-wide v0

    add-long v5, v9, v0

    move-object/from16 v9, p0

    move-wide/from16 v7, v19

    move-object/from16 v10, v23

    goto :goto_1

    :cond_3
    move-wide/from16 v19, v7

    move-object/from16 v23, v10

    move-wide v9, v5

    long-to-double v0, v9

    div-double v2, v0, v19

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->k(DDD)D

    move-result-wide v0

    invoke-virtual {v13}, Lco/h$c;->a()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, v0

    add-double/2addr v11, v2

    :goto_2
    move-object/from16 v9, p0

    move-object/from16 v10, v23

    goto/16 :goto_0

    :goto_3
    invoke-virtual {v13}, Lco/h$c;->a()J

    move-result-wide v0

    long-to-double v0, v0

    add-double/2addr v11, v0

    goto :goto_2

    :cond_4
    move-object/from16 v9, p0

    goto/16 :goto_0

    :cond_5
    double-to-long v0, v11

    return-wide v0
.end method

.method private final U(Lcom/transsion/player/exo/ORExoDecoderType;)V
    .locals 6

    iget-object v0, p0, Lco/h;->b:Lco/m;

    invoke-virtual {v0}, Lco/m;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lco/h;->b:Lco/m;

    invoke-virtual {v0}, Lco/m;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e20

    :goto_0
    sget-object v1, Loo/e;->a:Loo/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPlayer, DecoderType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ORExoPlayer"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Loo/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Landroidx/media3/exoplayer/m$b;

    invoke-direct {v1}, Landroidx/media3/exoplayer/m$b;-><init>()V

    const/16 v2, 0x1f4

    const/16 v3, 0x3e8

    const/16 v5, 0x1388

    invoke-virtual {v1, v5, v0, v2, v3}, Landroidx/media3/exoplayer/m$b;->b(IIII)Landroidx/media3/exoplayer/m$b;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/m$b;->d(I)Landroidx/media3/exoplayer/m$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/m$b;->c(Z)Landroidx/media3/exoplayer/m$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/m$b;->a()Landroidx/media3/exoplayer/m;

    move-result-object v0

    iput-object v0, p0, Lco/h;->I:Landroidx/media3/exoplayer/u2;

    iget-object v0, p0, Lco/h;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lco/a;->b(Landroid/content/Context;Lcom/transsion/player/exo/ORExoDecoderType;)Landroidx/media3/exoplayer/b4;

    move-result-object p1

    iput-object p1, p0, Lco/h;->G:Landroidx/media3/exoplayer/b4;

    new-instance p1, Landroidx/media3/exoplayer/ExoPlayer$b;

    iget-object v0, p0, Lco/h;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$b;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/media3/exoplayer/source/i;

    iget-object v1, p0, Lco/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/i;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lco/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/a;->d(Landroid/content/Context;)Landroidx/media3/datasource/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/i;->q(Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$b;->q(Landroidx/media3/exoplayer/source/r$a;)Landroidx/media3/exoplayer/ExoPlayer$b;

    move-result-object p1

    iget-object v0, p0, Lco/h;->G:Landroidx/media3/exoplayer/b4;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$b;->r(Landroidx/media3/exoplayer/b4;)Landroidx/media3/exoplayer/ExoPlayer$b;

    move-result-object p1

    iget-object v0, p0, Lco/h;->I:Landroidx/media3/exoplayer/u2;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$b;->p(Landroidx/media3/exoplayer/u2;)Landroidx/media3/exoplayer/ExoPlayer$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayer$b;->h()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lco/h;->F:Landroidx/media3/common/a0$d;

    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->M(Landroidx/media3/common/a0$d;)V

    new-instance v0, Lco/h$f;

    invoke-direct {v0, p0}, Lco/h$f;-><init>(Lco/h;)V

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->D(Ly1/c;)V

    iput-object p1, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    return-void
.end method

.method private final V(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UNKNOWN"

    goto :goto_0

    :pswitch_0
    const-string p1, "AD"

    goto :goto_0

    :pswitch_1
    const-string p1, "TIME_SYNC"

    goto :goto_0

    :pswitch_2
    const-string p1, "MANIFEST"

    goto :goto_0

    :pswitch_3
    const-string p1, "DRM"

    goto :goto_0

    :pswitch_4
    const-string p1, "MEDIA_INIT"

    goto :goto_0

    :pswitch_5
    const-string p1, "MEDIA"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final X()V
    .locals 3

    new-instance v0, Lco/h$h;

    invoke-direct {v0, p0}, Lco/h$h;-><init>(Lco/h;)V

    new-instance v1, Lcom/transsion/player/orplayer/c;

    new-instance v2, Lco/g;

    invoke-direct {v2, p0}, Lco/g;-><init>(Lco/h;)V

    invoke-direct {v1, v0, v2}, Lcom/transsion/player/orplayer/c;-><init>(Lcom/transsion/player/orplayer/d;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lco/h;->g:Lcom/transsion/player/orplayer/c;

    return-void
.end method

.method private static final Y(Lco/h;Z)Lkotlin/Unit;
    .locals 1

    iget-object p0, p0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/player/orplayer/f;

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onFocusChange(Z)V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final Z()V
    .locals 1

    iget-boolean v0, p0, Lco/h;->m:Z

    invoke-virtual {p0, v0}, Lco/h;->setMute(Z)V

    iget-object v0, p0, Lco/h;->j:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lco/h;->setVolume(F)V

    :cond_0
    iget-boolean v0, p0, Lco/h;->l:Z

    invoke-virtual {p0, v0}, Lco/h;->setLooping(Z)V

    iget-boolean v0, p0, Lco/h;->k:Z

    invoke-virtual {p0, v0}, Lco/h;->setAutoPlay(Z)V

    iget v0, p0, Lco/h;->n:F

    invoke-virtual {p0, v0}, Lco/h;->setSpeed(F)V

    iget-object v0, p0, Lco/h;->e:Lcom/transsion/player/ui/render/SurfaceRenderView;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lco/h;->setSurfaceView(Landroid/view/SurfaceView;)V

    :cond_1
    iget-object v0, p0, Lco/h;->f:Lcom/transsion/player/ui/render/TextureRenderView;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lco/h;->setTextureView(Landroid/view/TextureView;)V

    :cond_2
    iget-object v0, p0, Lco/h;->L:Lcom/transsion/player/enum/ScaleMode;

    invoke-virtual {p0, v0}, Lco/h;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    return-void
.end method

.method private final a0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/h;->c:Z

    iput-boolean v0, p0, Lco/h;->q:Z

    iput-boolean v0, p0, Lco/h;->d:Z

    const-string v0, "ORExoPlayer"

    const-string v1, "innerRelease"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lko/m0;->a:Lko/m0;

    invoke-virtual {v0, p0}, Lko/m0;->a(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/a0;->stop()V

    :cond_1
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/a0;->B()V

    :cond_2
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/media3/common/a0;->clearVideoSurface()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final b0(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic c(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;
    .locals 0

    invoke-static {p0}, Lco/h;->P(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;

    move-result-object p0

    return-object p0
.end method

.method private final c0(Lao/e;)Z
    .locals 7

    invoke-virtual {p1}, Lao/e;->j()Lcom/transsion/player/enum/PlayMimeType;

    move-result-object v0

    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->RTMP:Lcom/transsion/player/enum/PlayMimeType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "toLowerCase(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "rtmp://"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, v3, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lao/e;->u(Lcom/transsion/player/enum/PlayMimeType;)V

    return v2

    :cond_1
    return v6
.end method

.method public static synthetic d(Lco/h;)V
    .locals 0

    invoke-static {p0}, Lco/h;->n0(Lco/h;)V

    return-void
.end method

.method private final d0(Lao/e;)Z
    .locals 8

    invoke-virtual {p1}, Lao/e;->j()Lcom/transsion/player/enum/PlayMimeType;

    move-result-object v0

    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->DASH:Lcom/transsion/player/enum/PlayMimeType;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lao/e;->j()Lcom/transsion/player/enum/PlayMimeType;

    move-result-object v0

    sget-object v3, Lcom/transsion/player/enum/PlayMimeType;->HLS:Lcom/transsion/player/enum/PlayMimeType;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".mpd"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v0, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lao/e;->u(Lcom/transsion/player/enum/PlayMimeType;)V

    return v2

    :cond_1
    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".m3u8"

    invoke-static {v0, v1, v5, v6, v7}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Lao/e;->u(Lcom/transsion/player/enum/PlayMimeType;)V

    return v2

    :cond_2
    return v5

    :cond_3
    :goto_0
    return v2
.end method

.method public static synthetic e(Lco/h;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lco/h;->Y(Lco/h;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final e0(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0}, Lco/h;->W()Lco/h$a;

    move-result-object v1

    invoke-virtual {v1}, Lco/h$a;->d()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.4f"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-virtual {v1}, Lco/h$a;->b()J

    move-result-wide v2

    invoke-virtual {v1}, Lco/h$a;->c()J

    move-result-wide v4

    invoke-virtual {v1}, Lco/h$a;->a()J

    move-result-wide v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bw-stats scene="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", downloadAll="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", downloadMedia="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", consumedEstimated="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", redundancyRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final synthetic f(Lco/h;Ljava/lang/String;IIJJJJ)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p11}, Lco/h;->Q(Ljava/lang/String;IIJJJJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final f0()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, v0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v3}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v4

    invoke-interface {v3}, Landroidx/media3/common/a0;->getBufferedPosition()J

    move-result-wide v8

    invoke-static {v8, v9, v4, v5}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v8

    sub-long v10, v8, v4

    invoke-static {v10, v11, v6, v7}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v6

    long-to-double v10, v6

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    iget-wide v12, v0, Lco/h;->v:J

    long-to-double v12, v12

    div-double v14, v10, v12

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    invoke-static/range {v14 .. v19}, Lkotlin/ranges/RangesKt;->k(DDD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v0, Lco/h;->h:Ljava/lang/Double;

    iget-wide v12, v0, Lco/h;->v:J

    iget-wide v14, v0, Lco/h;->w:J

    sub-long/2addr v12, v14

    cmp-long v3, v6, v12

    if-ltz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v10, v11, v1

    invoke-static {v11, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exo-buffer-pool scene=release, current="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", bufferedPosition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", bufferedMs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", poolPercent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPoolFull="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final synthetic g(Lco/h;)Lao/e;
    .locals 0

    invoke-direct {p0}, Lco/h;->R()Lao/e;

    move-result-object p0

    return-object p0
.end method

.method private final g0()V
    .locals 4

    iget-object v0, p0, Lco/h;->J:Landroid/os/Handler;

    iget-object v1, p0, Lco/h;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lco/h;->J:Landroid/os/Handler;

    iget-object v1, p0, Lco/h;->K:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final synthetic h(Lco/h;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lco/h;->S(J)V

    return-void
.end method

.method private final h0(Ly1/c$a;Landroidx/media3/common/i0;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "get(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/media3/common/i0$a;

    iget v6, v5, Landroidx/media3/common/i0$a;->a:I

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    invoke-virtual {v5, v7}, Landroidx/media3/common/i0$a;->b(I)Landroidx/media3/common/r;

    move-result-object v8

    const-string v9, "getTrackFormat(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Loo/e;->a:Loo/e;

    iget-object v10, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    iget v11, v8, Landroidx/media3/common/r;->j:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onGetTracksInfo  MimeType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\uff0c bitrate\uff1a"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "ORExoPlayer"

    const/4 v13, 0x0

    move-object v10, v9

    invoke-static/range {v10 .. v15}, Loo/e;->i(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v10, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    if-eqz v10, :cond_0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v13, "video"

    invoke-static {v10, v13, v2, v11, v12}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-ne v10, v4, :cond_0

    iget-object v8, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    iput-object v8, v0, Lco/h;->x:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--------onGetTracksInfo curVideoMimeType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "ORExoPlayer"

    const/4 v13, 0x0

    move-object v10, v9

    invoke-static/range {v10 .. v15}, Loo/e;->f(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lco/h;->y:Lcom/transsion/player/exo/ORExoDecoderType;

    sget-object v2, Lcom/transsion/player/exo/ORExoDecoderType;->AV1:Lcom/transsion/player/exo/ORExoDecoderType;

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lco/h;->x:Ljava/lang/String;

    const-string v2, "video/av01"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_3

    sget-object v1, Loo/e;->a:Loo/e;

    iget-object v2, v0, Lco/h;->x:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exo av1\uff0c\u5f3a\u5236\u5207\u6362\u5230\u8f6f\u89e3\uff0c MimeType:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ORExoPlayer"

    invoke-virtual {v1, v3, v2, v4}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lco/h;->R()Lao/e;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lco/h;->setDataSource(Lao/e;)V

    invoke-virtual/range {p0 .. p0}, Lco/h;->prepare()V

    :cond_3
    return-void
.end method

.method public static final synthetic i(Lco/h;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lco/h;->V(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final i0()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {v1}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "get(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/media3/common/i0$a;

    iget v6, v5, Landroidx/media3/common/i0$a;->a:I

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    invoke-virtual {v5, v7}, Landroidx/media3/common/i0$a;->b(I)Landroidx/media3/common/r;

    move-result-object v8

    const-string v9, "getTrackFormat(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v9}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "--onPrepare2GetBitrate  MimeType:"

    if-eqz v9, :cond_0

    iget-object v9, v0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroidx/media3/exoplayer/ExoPlayer;->I()Landroidx/media3/common/r;

    move-result-object v9

    if-eqz v9, :cond_1

    iget v9, v9, Landroidx/media3/common/r;->j:I

    iget v11, v8, Landroidx/media3/common/r;->j:I

    if-ne v9, v11, :cond_1

    iput v11, v0, Lco/h;->o:I

    sget-object v12, Loo/e;->a:Loo/e;

    iget-object v8, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\uff0cvideoBitrate\uff1a"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "ORExoPlayer"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v8, v0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/player/orplayer/f;

    iget v10, v0, Lco/h;->o:I

    invoke-interface {v9, v10}, Lcom/transsion/player/orplayer/f;->onTracksVideoBitrateChange(I)V

    goto :goto_2

    :cond_0
    iget-object v9, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v9}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroidx/media3/exoplayer/ExoPlayer;->R()Landroidx/media3/common/r;

    move-result-object v9

    if-eqz v9, :cond_1

    iget v9, v9, Landroidx/media3/common/r;->j:I

    iget v11, v8, Landroidx/media3/common/r;->j:I

    if-ne v9, v11, :cond_1

    iput v11, v0, Lco/h;->p:I

    sget-object v12, Loo/e;->a:Loo/e;

    iget-object v8, v8, Landroidx/media3/common/r;->o:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\uff0caudioBitrate\uff1a"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "ORExoPlayer"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v8, v0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/player/orplayer/f;

    iget v10, v0, Lco/h;->p:I

    invoke-interface {v9, v10}, Lcom/transsion/player/orplayer/f;->onTracksAudioBitrateChange(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static final synthetic j(Lco/h;)Lcom/transsion/player/orplayer/c;
    .locals 0

    iget-object p0, p0, Lco/h;->g:Lcom/transsion/player/orplayer/c;

    return-object p0
.end method

.method private final j0(JJJJ)J
    .locals 0

    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p3, p4, p7, p8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x0

    invoke-static {p3, p4, p1, p2}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public static final synthetic k(Lco/h;)Lcom/transsion/player/exo/ORExoDecoderType;
    .locals 0

    iget-object p0, p0, Lco/h;->y:Lcom/transsion/player/exo/ORExoDecoderType;

    return-object p0
.end method

.method private final k0()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/h;->z:J

    iput-wide v0, p0, Lco/h;->A:J

    iget-object v2, p0, Lco/h;->B:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v2, p0, Lco/h;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lco/h;->D:J

    iput-wide v0, p0, Lco/h;->E:J

    return-void
.end method

.method public static final synthetic l(Lco/h;)Lko/e0;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic m(Lco/h;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    iget-object p0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method private final m0(J)V
    .locals 4

    iget-wide v0, p0, Lco/h;->D:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {p1, p2, v2, v3}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lco/h;->D:J

    :cond_0
    return-void
.end method

.method public static final synthetic n(Lco/h;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lco/h;->J:Landroid/os/Handler;

    return-object p0
.end method

.method private static final n0(Lco/h;)V
    .locals 5

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lco/h;->E:J

    iget-object v2, p0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/player/orplayer/f;

    iget-object v4, p0, Lco/h;->i:Lao/e;

    invoke-interface {v3, v0, v1, v4}, Lcom/transsion/player/orplayer/f;->onProgress(JLao/e;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lco/h;->g0()V

    :goto_2
    return-void
.end method

.method public static final synthetic o(Lco/h;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private final o0(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p1, "METADATA"

    goto :goto_0

    :cond_1
    const-string p1, "TEXT"

    goto :goto_0

    :cond_2
    const-string p1, "VIDEO"

    goto :goto_0

    :cond_3
    const-string p1, "AUDIO"

    goto :goto_0

    :cond_4
    const-string p1, "DEFAULT"

    :goto_0
    return-object p1
.end method

.method public static final synthetic p(Lco/h;)Lao/e;
    .locals 0

    iget-object p0, p0, Lco/h;->i:Lao/e;

    return-object p0
.end method

.method public static final synthetic q(Lco/h;)Lcom/transsion/player/ui/render/SurfaceRenderView;
    .locals 0

    iget-object p0, p0, Lco/h;->e:Lcom/transsion/player/ui/render/SurfaceRenderView;

    return-object p0
.end method

.method public static final synthetic r(Lco/h;)Lcom/transsion/player/ui/render/TextureRenderView;
    .locals 0

    iget-object p0, p0, Lco/h;->f:Lcom/transsion/player/ui/render/TextureRenderView;

    return-object p0
.end method

.method public static final synthetic s(Lco/h;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lco/h;->K:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic t(Lco/h;)J
    .locals 2

    iget-wide v0, p0, Lco/h;->z:J

    return-wide v0
.end method

.method public static final synthetic u(Lco/h;)J
    .locals 2

    iget-wide v0, p0, Lco/h;->A:J

    return-wide v0
.end method

.method public static final synthetic v(Lco/h;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lco/h;->B:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic w(Lco/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/h;->x:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic x(Lco/h;)I
    .locals 0

    iget p0, p0, Lco/h;->u:I

    return p0
.end method

.method public static final synthetic y(Lco/h;)Z
    .locals 0

    iget-boolean p0, p0, Lco/h;->q:Z

    return p0
.end method

.method public static final synthetic z(Lco/h;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lco/h;->b0(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final O(Lao/e;)Z
    .locals 7

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lao/e;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroidx/media3/common/t$c;

    invoke-direct {v1}, Landroidx/media3/common/t$c;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/media3/common/t$c;->j(Ljava/lang/String;)Landroidx/media3/common/t$c;

    move-result-object v1

    invoke-virtual {p1}, Lao/e;->l()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/t$c;->d(Ljava/lang/String;)Landroidx/media3/common/t$c;

    move-result-object v1

    invoke-virtual {p1}, Lao/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/t$c;->b(Ljava/lang/String;)Landroidx/media3/common/t$c;

    move-result-object v1

    invoke-virtual {p1}, Lao/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/t$c;->h(Ljava/lang/Object;)Landroidx/media3/common/t$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "http"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v2, v4, v5, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lco/d;->a:Lco/d;

    invoke-virtual {p1}, Lao/e;->f()Z

    move-result v2

    invoke-virtual {p1}, Lao/e;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lco/d;->a(ZLjava/util/Map;)Landroidx/media3/datasource/HttpDataSource$a;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/datasource/b$a;

    iget-object v2, p0, Lco/h;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/media3/datasource/b$a;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p1}, Lao/e;->j()Lcom/transsion/player/enum/PlayMimeType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dash addStreamDataSource, mimeType:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lao/e;->j()Lcom/transsion/player/enum/PlayMimeType;

    move-result-object v2

    sget-object v3, Lco/h$e;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-eq v2, v5, :cond_2

    return v4

    :cond_2
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Landroidx/media3/datasource/a$a;)V

    goto :goto_1

    :cond_3
    new-instance v2, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Landroidx/media3/datasource/a$a;)V

    :goto_1
    new-instance v0, Lco/f;

    invoke-direct {v0}, Lco/f;-><init>()V

    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/source/r$a;->e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/r$a;->d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;

    move-result-object v0

    iget-object v1, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->U(Landroidx/media3/exoplayer/source/r;)V

    :cond_4
    iput-object p1, p0, Lco/h;->i:Lao/e;

    return v3
.end method

.method public final W()Lco/h$a;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/h;->C:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iget-wide v2, v0, Lco/h;->D:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, v0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Lco/h;->E:J

    :goto_0
    iget-wide v6, v0, Lco/h;->D:J

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    new-instance v8, Lco/h$d;

    invoke-direct {v8, v6, v7, v2, v3}, Lco/h$d;-><init>(JJ)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {v0, v1}, Lco/h;->T(Ljava/util/List;)J

    move-result-wide v14

    cmp-long v1, v14, v4

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-wide v1, v0, Lco/h;->z:J

    sub-long v3, v1, v14

    long-to-double v3, v3

    long-to-double v1, v1

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_3
    move-object/from16 v16, v1

    new-instance v1, Lco/h$a;

    iget-wide v10, v0, Lco/h;->z:J

    iget-wide v12, v0, Lco/h;->A:J

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lco/h$a;-><init>(JJJLjava/lang/Double;)V

    return-object v1
.end method

.method public addDataSource(Lao/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->a(Lcom/transsion/player/orplayer/g;Lao/e;)Z

    move-result p1

    return p1
.end method

.method public addPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->b(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public changeTrackSelection(Lmo/d;I)V
    .locals 3

    const-string v0, "mediaTrackGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lmo/d;->b()[Lmo/b;

    move-result-object v0

    array-length v0, v0

    if-ltz p2, :cond_2

    if-lt p2, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Lmo/d;->b()[Lmo/b;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lmo/b;->a()I

    move-result v0

    iput v0, p0, Lco/h;->o:I

    iget-object v0, p0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    iget v2, p0, Lco/h;->o:I

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/f;->onTracksVideoBitrateChange(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget v0, p0, Lco/h;->o:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeTrackSelection  mediaTrackGroup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoBitrate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lmo/a;->a(Landroidx/media3/common/i0;Lmo/d;)Landroidx/media3/common/f0;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v1, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/media3/common/a0;->l()Landroidx/media3/common/h0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/h0;->a()Landroidx/media3/common/h0$c;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/g0;

    invoke-direct {v2, p1, p2}, Landroidx/media3/common/g0;-><init>(Landroidx/media3/common/f0;I)V

    invoke-virtual {v1, v2}, Landroidx/media3/common/h0$c;->L(Landroidx/media3/common/g0;)Landroidx/media3/common/h0$c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/h0$c;->F()Landroidx/media3/common/h0;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->V(Landroidx/media3/common/h0;)V

    :cond_2
    :goto_3
    return-void
.end method

.method public clearScreen()V
    .locals 0

    return-void
.end method

.method public clearSurfaceOnly()V
    .locals 2

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_0
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->setVideoTextureView(Landroid/view/TextureView;)V

    :cond_1
    iput-object v1, p0, Lco/h;->e:Lcom/transsion/player/ui/render/SurfaceRenderView;

    iput-object v1, p0, Lco/h;->f:Lcom/transsion/player/ui/render/TextureRenderView;

    return-void
.end method

.method public currentMediaSource()Lao/e;
    .locals 1

    iget-object v0, p0, Lco/h;->i:Lao/e;

    return-object v0
.end method

.method public enableHardwareDecoder(Z)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "ORExoPlayer"

    if-nez p1, :cond_0

    iget-object v2, p0, Lco/h;->y:Lcom/transsion/player/exo/ORExoDecoderType;

    sget-object v3, Lcom/transsion/player/exo/ORExoDecoderType;->HARDWARE:Lcom/transsion/player/exo/ORExoDecoderType;

    if-ne v2, v3, :cond_0

    sget-object p1, Loo/e;->a:Loo/e;

    const-string v2, "1-\u786c\u89e3\u5207\u5230\u8f6f\u89e3\uff0c\u91cd\u65b0\u521b\u5efa\u8bbe\u7f6e"

    invoke-virtual {p1, v1, v2, v0}, Loo/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lco/h;->R()Lao/e;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lco/h;->y:Lcom/transsion/player/exo/ORExoDecoderType;

    sget-object v2, Lcom/transsion/player/exo/ORExoDecoderType;->HARDWARE:Lcom/transsion/player/exo/ORExoDecoderType;

    if-eq p1, v2, :cond_1

    iput-object v2, p0, Lco/h;->y:Lcom/transsion/player/exo/ORExoDecoderType;

    sget-object p1, Loo/e;->a:Loo/e;

    const-string v2, "2-\u8f6f\u89e3\u5207\u6362\u5230\u786c\u89e3\uff0c\u91cd\u65b0\u521b\u5efa\u8bbe\u7f6e"

    invoke-virtual {p1, v1, v2, v0}, Loo/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lco/h;->y:Lcom/transsion/player/exo/ORExoDecoderType;

    invoke-direct {p0, p1}, Lco/h;->U(Lcom/transsion/player/exo/ORExoDecoderType;)V

    invoke-direct {p0}, Lco/h;->Z()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getBitrate()Lkotlin/Pair;
    .locals 3

    new-instance v0, Lkotlin/Pair;

    iget v1, p0, Lco/h;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lco/h;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getCurrentTracks()Lmo/c;
    .locals 3

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lmo/a;->c(Landroidx/media3/common/i0;)Lmo/c;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lmo/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lmo/c;-><init>(Lcom/google/common/collect/ImmutableList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    return-object v0
.end method

.method public getCurrentVideoFormat()Lmo/b;
    .locals 1

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->I()Landroidx/media3/common/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lmo/a;->b(Landroidx/media3/common/r;)Lmo/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDownloadBitrate()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->j(Lcom/transsion/player/orplayer/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->k(Lcom/transsion/player/orplayer/g;)I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->l(Lcom/transsion/player/orplayer/g;)I

    move-result v0

    return v0
.end method

.method public getVolume()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lco/h;->j:Ljava/lang/Float;

    return-object v0
.end method

.method public isComplete()Z
    .locals 3

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLoading()Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->m(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->W()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrepared()Z
    .locals 3

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final l0(Lcom/transsion/player/orplayer/e;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lco/h;->r:Lcom/transsion/player/orplayer/e;

    return-void
.end method

.method public pause()V
    .locals 4

    iget-object v0, p0, Lco/h;->g:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    :cond_0
    const-string v0, "ORExoPlayer"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lco/h;->E:J

    :goto_0
    invoke-direct {p0, v2, v3}, Lco/h;->S(J)V

    invoke-direct {p0, v1}, Lco/h;->e0(Ljava/lang/String;)V

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/a0;->pause()V

    :cond_2
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlayWhenReady()Z

    :cond_3
    iget-object v0, p0, Lco/h;->g:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_4
    return-void
.end method

.method public play()V
    .locals 2

    const-string v0, "ORExoPlayer"

    const-string v1, "play"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->c()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/a0;->prepare()V

    :cond_1
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/a0;->play()V

    :cond_2
    iget-object v0, p0, Lco/h;->g:Lcom/transsion/player/orplayer/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    :cond_3
    iget-object v0, p0, Lco/h;->g:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->e()V

    :cond_4
    iput-boolean v1, p0, Lco/h;->q:Z

    return-void
.end method

.method public prepare()V
    .locals 2

    const-string v0, "ORExoPlayer"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->prepare()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/h;->q:Z

    return-void
.end method

.method public release()V
    .locals 8

    invoke-direct {p0}, Lco/h;->f0()V

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lco/h;->E:J

    :goto_0
    invoke-direct {p0, v0, v1}, Lco/h;->S(J)V

    const-string v0, "release"

    invoke-direct {p0, v0}, Lco/h;->e0(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/h;->c:Z

    iput-boolean v1, p0, Lco/h;->q:Z

    iput-boolean v1, p0, Lco/h;->d:Z

    const-string v1, "ORExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lko/m0;->a:Lko/m0;

    invoke-virtual {v0, p0}, Lko/m0;->a(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/a0;->stop()V

    :cond_2
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/media3/common/a0;->B()V

    :cond_3
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/media3/common/a0;->clearVideoSurface()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lco/h;->i:Lao/e;

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/f;->onPlayerRelease(Lao/e;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lco/h;->W()Lco/h$a;

    move-result-object v0

    iget-object v1, p0, Lco/h;->r:Lcom/transsion/player/orplayer/e;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lco/h$a;->d()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0}, Lco/h$a;->b()J

    move-result-wide v3

    invoke-virtual {v0}, Lco/h$a;->a()J

    move-result-wide v5

    iget-object v7, p0, Lco/h;->h:Ljava/lang/Double;

    invoke-interface/range {v1 .. v7}, Lcom/transsion/player/orplayer/e;->a(Ljava/lang/Double;JJLjava/lang/Double;)V

    :cond_7
    iget-object v0, p0, Lco/h;->g:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lco/h;->x:Ljava/lang/String;

    sget-object v1, Lcom/transsion/player/exo/ORExoDecoderType;->HARDWARE:Lcom/transsion/player/exo/ORExoDecoderType;

    iput-object v1, p0, Lco/h;->y:Lcom/transsion/player/exo/ORExoDecoderType;

    iput-object v0, p0, Lco/h;->i:Lao/e;

    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->o(Lcom/transsion/player/orplayer/g;Ljava/lang/String;)V

    return-void
.end method

.method public removeDataSource(Lao/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->p(Lcom/transsion/player/orplayer/g;Lao/e;)Z

    move-result p1

    return p1
.end method

.method public removePlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->q(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestForce()Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->r(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    const-string v0, "ORExoPlayer"

    const-string v1, "reset    "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lco/h;->E:J

    :goto_0
    invoke-direct {p0, v0, v1}, Lco/h;->S(J)V

    const-string v0, "reset"

    invoke-direct {p0, v0}, Lco/h;->e0(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/h;->c:Z

    iput-boolean v0, p0, Lco/h;->q:Z

    iput-boolean v0, p0, Lco/h;->d:Z

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/a0;->stop()V

    :cond_1
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/a0;->B()V

    :cond_2
    sget-object v0, Lcom/transsion/player/exo/ORExoDecoderType;->HARDWARE:Lcom/transsion/player/exo/ORExoDecoderType;

    iput-object v0, p0, Lco/h;->y:Lcom/transsion/player/exo/ORExoDecoderType;

    const/4 v0, 0x0

    iput-object v0, p0, Lco/h;->i:Lao/e;

    iget-object v0, p0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onPlayerReset()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo    mills:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/h;->q:Z

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->c()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/a0;->prepare()V

    :cond_1
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Landroidx/media3/common/a0;->seekTo(J)V

    :cond_2
    return-void
.end method

.method public seekTo(Ljava/lang/String;J)V
    .locals 7

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/g$b;->s(Lcom/transsion/player/orplayer/g;Ljava/lang/String;J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/h;->q:Z

    iget-object v1, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/media3/common/a0;->F()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, " mills:"

    const-string v3, "seekTo   uuid:"

    const-string v4, "ORExoPlayer"

    if-ge v0, v1, :cond_8

    iget-object v5, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v5, v0}, Landroidx/media3/common/a0;->O(I)Landroidx/media3/common/t;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroidx/media3/common/t$h;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v1, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->c()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v6

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lco/h;->prepare()V

    :cond_3
    iget-object v1, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroidx/media3/common/a0;->t()I

    move-result v1

    if-ne v1, v0, :cond_5

    invoke-virtual {p0}, Lco/h;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2, p3}, Landroidx/media3/common/a0;->seekTo(J)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  \u662f\u5f53\u524d\u89c6\u9891\u76f4\u63a5\u64ad\u653e"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo  index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_6

    invoke-interface {p1, v0, p2, p3}, Landroidx/media3/common/a0;->seekTo(IJ)V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lco/h;->play()V

    return-void

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  \u6ca1\u6709\u627e\u5230"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lco/h;->pause()V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    iput-boolean p1, p0, Lco/h;->k:Z

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lao/e;)V
    .locals 4

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lco/h;->k0()V

    sget-object v0, Loo/e;->a:Loo/e;

    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "ORExoPlayer"

    invoke-virtual {v0, v3, v1, v2}, Loo/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lco/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onSetDataSource()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lco/h;->d0(Lao/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lco/h;->O(Lao/e;)Z

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lco/h;->c0(Lao/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lco/h;->N(Lao/e;)V

    return-void

    :cond_2
    new-instance v0, Landroidx/media3/common/t$c;

    invoke-direct {v0}, Landroidx/media3/common/t$c;-><init>()V

    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/t$c;->j(Ljava/lang/String;)Landroidx/media3/common/t$c;

    move-result-object v0

    invoke-virtual {p1}, Lao/e;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/t$c;->d(Ljava/lang/String;)Landroidx/media3/common/t$c;

    move-result-object v0

    invoke-virtual {p1}, Lao/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/t$c;->b(Ljava/lang/String;)Landroidx/media3/common/t$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Landroidx/media3/common/a0;->H(Landroidx/media3/common/t;)V

    :cond_3
    iput-object p1, p0, Lco/h;->i:Lao/e;

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iput-boolean p1, p0, Lco/h;->l:Z

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 2

    iput-boolean p1, p0, Lco/h;->m:Z

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroidx/media3/common/a0;->A(ZI)V

    :cond_0
    return-void
.end method

.method public setPlayerConfig(Lbo/d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->w(Lcom/transsion/player/orplayer/g;Lbo/d;)V

    return-void
.end method

.method public setPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lco/h;->addPlayerListener(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V
    .locals 1

    const-string v0, "scaleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->x(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/enum/ScaleMode;)V

    iput-object p1, p0, Lco/h;->L:Lcom/transsion/player/enum/ScaleMode;

    sget-object v0, Lco/h$e;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/transsion/player/ui/render/RenderScaleMode;->SCREEN_SCALE_CENTER_CROP:Lcom/transsion/player/ui/render/RenderScaleMode;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    sget-object p1, Lcom/transsion/player/ui/render/RenderScaleMode;->SCREEN_SCALE_DEFAULT:Lcom/transsion/player/ui/render/RenderScaleMode;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsion/player/ui/render/RenderScaleMode;->SCREEN_SCALE_MATCH_PARENT:Lcom/transsion/player/ui/render/RenderScaleMode;

    :goto_0
    iget-object v0, p0, Lco/h;->f:Lcom/transsion/player/ui/render/TextureRenderView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/transsion/player/ui/render/TextureRenderView;->setScaleType(Lcom/transsion/player/ui/render/RenderScaleMode;)V

    :cond_3
    iget-object v0, p0, Lco/h;->e:Lcom/transsion/player/ui/render/SurfaceRenderView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/transsion/player/ui/render/SurfaceRenderView;->setScaleType(Lcom/transsion/player/ui/render/RenderScaleMode;)V

    :cond_4
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iput p1, p0, Lco/h;->n:F

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->a(F)V

    :cond_0
    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/player/ui/render/SurfaceRenderView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/player/ui/render/SurfaceRenderView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lco/h;->e:Lcom/transsion/player/ui/render/SurfaceRenderView;

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_1
    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/player/ui/render/TextureRenderView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/player/ui/render/TextureRenderView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lco/h;->f:Lcom/transsion/player/ui/render/TextureRenderView;

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setVideoTextureView(Landroid/view/TextureView;)V

    :cond_1
    return-void
.end method

.method public setVipResolution(ZI)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lco/h;->t:Ljava/lang/Boolean;

    iput p2, p0, Lco/h;->u:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LongVideoView \u975e\u4f1a\u5458\u53ef\u4ee5\u64ad\u653e vipResolution :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public setVolume(F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->l(FFF)F

    move-result v0

    iget-object v1, p0, Lco/h;->G:Landroidx/media3/exoplayer/b4;

    instance-of v2, v1, Lco/j;

    if-eqz v2, :cond_0

    check-cast v1, Lco/j;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lco/j;->s(F)V

    :cond_1
    iget-object v1, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Landroidx/media3/common/a0;->setVolume(F)V

    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lco/h;->j:Ljava/lang/Float;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume  volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "ORExoPlayer"

    const-string v1, "stop    "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lco/h;->E:J

    :goto_0
    invoke-direct {p0, v0, v1}, Lco/h;->S(J)V

    const-string v0, "stop"

    invoke-direct {p0, v0}, Lco/h;->e0(Ljava/lang/String;)V

    iget-object v0, p0, Lco/h;->g:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    :cond_1
    iget-object v0, p0, Lco/h;->s:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/a0;->stop()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/h;->c:Z

    iput-boolean v0, p0, Lco/h;->q:Z

    iput-boolean v0, p0, Lco/h;->d:Z

    iget-object v0, p0, Lco/h;->g:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_3
    return-void
.end method
