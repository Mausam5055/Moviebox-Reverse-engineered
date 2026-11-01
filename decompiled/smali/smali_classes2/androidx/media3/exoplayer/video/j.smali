.class public Landroidx/media3/exoplayer/video/j;
.super Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;

# interfaces
.implements Landroidx/media3/exoplayer/video/u$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/j$d;,
        Landroidx/media3/exoplayer/video/j$c;,
        Landroidx/media3/exoplayer/video/j$f;,
        Landroidx/media3/exoplayer/video/j$e;
    }
.end annotation


# static fields
.field private static final L1:[I

.field private static M1:Z

.field private static N1:Z


# instance fields
.field private A1:Landroidx/media3/common/m0;

.field private B1:I

.field private C1:Z

.field private D1:I

.field E1:Landroidx/media3/exoplayer/video/j$f;

.field private final F0:Landroid/content/Context;

.field private F1:Landroidx/media3/exoplayer/video/t;

.field private final G0:Z

.field private G1:J

.field private final H0:Landroidx/media3/exoplayer/video/i0$a;

.field private H1:J

.field private final I0:I

.field private I1:Z

.field private final J0:Z

.field private J1:Z

.field private final K0:Landroidx/media3/exoplayer/video/u;

.field private K1:I

.field private final L0:Landroidx/media3/exoplayer/video/u$a;

.field private final M0:Landroidx/media3/exoplayer/video/a;

.field private final N0:J

.field private final O0:Ljava/util/PriorityQueue;

.field private P0:Landroidx/media3/exoplayer/video/j$e;

.field private Q0:Z

.field private R0:Z

.field private S0:Landroidx/media3/exoplayer/video/VideoSink;

.field private T0:Z

.field private U0:Ljava/util/List;

.field private V0:Landroid/view/Surface;

.field private W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

.field private X0:Landroidx/media3/common/util/l0;

.field private p1:Z

.field private q1:I

.field private r1:I

.field private s1:J

.field private t1:I

.field private u1:I

.field private v1:I

.field private w1:J

.field private x1:I

.field private y1:J

.field private z1:Landroidx/media3/common/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/video/j;->L1:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method protected constructor <init>(Landroidx/media3/exoplayer/video/j$d;)V
    .locals 6

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->a(Landroidx/media3/exoplayer/video/j$d;)Landroidx/media3/exoplayer/mediacodec/t$b;

    move-result-object v2

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->b(Landroidx/media3/exoplayer/video/j$d;)Landroidx/media3/exoplayer/mediacodec/h0;

    move-result-object v3

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->e(Landroidx/media3/exoplayer/video/j$d;)Z

    move-result v4

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->f(Landroidx/media3/exoplayer/video/j$d;)F

    move-result v5

    const/4 v1, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media3/exoplayer/mediacodec/t$b;Landroidx/media3/exoplayer/mediacodec/h0;ZF)V

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->g(Landroidx/media3/exoplayer/video/j$d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->h(Landroidx/media3/exoplayer/video/j$d;)I

    move-result v1

    iput v1, p0, Landroidx/media3/exoplayer/video/j;->I0:I

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->i(Landroidx/media3/exoplayer/video/j$d;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    new-instance v1, Landroidx/media3/exoplayer/video/i0$a;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->j(Landroidx/media3/exoplayer/video/j$d;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->k(Landroidx/media3/exoplayer/video/j$d;)Landroidx/media3/exoplayer/video/i0;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/video/i0$a;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/i0;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->G0:Z

    new-instance v1, Landroidx/media3/exoplayer/video/u;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->l(Landroidx/media3/exoplayer/video/j$d;)J

    move-result-wide v4

    invoke-direct {v1, v0, p0, v4, v5}, Landroidx/media3/exoplayer/video/u;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/u$b;J)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    new-instance v0, Landroidx/media3/exoplayer/video/u$a;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/u$a;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    invoke-static {}, Landroidx/media3/exoplayer/video/j;->G1()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->J0:Z

    sget-object v0, Landroidx/media3/common/util/l0;->c:Landroidx/media3/common/util/l0;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->X0:Landroidx/media3/common/util/l0;

    iput v2, p0, Landroidx/media3/exoplayer/video/j;->q1:I

    iput v3, p0, Landroidx/media3/exoplayer/video/j;->r1:I

    sget-object v0, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->z1:Landroidx/media3/common/m0;

    iput v3, p0, Landroidx/media3/exoplayer/video/j;->D1:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    const/16 v1, -0x3e8

    iput v1, p0, Landroidx/media3/exoplayer/video/j;->B1:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->c(Landroidx/media3/exoplayer/video/j$d;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/video/a;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/a;-><init>()V

    :cond_1
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->d(Landroidx/media3/exoplayer/video/j$d;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->d(Landroidx/media3/exoplayer/video/j$d;)J

    move-result-wide v0

    neg-long v1, v0

    :cond_2
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->N0:J

    return-void
.end method

.method static synthetic A1(Landroidx/media3/exoplayer/video/j;)Landroidx/media3/exoplayer/mediacodec/t;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B1(Landroidx/media3/exoplayer/video/j;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->h2()V

    return-void
.end method

.method private B2(J)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/video/j;->A2(II)V

    return-void
.end method

.method static synthetic C1(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k1(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    return-void
.end method

.method private C2(Landroidx/media3/exoplayer/source/r$b;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->A()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    return-void

    :cond_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/r$b;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    new-instance v1, Landroidx/media3/common/e0$b;

    invoke-direct {v1}, Landroidx/media3/common/e0$b;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/e0$b;->k()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    return-void
.end method

.method private static G1()Z
    .locals 2

    const-string v0, "NVIDIA"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static I1()Z
    .locals 16

    const/16 v0, 0x1a

    const/16 v1, 0x8

    const/16 v2, 0x1b

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x0

    sget v11, Landroidx/media3/common/util/a1;->a:I

    const/16 v12, 0x1c

    const/4 v13, 0x1

    if-gt v11, v12, :cond_8

    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_0
    move v14, v9

    goto/16 :goto_1

    :sswitch_0
    const-string v15, "machuca"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    goto :goto_0

    :cond_0
    move v14, v3

    goto :goto_1

    :sswitch_1
    const-string v15, "once"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    move v14, v4

    goto :goto_1

    :sswitch_2
    const-string v15, "magnolia"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_0

    :cond_2
    move v14, v5

    goto :goto_1

    :sswitch_3
    const-string v15, "aquaman"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    move v14, v6

    goto :goto_1

    :sswitch_4
    const-string v15, "oneday"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_0

    :cond_4
    move v14, v7

    goto :goto_1

    :sswitch_5
    const-string v15, "dangalUHD"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_0

    :cond_5
    move v14, v8

    goto :goto_1

    :sswitch_6
    const-string v15, "dangalFHD"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_0

    :cond_6
    move v14, v13

    goto :goto_1

    :sswitch_7
    const-string v15, "dangal"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_0

    :cond_7
    move v14, v10

    :goto_1
    packed-switch v14, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return v13

    :cond_8
    :goto_2
    if-gt v11, v2, :cond_9

    const-string v14, "HWEML"

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    return v13

    :cond_9
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_3
    move v15, v9

    goto/16 :goto_4

    :sswitch_8
    const-string v15, "AFTEUFF014"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto :goto_3

    :cond_a
    move v15, v1

    goto/16 :goto_4

    :sswitch_9
    const-string v15, "AFTSO001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    goto :goto_3

    :cond_b
    move v15, v3

    goto :goto_4

    :sswitch_a
    const-string v15, "AFTEU014"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    goto :goto_3

    :cond_c
    move v15, v4

    goto :goto_4

    :sswitch_b
    const-string v15, "AFTEU011"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    goto :goto_3

    :cond_d
    move v15, v5

    goto :goto_4

    :sswitch_c
    const-string v15, "AFTR"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    goto :goto_3

    :cond_e
    move v15, v6

    goto :goto_4

    :sswitch_d
    const-string v15, "AFTN"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    goto :goto_3

    :cond_f
    move v15, v7

    goto :goto_4

    :sswitch_e
    const-string v15, "AFTA"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    goto :goto_3

    :cond_10
    move v15, v8

    goto :goto_4

    :sswitch_f
    const-string v15, "AFTKMST12"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    goto :goto_3

    :cond_11
    move v15, v13

    goto :goto_4

    :sswitch_10
    const-string v15, "AFTJMST12"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    goto :goto_3

    :cond_12
    move v15, v10

    :goto_4
    packed-switch v15, :pswitch_data_1

    if-gt v11, v0, :cond_a0

    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_2

    :goto_5
    move v0, v9

    goto/16 :goto_6

    :sswitch_11
    const-string v0, "HWWAS-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_5

    :cond_13
    const/16 v0, 0x8b

    goto/16 :goto_6

    :sswitch_12
    const-string v0, "HWVNS-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_5

    :cond_14
    const/16 v0, 0x8a

    goto/16 :goto_6

    :sswitch_13
    const-string v0, "ELUGA_Prim"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_5

    :cond_15
    const/16 v0, 0x89

    goto/16 :goto_6

    :sswitch_14
    const-string v0, "ELUGA_Note"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_5

    :cond_16
    const/16 v0, 0x88

    goto/16 :goto_6

    :sswitch_15
    const-string v0, "ASUS_X00AD_2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_5

    :cond_17
    const/16 v0, 0x87

    goto/16 :goto_6

    :sswitch_16
    const-string v0, "HWCAM-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_5

    :cond_18
    const/16 v0, 0x86

    goto/16 :goto_6

    :sswitch_17
    const-string v0, "HWBLN-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_5

    :cond_19
    const/16 v0, 0x85

    goto/16 :goto_6

    :sswitch_18
    const-string v0, "DM-01K"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_5

    :cond_1a
    const/16 v0, 0x84

    goto/16 :goto_6

    :sswitch_19
    const-string v0, "BRAVIA_ATV3_4K"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_5

    :cond_1b
    const/16 v0, 0x83

    goto/16 :goto_6

    :sswitch_1a
    const-string v0, "Infinix-X572"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_5

    :cond_1c
    const/16 v0, 0x82

    goto/16 :goto_6

    :sswitch_1b
    const-string v0, "PB2-670M"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_5

    :cond_1d
    const/16 v0, 0x81

    goto/16 :goto_6

    :sswitch_1c
    const-string v0, "santoni"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_5

    :cond_1e
    const/16 v0, 0x80

    goto/16 :goto_6

    :sswitch_1d
    const-string v0, "iball8735_9806"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_5

    :cond_1f
    const/16 v0, 0x7f

    goto/16 :goto_6

    :sswitch_1e
    const-string v0, "CPH1715"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_5

    :cond_20
    const/16 v0, 0x7e

    goto/16 :goto_6

    :sswitch_1f
    const-string v0, "CPH1609"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_5

    :cond_21
    const/16 v0, 0x7d

    goto/16 :goto_6

    :sswitch_20
    const-string v0, "woods_f"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_5

    :cond_22
    const/16 v0, 0x7c

    goto/16 :goto_6

    :sswitch_21
    const-string v0, "htc_e56ml_dtul"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_5

    :cond_23
    const/16 v0, 0x7b

    goto/16 :goto_6

    :sswitch_22
    const-string v0, "EverStar_S"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_5

    :cond_24
    const/16 v0, 0x7a

    goto/16 :goto_6

    :sswitch_23
    const-string v0, "hwALE-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_5

    :cond_25
    const/16 v0, 0x79

    goto/16 :goto_6

    :sswitch_24
    const-string v0, "itel_S41"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_5

    :cond_26
    const/16 v0, 0x78

    goto/16 :goto_6

    :sswitch_25
    const-string v0, "LS-5017"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_5

    :cond_27
    const/16 v0, 0x77

    goto/16 :goto_6

    :sswitch_26
    const-string v0, "panell_d"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_5

    :cond_28
    const/16 v0, 0x76

    goto/16 :goto_6

    :sswitch_27
    const-string v0, "j2xlteins"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_5

    :cond_29
    const/16 v0, 0x75

    goto/16 :goto_6

    :sswitch_28
    const-string v0, "A7000plus"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_5

    :cond_2a
    const/16 v0, 0x74

    goto/16 :goto_6

    :sswitch_29
    const-string v0, "manning"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_5

    :cond_2b
    const/16 v0, 0x73

    goto/16 :goto_6

    :sswitch_2a
    const-string v0, "GIONEE_WBL7519"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_5

    :cond_2c
    const/16 v0, 0x72

    goto/16 :goto_6

    :sswitch_2b
    const-string v0, "GIONEE_WBL7365"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_5

    :cond_2d
    const/16 v0, 0x71

    goto/16 :goto_6

    :sswitch_2c
    const-string v0, "GIONEE_WBL5708"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_5

    :cond_2e
    const/16 v0, 0x70

    goto/16 :goto_6

    :sswitch_2d
    const-string v0, "QM16XE_U"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_5

    :cond_2f
    const/16 v0, 0x6f

    goto/16 :goto_6

    :sswitch_2e
    const-string v0, "Pixi5-10_4G"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_5

    :cond_30
    const/16 v0, 0x6e

    goto/16 :goto_6

    :sswitch_2f
    const-string v0, "TB3-850M"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_5

    :cond_31
    const/16 v0, 0x6d

    goto/16 :goto_6

    :sswitch_30
    const-string v0, "TB3-850F"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_5

    :cond_32
    const/16 v0, 0x6c

    goto/16 :goto_6

    :sswitch_31
    const-string v0, "TB3-730X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_5

    :cond_33
    const/16 v0, 0x6b

    goto/16 :goto_6

    :sswitch_32
    const-string v0, "TB3-730F"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_5

    :cond_34
    const/16 v0, 0x6a

    goto/16 :goto_6

    :sswitch_33
    const-string v0, "A7020a48"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_5

    :cond_35
    const/16 v0, 0x69

    goto/16 :goto_6

    :sswitch_34
    const-string v0, "A7010a48"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_5

    :cond_36
    const/16 v0, 0x68

    goto/16 :goto_6

    :sswitch_35
    const-string v0, "griffin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_5

    :cond_37
    const/16 v0, 0x67

    goto/16 :goto_6

    :sswitch_36
    const-string v0, "marino_f"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_5

    :cond_38
    const/16 v0, 0x66

    goto/16 :goto_6

    :sswitch_37
    const-string v0, "CPY83_I00"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_5

    :cond_39
    const/16 v0, 0x65

    goto/16 :goto_6

    :sswitch_38
    const-string v0, "A2016a40"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_5

    :cond_3a
    const/16 v0, 0x64

    goto/16 :goto_6

    :sswitch_39
    const-string v0, "le_x6"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_5

    :cond_3b
    const/16 v0, 0x63

    goto/16 :goto_6

    :sswitch_3a
    const-string v0, "l5460"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_5

    :cond_3c
    const/16 v0, 0x62

    goto/16 :goto_6

    :sswitch_3b
    const-string v0, "i9031"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_5

    :cond_3d
    const/16 v0, 0x61

    goto/16 :goto_6

    :sswitch_3c
    const-string v0, "X3_HK"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_5

    :cond_3e
    const/16 v0, 0x60

    goto/16 :goto_6

    :sswitch_3d
    const-string v0, "V23GB"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_5

    :cond_3f
    const/16 v0, 0x5f

    goto/16 :goto_6

    :sswitch_3e
    const-string v0, "Q4310"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_5

    :cond_40
    const/16 v0, 0x5e

    goto/16 :goto_6

    :sswitch_3f
    const-string v0, "Q4260"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_5

    :cond_41
    const/16 v0, 0x5d

    goto/16 :goto_6

    :sswitch_40
    const-string v0, "PRO7S"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_5

    :cond_42
    const/16 v0, 0x5c

    goto/16 :goto_6

    :sswitch_41
    const-string v0, "F3311"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_5

    :cond_43
    const/16 v0, 0x5b

    goto/16 :goto_6

    :sswitch_42
    const-string v0, "F3215"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_5

    :cond_44
    const/16 v0, 0x5a

    goto/16 :goto_6

    :sswitch_43
    const-string v0, "F3213"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_5

    :cond_45
    const/16 v0, 0x59

    goto/16 :goto_6

    :sswitch_44
    const-string v0, "F3211"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_5

    :cond_46
    const/16 v0, 0x58

    goto/16 :goto_6

    :sswitch_45
    const-string v0, "F3116"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_5

    :cond_47
    const/16 v0, 0x57

    goto/16 :goto_6

    :sswitch_46
    const-string v0, "F3113"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_5

    :cond_48
    const/16 v0, 0x56

    goto/16 :goto_6

    :sswitch_47
    const-string v0, "F3111"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_5

    :cond_49
    const/16 v0, 0x55

    goto/16 :goto_6

    :sswitch_48
    const-string v0, "E5643"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_5

    :cond_4a
    const/16 v0, 0x54

    goto/16 :goto_6

    :sswitch_49
    const-string v0, "A1601"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_5

    :cond_4b
    const/16 v0, 0x53

    goto/16 :goto_6

    :sswitch_4a
    const-string v0, "Aura_Note_2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_5

    :cond_4c
    const/16 v0, 0x52

    goto/16 :goto_6

    :sswitch_4b
    const-string v0, "602LV"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_5

    :cond_4d
    const/16 v0, 0x51

    goto/16 :goto_6

    :sswitch_4c
    const-string v0, "601LV"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_5

    :cond_4e
    const/16 v0, 0x50

    goto/16 :goto_6

    :sswitch_4d
    const-string v0, "MEIZU_M5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_5

    :cond_4f
    const/16 v0, 0x4f

    goto/16 :goto_6

    :sswitch_4e
    const-string v0, "p212"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_5

    :cond_50
    const/16 v0, 0x4e

    goto/16 :goto_6

    :sswitch_4f
    const-string v0, "mido"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_5

    :cond_51
    const/16 v0, 0x4d

    goto/16 :goto_6

    :sswitch_50
    const-string v0, "kate"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_5

    :cond_52
    const/16 v0, 0x4c

    goto/16 :goto_6

    :sswitch_51
    const-string v0, "fugu"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_5

    :cond_53
    const/16 v0, 0x4b

    goto/16 :goto_6

    :sswitch_52
    const-string v0, "XE2X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_5

    :cond_54
    const/16 v0, 0x4a

    goto/16 :goto_6

    :sswitch_53
    const-string v0, "Q427"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_5

    :cond_55
    const/16 v0, 0x49

    goto/16 :goto_6

    :sswitch_54
    const-string v0, "Q350"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_5

    :cond_56
    const/16 v0, 0x48

    goto/16 :goto_6

    :sswitch_55
    const-string v0, "P681"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_5

    :cond_57
    const/16 v0, 0x47

    goto/16 :goto_6

    :sswitch_56
    const-string v0, "F04J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_5

    :cond_58
    const/16 v0, 0x46

    goto/16 :goto_6

    :sswitch_57
    const-string v0, "F04H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_5

    :cond_59
    const/16 v0, 0x45

    goto/16 :goto_6

    :sswitch_58
    const-string v0, "F03H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_5

    :cond_5a
    const/16 v0, 0x44

    goto/16 :goto_6

    :sswitch_59
    const-string v0, "F02H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_5

    :cond_5b
    const/16 v0, 0x43

    goto/16 :goto_6

    :sswitch_5a
    const-string v0, "F01J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_5

    :cond_5c
    const/16 v0, 0x42

    goto/16 :goto_6

    :sswitch_5b
    const-string v0, "F01H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_5

    :cond_5d
    const/16 v0, 0x41

    goto/16 :goto_6

    :sswitch_5c
    const-string v0, "1714"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_5

    :cond_5e
    const/16 v0, 0x40

    goto/16 :goto_6

    :sswitch_5d
    const-string v0, "1713"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_5

    :cond_5f
    const/16 v0, 0x3f

    goto/16 :goto_6

    :sswitch_5e
    const-string v0, "1601"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_5

    :cond_60
    const/16 v0, 0x3e

    goto/16 :goto_6

    :sswitch_5f
    const-string v0, "flo"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_5

    :cond_61
    const/16 v0, 0x3d

    goto/16 :goto_6

    :sswitch_60
    const-string v0, "deb"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_5

    :cond_62
    const/16 v0, 0x3c

    goto/16 :goto_6

    :sswitch_61
    const-string v0, "cv3"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_5

    :cond_63
    const/16 v0, 0x3b

    goto/16 :goto_6

    :sswitch_62
    const-string v0, "cv1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_5

    :cond_64
    const/16 v0, 0x3a

    goto/16 :goto_6

    :sswitch_63
    const-string v0, "Z80"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_5

    :cond_65
    const/16 v0, 0x39

    goto/16 :goto_6

    :sswitch_64
    const-string v0, "QX1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_5

    :cond_66
    const/16 v0, 0x38

    goto/16 :goto_6

    :sswitch_65
    const-string v0, "PLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_5

    :cond_67
    const/16 v0, 0x37

    goto/16 :goto_6

    :sswitch_66
    const-string v0, "P85"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_5

    :cond_68
    const/16 v0, 0x36

    goto/16 :goto_6

    :sswitch_67
    const-string v0, "MX6"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_5

    :cond_69
    const/16 v0, 0x35

    goto/16 :goto_6

    :sswitch_68
    const-string v0, "M5c"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_5

    :cond_6a
    const/16 v0, 0x34

    goto/16 :goto_6

    :sswitch_69
    const-string v0, "M04"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_5

    :cond_6b
    const/16 v0, 0x33

    goto/16 :goto_6

    :sswitch_6a
    const-string v0, "JGZ"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_5

    :cond_6c
    const/16 v0, 0x32

    goto/16 :goto_6

    :sswitch_6b
    const-string v0, "mh"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_5

    :cond_6d
    const/16 v0, 0x31

    goto/16 :goto_6

    :sswitch_6c
    const-string v0, "b5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_5

    :cond_6e
    const/16 v0, 0x30

    goto/16 :goto_6

    :sswitch_6d
    const-string v0, "V5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_5

    :cond_6f
    const/16 v0, 0x2f

    goto/16 :goto_6

    :sswitch_6e
    const-string v0, "V1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_5

    :cond_70
    const/16 v0, 0x2e

    goto/16 :goto_6

    :sswitch_6f
    const-string v0, "Q5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_5

    :cond_71
    const/16 v0, 0x2d

    goto/16 :goto_6

    :sswitch_70
    const-string v0, "C1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_5

    :cond_72
    const/16 v0, 0x2c

    goto/16 :goto_6

    :sswitch_71
    const-string v0, "woods_fn"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_5

    :cond_73
    const/16 v0, 0x2b

    goto/16 :goto_6

    :sswitch_72
    const-string v0, "ELUGA_A3_Pro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_5

    :cond_74
    const/16 v0, 0x2a

    goto/16 :goto_6

    :sswitch_73
    const-string v0, "Z12_PRO"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_5

    :cond_75
    const/16 v0, 0x29

    goto/16 :goto_6

    :sswitch_74
    const-string v0, "BLACK-1X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_5

    :cond_76
    const/16 v0, 0x28

    goto/16 :goto_6

    :sswitch_75
    const-string v0, "taido_row"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_5

    :cond_77
    const/16 v0, 0x27

    goto/16 :goto_6

    :sswitch_76
    const-string v0, "Pixi4-7_3G"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_5

    :cond_78
    const/16 v0, 0x26

    goto/16 :goto_6

    :sswitch_77
    const-string v0, "GIONEE_GBL7360"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_5

    :cond_79
    const/16 v0, 0x25

    goto/16 :goto_6

    :sswitch_78
    const-string v0, "GiONEE_CBL7513"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_5

    :cond_7a
    const/16 v0, 0x24

    goto/16 :goto_6

    :sswitch_79
    const-string v0, "OnePlus5T"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_5

    :cond_7b
    const/16 v0, 0x23

    goto/16 :goto_6

    :sswitch_7a
    const-string v0, "whyred"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_5

    :cond_7c
    const/16 v0, 0x22

    goto/16 :goto_6

    :sswitch_7b
    const-string v0, "watson"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_5

    :cond_7d
    const/16 v0, 0x21

    goto/16 :goto_6

    :sswitch_7c
    const-string v0, "SVP-DTV15"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_5

    :cond_7e
    const/16 v0, 0x20

    goto/16 :goto_6

    :sswitch_7d
    const-string v0, "A7000-a"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_5

    :cond_7f
    const/16 v0, 0x1f

    goto/16 :goto_6

    :sswitch_7e
    const-string v0, "nicklaus_f"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_5

    :cond_80
    const/16 v0, 0x1e

    goto/16 :goto_6

    :sswitch_7f
    const-string v0, "tcl_eu"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_5

    :cond_81
    const/16 v0, 0x1d

    goto/16 :goto_6

    :sswitch_80
    const-string v0, "ELUGA_Ray_X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_5

    :cond_82
    move v0, v12

    goto/16 :goto_6

    :sswitch_81
    const-string v0, "s905x018"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_5

    :cond_83
    move v0, v2

    goto/16 :goto_6

    :sswitch_82
    const-string v1, "A10-70L"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    goto/16 :goto_5

    :sswitch_83
    const-string v0, "A10-70F"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_5

    :cond_84
    const/16 v0, 0x19

    goto/16 :goto_6

    :sswitch_84
    const-string v0, "namath"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_5

    :cond_85
    const/16 v0, 0x18

    goto/16 :goto_6

    :sswitch_85
    const-string v0, "Slate_Pro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_5

    :cond_86
    const/16 v0, 0x17

    goto/16 :goto_6

    :sswitch_86
    const-string v0, "iris60"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_5

    :cond_87
    const/16 v0, 0x16

    goto/16 :goto_6

    :sswitch_87
    const-string v0, "BRAVIA_ATV2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_5

    :cond_88
    const/16 v0, 0x15

    goto/16 :goto_6

    :sswitch_88
    const-string v0, "GiONEE_GBL7319"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_5

    :cond_89
    const/16 v0, 0x14

    goto/16 :goto_6

    :sswitch_89
    const-string v0, "panell_dt"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_5

    :cond_8a
    const/16 v0, 0x13

    goto/16 :goto_6

    :sswitch_8a
    const-string v0, "panell_ds"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_5

    :cond_8b
    const/16 v0, 0x12

    goto/16 :goto_6

    :sswitch_8b
    const-string v0, "panell_dl"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_5

    :cond_8c
    const/16 v0, 0x11

    goto/16 :goto_6

    :sswitch_8c
    const-string v0, "vernee_M5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_5

    :cond_8d
    const/16 v0, 0x10

    goto/16 :goto_6

    :sswitch_8d
    const-string v0, "pacificrim"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_5

    :cond_8e
    const/16 v0, 0xf

    goto/16 :goto_6

    :sswitch_8e
    const-string v0, "Phantom6"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_5

    :cond_8f
    const/16 v0, 0xe

    goto/16 :goto_6

    :sswitch_8f
    const-string v0, "ComioS1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_5

    :cond_90
    const/16 v0, 0xd

    goto/16 :goto_6

    :sswitch_90
    const-string v0, "XT1663"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_5

    :cond_91
    const/16 v0, 0xc

    goto/16 :goto_6

    :sswitch_91
    const-string v0, "RAIJIN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_5

    :cond_92
    const/16 v0, 0xb

    goto/16 :goto_6

    :sswitch_92
    const-string v0, "AquaPowerM"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_5

    :cond_93
    const/16 v0, 0xa

    goto/16 :goto_6

    :sswitch_93
    const-string v0, "PGN611"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_5

    :cond_94
    const/16 v0, 0x9

    goto/16 :goto_6

    :sswitch_94
    const-string v0, "PGN610"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto/16 :goto_5

    :cond_95
    move v0, v1

    goto/16 :goto_6

    :sswitch_95
    const-string v0, "PGN528"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_5

    :cond_96
    move v0, v3

    goto :goto_6

    :sswitch_96
    const-string v0, "NX573J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto/16 :goto_5

    :cond_97
    move v0, v4

    goto :goto_6

    :sswitch_97
    const-string v0, "NX541J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto/16 :goto_5

    :cond_98
    move v0, v5

    goto :goto_6

    :sswitch_98
    const-string v0, "CP8676_I02"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_5

    :cond_99
    move v0, v6

    goto :goto_6

    :sswitch_99
    const-string v0, "K50a40"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_5

    :cond_9a
    move v0, v7

    goto :goto_6

    :sswitch_9a
    const-string v0, "GIONEE_SWW1631"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto/16 :goto_5

    :cond_9b
    move v0, v8

    goto :goto_6

    :sswitch_9b
    const-string v0, "GIONEE_SWW1627"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_5

    :cond_9c
    move v0, v13

    goto :goto_6

    :sswitch_9c
    const-string v0, "GIONEE_SWW1609"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto/16 :goto_5

    :cond_9d
    move v0, v10

    :cond_9e
    :goto_6
    packed-switch v0, :pswitch_data_2

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    const-string v0, "JSN-L21"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_7

    :cond_9f
    :pswitch_1
    return v13

    :cond_a0
    :goto_7
    return v10

    :pswitch_2
    return v13

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9c
        -0x7fd6c381 -> :sswitch_9b
        -0x7fd6c368 -> :sswitch_9a
        -0x7d026749 -> :sswitch_99
        -0x78929d6a -> :sswitch_98
        -0x75f50a1e -> :sswitch_97
        -0x75f4fe9d -> :sswitch_96
        -0x736f875c -> :sswitch_95
        -0x736f83c2 -> :sswitch_94
        -0x736f83c1 -> :sswitch_93
        -0x7327ce1c -> :sswitch_92
        -0x705c574b -> :sswitch_91
        -0x651ebb62 -> :sswitch_90
        -0x6423293b -> :sswitch_8f
        -0x604f5117 -> :sswitch_8e
        -0x5f691e13 -> :sswitch_8d
        -0x5ca40cc4 -> :sswitch_8c
        -0x58520ec1 -> :sswitch_8b
        -0x58520eba -> :sswitch_8a
        -0x58520eb9 -> :sswitch_89
        -0x4eaed329 -> :sswitch_88
        -0x4892fb4f -> :sswitch_87
        -0x465b3df3 -> :sswitch_86
        -0x43e6c939 -> :sswitch_85
        -0x3ec0fcc5 -> :sswitch_84
        -0x3b33cca0 -> :sswitch_83
        -0x3b33cc9a -> :sswitch_82
        -0x398ae3f6 -> :sswitch_81
        -0x391f0fb4 -> :sswitch_80
        -0x346837ae -> :sswitch_7f
        -0x323788e3 -> :sswitch_7e
        -0x30f57652 -> :sswitch_7d
        -0x2f88a116 -> :sswitch_7c
        -0x2f61ed98 -> :sswitch_7b
        -0x2efd0837 -> :sswitch_7a
        -0x2e9e9441 -> :sswitch_79
        -0x2247b8b1 -> :sswitch_78
        -0x1f0fa2b7 -> :sswitch_77
        -0x19af3b41 -> :sswitch_76
        -0x114fad3e -> :sswitch_75
        -0x10dae90b -> :sswitch_74
        -0x1084b7b7 -> :sswitch_73
        -0xa5988e9 -> :sswitch_72
        -0x35f9fbf -> :sswitch_71
        0x84e -> :sswitch_70
        0xa04 -> :sswitch_6f
        0xa9b -> :sswitch_6e
        0xa9f -> :sswitch_6d
        0xc13 -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0x11ebd -> :sswitch_6a
        0x12711 -> :sswitch_69
        0x127db -> :sswitch_68
        0x12beb -> :sswitch_67
        0x1334d -> :sswitch_66
        0x135c9 -> :sswitch_65
        0x13aea -> :sswitch_64
        0x158d2 -> :sswitch_63
        0x1821e -> :sswitch_62
        0x18220 -> :sswitch_61
        0x18401 -> :sswitch_60
        0x18c69 -> :sswitch_5f
        0x1716e6 -> :sswitch_5e
        0x171ac8 -> :sswitch_5d
        0x171ac9 -> :sswitch_5c
        0x208c61 -> :sswitch_5b
        0x208c63 -> :sswitch_5a
        0x208c80 -> :sswitch_59
        0x208c9f -> :sswitch_58
        0x208cbe -> :sswitch_57
        0x208cc0 -> :sswitch_56
        0x252f5f -> :sswitch_55
        0x25981d -> :sswitch_54
        0x259b88 -> :sswitch_53
        0x290a13 -> :sswitch_52
        0x3021fd -> :sswitch_51
        0x321e47 -> :sswitch_50
        0x332327 -> :sswitch_4f
        0x33ab63 -> :sswitch_4e
        0x27691fb -> :sswitch_4d
        0x30f8881 -> :sswitch_4c
        0x30f8c42 -> :sswitch_4b
        0x349f581 -> :sswitch_4a
        0x3ab0ea7 -> :sswitch_49
        0x3e53ea5 -> :sswitch_48
        0x3f25a44 -> :sswitch_47
        0x3f25a46 -> :sswitch_46
        0x3f25a49 -> :sswitch_45
        0x3f25e05 -> :sswitch_44
        0x3f25e07 -> :sswitch_43
        0x3f25e09 -> :sswitch_42
        0x3f261c6 -> :sswitch_41
        0x48dce49 -> :sswitch_40
        0x48dd589 -> :sswitch_3f
        0x48dd8af -> :sswitch_3e
        0x4d36832 -> :sswitch_3d
        0x4f0b0e7 -> :sswitch_3c
        0x5e2479e -> :sswitch_3b
        0x60acc05 -> :sswitch_3a
        0x6214744 -> :sswitch_39
        0x9d91379 -> :sswitch_38
        0xadc0551 -> :sswitch_37
        0xea056b3 -> :sswitch_36
        0x1121dbc3 -> :sswitch_35
        0x1255818c -> :sswitch_34
        0x1263990d -> :sswitch_33
        0x12d90f3a -> :sswitch_32
        0x12d90f4c -> :sswitch_31
        0x12d98b1b -> :sswitch_30
        0x12d98b22 -> :sswitch_2f
        0x1844c711 -> :sswitch_2e
        0x1e3e8044 -> :sswitch_2d
        0x2f5336ed -> :sswitch_2c
        0x2f54115e -> :sswitch_2b
        0x2f541849 -> :sswitch_2a
        0x31cf010e -> :sswitch_29
        0x36ad82f4 -> :sswitch_28
        0x391a0b61 -> :sswitch_27
        0x3f3728cd -> :sswitch_26
        0x448ec687 -> :sswitch_25
        0x46260f63 -> :sswitch_24
        0x4c505106 -> :sswitch_23
        0x4de67084 -> :sswitch_22
        0x506ac5a9 -> :sswitch_21
        0x5abad9cd -> :sswitch_20
        0x64d2e6e9 -> :sswitch_1f
        0x64d2eac5 -> :sswitch_1e
        0x65e4085b -> :sswitch_1d
        0x6f373556 -> :sswitch_1c
        0x719f1dcb -> :sswitch_1b
        0x75d9a0f0 -> :sswitch_1a
        0x7796d144 -> :sswitch_19
        0x785bcb26 -> :sswitch_18
        0x78fc0e50 -> :sswitch_17
        0x790521fb -> :sswitch_16
        0x7933207f -> :sswitch_15
        0x7a05a409 -> :sswitch_14
        0x7a0696bd -> :sswitch_13
        0x7a16dfe7 -> :sswitch_12
        0x7a1f0e95 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static K1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I
    .locals 11

    const/4 v0, 0x4

    const-string v1, "video/hevc"

    const-string v2, "video/avc"

    const-string v3, "video/av01"

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget v6, p1, Landroidx/media3/common/r;->v:I

    iget v7, p1, Landroidx/media3/common/r;->w:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_e

    if-ne v7, v8, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v9, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v9}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "video/dolby-vision"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->i(Landroidx/media3/common/r;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v9, 0x200

    if-eq p1, v9, :cond_2

    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_1
    const/16 v9, 0x400

    if-ne p1, v9, :cond_3

    move-object v9, v3

    goto :goto_1

    :cond_2
    :goto_0
    move-object v9, v2

    goto :goto_1

    :cond_3
    move-object v9, v1

    :cond_4
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    :goto_2
    move v4, v8

    goto :goto_3

    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x6

    goto :goto_3

    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x5

    goto :goto_3

    :sswitch_2
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move v4, v0

    goto :goto_3

    :sswitch_3
    const-string p1, "video/mp4v-es"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x3

    goto :goto_3

    :sswitch_4
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move v4, v5

    goto :goto_3

    :sswitch_5
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_2

    :sswitch_6
    const-string p1, "video/3gpp"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    :cond_b
    :goto_3
    packed-switch v4, :pswitch_data_0

    return v8

    :pswitch_0
    mul-int/2addr v6, v7

    invoke-static {v6, v0}, Landroidx/media3/exoplayer/video/j;->P1(II)I

    move-result p0

    return p0

    :pswitch_1
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "BRAVIA 4K 2015"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "KFSOWI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "AFTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    if-eqz p0, :cond_c

    goto :goto_4

    :cond_c
    const/16 p0, 0x10

    invoke-static {v6, p0}, Landroidx/media3/common/util/a1;->k(II)I

    move-result p1

    invoke-static {v7, p0}, Landroidx/media3/common/util/a1;->k(II)I

    move-result p0

    mul-int/2addr p1, p0

    mul-int/lit16 p1, p1, 0x100

    invoke-static {p1, v5}, Landroidx/media3/exoplayer/video/j;->P1(II)I

    move-result p0

    return p0

    :cond_d
    :goto_4
    return v8

    :pswitch_2
    mul-int/2addr v6, v7

    invoke-static {v6, v5}, Landroidx/media3/exoplayer/video/j;->P1(II)I

    move-result p0

    const/high16 p1, 0x200000

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_3
    mul-int/2addr v6, v7

    invoke-static {v6, v5}, Landroidx/media3/exoplayer/video/j;->P1(II)I

    move-result p0

    return p0

    :cond_e
    :goto_5
    return v8

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static L1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)Landroid/graphics/Point;
    .locals 13

    iget v0, p1, Landroidx/media3/common/r;->w:I

    iget v1, p1, Landroidx/media3/common/r;->v:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    int-to-float v1, v0

    int-to-float v5, v4

    div-float/2addr v1, v5

    sget-object v5, Landroidx/media3/exoplayer/video/j;->L1:[I

    array-length v6, v5

    :goto_2
    const/4 v7, 0x0

    if-ge v2, v6, :cond_7

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float/2addr v9, v1

    float-to-int v9, v9

    if-le v8, v4, :cond_7

    if-gt v9, v0, :cond_3

    goto :goto_5

    :cond_3
    if-eqz v3, :cond_4

    move v7, v9

    goto :goto_3

    :cond_4
    move v7, v8

    :goto_3
    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move v8, v9

    :goto_4
    invoke-virtual {p0, v7, v8}, Landroidx/media3/exoplayer/mediacodec/w;->c(II)Landroid/graphics/Point;

    move-result-object v7

    iget v8, p1, Landroidx/media3/common/r;->x:F

    if-eqz v7, :cond_6

    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Landroidx/media3/exoplayer/mediacodec/w;->u(IID)Z

    move-result v8

    if-eqz v8, :cond_6

    return-object v7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    return-object v7
.end method

.method private static N1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;
    .locals 3

    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    sget v1, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/media3/exoplayer/video/j$c;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->g(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->m(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected static O1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I
    .locals 3

    iget v0, p1, Landroidx/media3/common/r;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p1, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_0

    iget-object v2, p1, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p0, p1, Landroidx/media3/common/r;->p:I

    add-int/2addr p0, v1

    return p0

    :cond_1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/j;->K1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    move-result p0

    return p0
.end method

.method private static P1(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p1, p1, 0x2

    div-int/2addr p0, p1

    return p0
.end method

.method private R1(Landroidx/media3/exoplayer/mediacodec/w;)Landroid/view/Surface;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->m()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->v2(Landroidx/media3/exoplayer/mediacodec/w;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->w2(Landroidx/media3/exoplayer/mediacodec/w;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secure:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->j2()V

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstance(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    return-object p1
.end method

.method private S1(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->v2(Landroidx/media3/exoplayer/mediacodec/w;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->w2(Landroidx/media3/exoplayer/mediacodec/w;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private T1(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 4

    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private U1(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isLastSample()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x186a0

    cmp-long p1, v4, v2

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private W1()V
    .locals 6

    iget v0, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/j;->s1:J

    sub-long v2, v0, v2

    iget-object v4, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    iget v5, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media3/exoplayer/video/i0$a;->n(IJ)V

    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->s1:J

    :cond_0
    return-void
.end method

.method private X1()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->f2()V

    :cond_0
    return-void
.end method

.method private Y1()V
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/video/j;->x1:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/j;->w1:J

    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/exoplayer/video/i0$a;->B(JI)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->w1:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/j;->x1:I

    :cond_0
    return-void
.end method

.method private Z1(Landroidx/media3/common/m0;)V
    .locals 1

    sget-object v0, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    invoke-virtual {p1, v0}, Landroidx/media3/common/m0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    invoke-virtual {p1, v0}, Landroidx/media3/common/m0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/i0$a;->D(Landroidx/media3/common/m0;)V

    :cond_0
    return-void
.end method

.method private a2()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->p1:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/i0$a;->A(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b2()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/i0$a;->D(Landroidx/media3/common/m0;)V

    :cond_0
    return-void
.end method

.method private c2(Landroid/media/MediaFormat;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->H0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "allow-frame-drop"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private d2()V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    if-eqz v0, :cond_2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Landroidx/media3/exoplayer/video/j$f;

    invoke-direct {v2, p0, v1}, Landroidx/media3/exoplayer/video/j$f;-><init>(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/mediacodec/t;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/j;->E1:Landroidx/media3/exoplayer/video/j$f;

    const/16 v2, 0x21

    if-lt v0, v2, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tunnel-peek"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/mediacodec/t;->b(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e2(JJLandroidx/media3/common/r;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->F1:Landroidx/media3/exoplayer/video/t;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0()Landroid/media/MediaFormat;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/t;->f(JJLandroidx/media3/common/r;Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private f2()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/i0$a;->A(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->p1:Z

    return-void
.end method

.method private h2()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j1()V

    return-void
.end method

.method private i2(Landroidx/media3/exoplayer/mediacodec/t;IJLandroidx/media3/common/r;)V
    .locals 12

    move-object v7, p0

    iget-object v0, v7, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u$a;->g()J

    move-result-wide v8

    iget-object v0, v7, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u$a;->f()J

    move-result-wide v10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/j;->u2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, v7, Landroidx/media3/exoplayer/video/j;->y1:J

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p4}, Landroidx/media3/exoplayer/video/j;->x2(Landroidx/media3/exoplayer/mediacodec/t;IJ)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-wide v1, p3

    move-wide v3, v8

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/video/j;->e2(JJLandroidx/media3/common/r;)V

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/video/j;->l2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V

    :goto_0
    invoke-virtual {p0, v10, v11}, Landroidx/media3/exoplayer/video/j;->D2(J)V

    iput-wide v8, v7, Landroidx/media3/exoplayer/video/j;->y1:J

    return-void
.end method

.method private j2()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_0
    return-void
.end method

.method private k2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/video/j;->l2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V

    return-void
.end method

.method private static m2(Landroidx/media3/exoplayer/mediacodec/t;[B)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hdr10-plus-info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/mediacodec/t;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method private n2(Ljava/lang/Object;)V
    .locals 7

    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/Surface;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    if-eq v0, p1, :cond_8

    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/u;->q(Landroid/view/Surface;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->p1:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()Landroidx/media3/exoplayer/mediacodec/w;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/mediacodec/w;

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/video/j;->S1(Landroidx/media3/exoplayer/mediacodec/w;)Z

    move-result v4

    sget v5, Landroidx/media3/common/util/a1;->a:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroidx/media3/exoplayer/video/j;->Q0:Z

    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/video/j;->R1(Landroidx/media3/exoplayer/mediacodec/w;)Landroid/view/Surface;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/video/j;->o2(Landroidx/media3/exoplayer/mediacodec/t;Landroid/view/Surface;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->b2()V

    goto :goto_2

    :cond_4
    iput-object v1, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSink;->s()V

    :cond_5
    :goto_2
    const/4 p1, 0x2

    if-ne v0, p1, :cond_7

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->u(Z)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/u;->e(Z)V

    :cond_7
    :goto_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->d2()V

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->b2()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->a2()V

    :cond_9
    :goto_4
    return-void
.end method

.method private o2(Landroidx/media3/exoplayer/mediacodec/t;Landroid/view/Surface;)V
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/j;->p2(Landroidx/media3/exoplayer/mediacodec/t;Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x23

    if-lt v0, p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->F1(Landroidx/media3/exoplayer/mediacodec/t;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method static synthetic x1(Landroidx/media3/exoplayer/video/j;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic y1(Landroidx/media3/exoplayer/video/j;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->f2()V

    return-void
.end method

.method private static y2(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;)I
    .locals 10

    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p2, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/video/j;->N1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1, p2, v1, v1}, Landroidx/media3/exoplayer/video/j;->N1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p0

    return p0

    :cond_3
    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t1(Landroidx/media3/common/r;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 p0, 0x2

    invoke-static {p0}, Landroidx/media3/exoplayer/x3;->a(I)I

    move-result p0

    return p0

    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/w;

    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/w;->o(Landroidx/media3/common/r;)Z

    move-result v5

    if-nez v5, :cond_6

    move v6, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/mediacodec/w;

    invoke-virtual {v7, p2}, Landroidx/media3/exoplayer/mediacodec/w;->o(Landroidx/media3/common/r;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v3, v1

    move v5, v2

    move-object v4, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_2
    if-eqz v5, :cond_7

    const/4 v6, 0x4

    goto :goto_3

    :cond_7
    const/4 v6, 0x3

    :goto_3
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/w;->r(Landroidx/media3/common/r;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x10

    goto :goto_4

    :cond_8
    const/16 v7, 0x8

    :goto_4
    iget-boolean v4, v4, Landroidx/media3/exoplayer/mediacodec/w;->h:Z

    if-eqz v4, :cond_9

    const/16 v4, 0x40

    goto :goto_5

    :cond_9
    move v4, v1

    :goto_5
    if-eqz v3, :cond_a

    const/16 v3, 0x80

    goto :goto_6

    :cond_a
    move v3, v1

    :goto_6
    sget v8, Landroidx/media3/common/util/a1;->a:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_b

    const-string v8, "video/dolby-vision"

    iget-object v9, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {p0}, Landroidx/media3/exoplayer/video/j$c;->a(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    const/16 v3, 0x100

    :cond_b
    if-eqz v5, :cond_c

    invoke-static {p0, p1, p2, v0, v2}, Landroidx/media3/exoplayer/video/j;->N1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->n(Ljava/util/List;Landroidx/media3/common/r;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/w;

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/w;->o(Landroidx/media3/common/r;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/w;->r(Landroidx/media3/common/r;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 v1, 0x20

    :cond_c
    invoke-static {v6, v7, v1, v4, v3}, Landroidx/media3/exoplayer/x3;->d(IIIII)I

    move-result p0

    return p0
.end method

.method static synthetic z1(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/mediacodec/t;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/video/j;->k2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V

    return-void
.end method

.method private z2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Landroidx/media3/exoplayer/video/j;->B1:I

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v3, "importance"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/t;->b(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected A2(II)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget v1, v0, Landroidx/media3/exoplayer/j;->h:I

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/media3/exoplayer/j;->h:I

    add-int/2addr p1, p2

    iget p2, v0, Landroidx/media3/exoplayer/j;->g:I

    add-int/2addr p2, p1

    iput p2, v0, Landroidx/media3/exoplayer/j;->g:I

    iget p2, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    iget p2, p0, Landroidx/media3/exoplayer/video/j;->u1:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/j;->u1:I

    iget p1, v0, Landroidx/media3/exoplayer/j;->i:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroidx/media3/exoplayer/j;->i:I

    iget p1, p0, Landroidx/media3/exoplayer/video/j;->I0:I

    if-lez p1, :cond_0

    iget p2, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    if-lt p2, p1, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->W1()V

    :cond_0
    return-void
.end method

.method protected C()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/media3/exoplayer/video/VideoSink;->q()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/u;->g()V

    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->d2()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->p1:Z

    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->E1:Landroidx/media3/exoplayer/video/j$f;

    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/i0$a;->m(Landroidx/media3/exoplayer/j;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    sget-object v1, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/i0$a;->D(Landroidx/media3/common/m0;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/i0$a;->m(Landroidx/media3/exoplayer/j;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    sget-object v2, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/i0$a;->D(Landroidx/media3/common/m0;)V

    throw v0
.end method

.method protected D(ZZ)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D(ZZ)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->t()Landroidx/media3/exoplayer/z3;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/media3/exoplayer/z3;->b:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget v2, p0, Landroidx/media3/exoplayer/video/j;->D1:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    if-eq v2, p1, :cond_2

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/video/i0$a;->o(Landroidx/media3/exoplayer/j;)V

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->T0:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->U0:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_3

    new-instance p1, Landroidx/media3/exoplayer/video/q$b;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-direct {p1, v2, v3}, Landroidx/media3/exoplayer/video/q$b;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/u;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/video/q$b;->i(Landroidx/media3/common/util/i;)Landroidx/media3/exoplayer/video/q$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/q$b;->h()Landroidx/media3/exoplayer/video/q;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/video/q;->O(I)V

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/q;->B(I)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    :cond_3
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->T0:Z

    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_8

    new-instance v0, Landroidx/media3/exoplayer/video/j$a;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/j$a;-><init>(Landroidx/media3/exoplayer/video/j;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->v(Landroidx/media3/exoplayer/video/VideoSink$a;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->F1:Landroidx/media3/exoplayer/video/t;

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->d(Landroidx/media3/exoplayer/video/t;)V

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->X0:Landroidx/media3/common/util/l0;

    sget-object v0, Landroidx/media3/common/util/l0;->c:Landroidx/media3/common/util/l0;

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/l0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->X0:Landroidx/media3/common/util/l0;

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->p(Landroid/view/Surface;Landroidx/media3/common/util/l0;)V

    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    iget v0, p0, Landroidx/media3/exoplayer/video/j;->r1:I

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->r(I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->a(F)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->U0:Ljava/util/List;

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->i(Ljava/util/List;)V

    :cond_7
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->l(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0()Landroidx/media3/exoplayer/w3$a;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->h(Landroidx/media3/exoplayer/w3$a;)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/u;->o(Landroidx/media3/common/util/i;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/u;->h(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method protected D1(Landroidx/media3/exoplayer/video/VideoSink;ILandroidx/media3/common/r;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->U0:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    invoke-interface {p1, p2, p3, v0}, Landroidx/media3/exoplayer/video/VideoSink;->o(ILandroidx/media3/common/r;Ljava/util/List;)V

    return-void
.end method

.method protected D2(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/j;->a(J)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/j;->w1:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->w1:J

    iget p1, p0, Landroidx/media3/exoplayer/video/j;->x1:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/j;->x1:I

    return-void
.end method

.method protected E()V
    .locals 0

    invoke-super {p0}, Landroidx/media3/exoplayer/i;->E()V

    return-void
.end method

.method protected E1(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-class p1, Landroidx/media3/exoplayer/video/j;

    monitor-enter p1

    :try_start_0
    sget-boolean v0, Landroidx/media3/exoplayer/video/j;->M1:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/media3/exoplayer/video/j;->I1()Z

    move-result v0

    sput-boolean v0, Landroidx/media3/exoplayer/video/j;->N1:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/media3/exoplayer/video/j;->M1:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Landroidx/media3/exoplayer/video/j;->N1:Z

    return p1

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected F(JZ)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-nez p3, :cond_0

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->t(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/j;->J1()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/video/VideoSink;->f(JJ)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->I1:Z

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F(JZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/u;->m()V

    :cond_2
    const/4 p1, 0x0

    if-eqz p3, :cond_4

    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->u(Z)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/u;->e(Z)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->d2()V

    iput p1, p0, Landroidx/media3/exoplayer/video/j;->u1:I

    return-void
.end method

.method protected F1(Landroidx/media3/exoplayer/mediacodec/t;)V
    .locals 0

    invoke-interface {p1}, Landroidx/media3/exoplayer/mediacodec/t;->o()V

    return-void
.end method

.method protected G()V
    .locals 2

    invoke-super {p0}, Landroidx/media3/exoplayer/i;->G()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->G0:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->release()V

    :cond_0
    return-void
.end method

.method protected H1(Landroidx/media3/exoplayer/mediacodec/t;IJ)V
    .locals 0

    const-string p3, "dropVideoBuffer"

    invoke-static {p3}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/t;->k(IZ)V

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Landroidx/media3/exoplayer/video/j;->A2(II)V

    return-void
.end method

.method protected I()V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/j;->T0:Z

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->j2()V

    return-void

    :catchall_0
    move-exception v3

    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/j;->T0:Z

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->j2()V

    throw v3
.end method

.method protected J()V
    .locals 3

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->s1:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->w1:J

    iput v0, p0, Landroidx/media3/exoplayer/video/j;->x1:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->n()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->k()V

    :goto_0
    return-void
.end method

.method protected J1()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    neg-long v0, v0

    return-wide v0
.end method

.method protected K()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->W1()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->Y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->g()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->l()V

    :goto_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K()V

    return-void
.end method

.method protected L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 2

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V

    iget-wide p4, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p4, v0

    if-nez p1, :cond_0

    iput-wide p2, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    :cond_0
    invoke-direct {p0, p6}, Landroidx/media3/exoplayer/video/j;->C2(Landroidx/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method protected L0(Landroidx/media3/common/r;)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->k(Landroidx/media3/common/r;)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/16 v1, 0x1b58

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected M0(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/i0$a;->C(Ljava/lang/Exception;)V

    return-void
.end method

.method protected M1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;[Landroidx/media3/common/r;)Landroidx/media3/exoplayer/video/j$e;
    .locals 12

    iget v0, p2, Landroidx/media3/common/r;->v:I

    iget v1, p2, Landroidx/media3/common/r;->w:I

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/j;->O1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    move-result v2

    array-length v3, p3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    if-eq v2, v4, :cond_0

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/j;->K1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    move-result p1

    if-eq p1, v4, :cond_0

    int-to-float p2, v2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/video/j$e;

    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/exoplayer/video/j$e;-><init>(III)V

    return-object p1

    :cond_1
    array-length v3, p3

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v3, :cond_6

    aget-object v9, p3, v7

    iget-object v10, p2, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    if-eqz v10, :cond_2

    iget-object v10, v9, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    if-nez v10, :cond_2

    invoke-virtual {v9}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v9

    iget-object v10, p2, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    invoke-virtual {v9, v10}, Landroidx/media3/common/r$b;->T(Landroidx/media3/common/i;)Landroidx/media3/common/r$b;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v9

    :cond_2
    invoke-virtual {p1, p2, v9}, Landroidx/media3/exoplayer/mediacodec/w;->e(Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;

    move-result-object v10

    iget v10, v10, Landroidx/media3/exoplayer/k;->d:I

    if-eqz v10, :cond_5

    iget v10, v9, Landroidx/media3/common/r;->v:I

    if-eq v10, v4, :cond_4

    iget v11, v9, Landroidx/media3/common/r;->w:I

    if-ne v11, v4, :cond_3

    goto :goto_1

    :cond_3
    move v11, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v11, v5

    :goto_2
    or-int/2addr v8, v11

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v10, v9, Landroidx/media3/common/r;->w:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v9}, Landroidx/media3/exoplayer/video/j;->O1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    if-eqz v8, :cond_7

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, p3}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/j;->L1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)Landroid/graphics/Point;

    move-result-object p3

    if-eqz p3, :cond_7

    iget v5, p3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p2}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/j;->K1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Codec max resolution adjusted to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance p1, Landroidx/media3/exoplayer/video/j$e;

    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/exoplayer/video/j$e;-><init>(III)V

    return-object p1
.end method

.method protected N0(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/t$a;JJ)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/i0$a;->k(Ljava/lang/String;JJ)V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->E1(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->Q0:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()Landroidx/media3/exoplayer/mediacodec/w;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/w;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/mediacodec/w;->p()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->R0:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->d2()V

    return-void
.end method

.method protected O0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/i0$a;->l(Ljava/lang/String;)V

    return-void
.end method

.method protected P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;
    .locals 2

    invoke-super {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    iget-object p1, p1, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/r;

    invoke-virtual {v1, p1, v0}, Landroidx/media3/exoplayer/video/i0$a;->p(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    return-object v0
.end method

.method protected Q0(Landroidx/media3/common/r;Landroid/media/MediaFormat;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/video/j;->q1:I

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/t;->setVideoScalingMode(I)V

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget p2, p1, Landroidx/media3/common/r;->v:I

    iget v0, p1, Landroidx/media3/common/r;->w:I

    goto :goto_3

    :cond_1
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "crop-top"

    const-string v5, "crop-bottom"

    const-string v6, "crop-left"

    if-eqz v3, :cond_2

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v0, v6

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v3, p2

    add-int/2addr v3, v2

    move p2, v3

    goto :goto_2

    :cond_4
    const-string v3, "height"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :goto_2
    move v7, v0

    move v0, p2

    move p2, v7

    :goto_3
    iget v3, p1, Landroidx/media3/common/r;->z:F

    iget v4, p1, Landroidx/media3/common/r;->y:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_6

    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    move v7, v0

    move v0, p2

    move p2, v7

    :cond_6
    new-instance v4, Landroidx/media3/common/m0;

    invoke-direct {v4, p2, v0, v3}, Landroidx/media3/common/m0;-><init>(IIF)V

    iput-object v4, p0, Landroidx/media3/exoplayer/video/j;->z1:Landroidx/media3/common/m0;

    iget-object v4, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v4, :cond_7

    iget-boolean v5, p0, Landroidx/media3/exoplayer/video/j;->I1:Z

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/media3/common/r$b;->q0(F)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    invoke-virtual {p0, v4, v2, p1}, Landroidx/media3/exoplayer/video/j;->D1(Landroidx/media3/exoplayer/video/VideoSink;ILandroidx/media3/common/r;)V

    goto :goto_4

    :cond_7
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    iget p1, p1, Landroidx/media3/common/r;->x:F

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/u;->p(F)V

    :goto_4
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->I1:Z

    return-void
.end method

.method protected Q1(Landroidx/media3/common/r;Ljava/lang/String;Landroidx/media3/exoplayer/video/j$e;FZI)Landroid/media/MediaFormat;
    .locals 2

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Landroidx/media3/common/r;->v:I

    const-string v1, "width"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "height"

    iget v1, p1, Landroidx/media3/common/r;->w:I

    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p2, p1, Landroidx/media3/common/r;->r:Ljava/util/List;

    invoke-static {v0, p2}, Landroidx/media3/common/util/x;->e(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "frame-rate"

    iget v1, p1, Landroidx/media3/common/r;->x:F

    invoke-static {v0, p2, v1}, Landroidx/media3/common/util/x;->c(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    const-string p2, "rotation-degrees"

    iget v1, p1, Landroidx/media3/common/r;->y:I

    invoke-static {v0, p2, v1}, Landroidx/media3/common/util/x;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object p2, p1, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    invoke-static {v0, p2}, Landroidx/media3/common/util/x;->b(Landroid/media/MediaFormat;Landroidx/media3/common/i;)V

    const-string p2, "video/dolby-vision"

    iget-object v1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->i(Landroidx/media3/common/r;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "profile"

    invoke-static {v0, p2, p1}, Landroidx/media3/common/util/x;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_0
    iget p1, p3, Landroidx/media3/exoplayer/video/j$e;->a:I

    const-string p2, "max-width"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "max-height"

    iget p2, p3, Landroidx/media3/exoplayer/video/j$e;->b:I

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "max-input-size"

    iget p2, p3, Landroidx/media3/exoplayer/video/j$e;->c:I

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/x;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget p1, Landroidx/media3/common/util/a1;->a:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    if-lt p1, p2, :cond_1

    const-string p2, "priority"

    invoke-virtual {v0, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p4, p2

    if-eqz p2, :cond_1

    const-string p2, "operating-rate"

    invoke-virtual {v0, p2, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_1
    const/4 p2, 0x1

    if-eqz p5, :cond_2

    const-string p4, "no-post-process"

    invoke-virtual {v0, p4, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p4, "auto-frc"

    invoke-virtual {v0, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    if-eqz p6, :cond_3

    const-string p4, "tunneled-playback"

    invoke-virtual {v0, p4, p2}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string p2, "audio-session-id"

    invoke-virtual {v0, p2, p6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    const/16 p2, 0x23

    if-lt p1, p2, :cond_4

    iget p1, p0, Landroidx/media3/exoplayer/video/j;->B1:I

    neg-int p1, p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string p2, "importance"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_4
    return-object v0
.end method

.method protected S0(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S0(J)V

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    :cond_0
    return-void
.end method

.method protected T(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;
    .locals 8

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/w;->e(Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;

    move-result-object v0

    iget v1, v0, Landroidx/media3/exoplayer/k;->e:I

    iget-object v2, p0, Landroidx/media3/exoplayer/video/j;->P0:Landroidx/media3/exoplayer/video/j$e;

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/video/j$e;

    iget v3, p3, Landroidx/media3/common/r;->v:I

    iget v4, v2, Landroidx/media3/exoplayer/video/j$e;->a:I

    if-gt v3, v4, :cond_0

    iget v3, p3, Landroidx/media3/common/r;->w:I

    iget v4, v2, Landroidx/media3/exoplayer/video/j$e;->b:I

    if-le v3, v4, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x100

    :cond_1
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/video/j;->O1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    move-result v3

    iget v2, v2, Landroidx/media3/exoplayer/video/j$e;->c:I

    if-le v3, v2, :cond_2

    or-int/lit8 v1, v1, 0x40

    :cond_2
    move v7, v1

    new-instance v1, Landroidx/media3/exoplayer/k;

    iget-object v3, p1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    if-eqz v7, :cond_3

    const/4 p1, 0x0

    :goto_0
    move v6, p1

    goto :goto_1

    :cond_3
    iget p1, v0, Landroidx/media3/exoplayer/k;->d:I

    goto :goto_0

    :goto_1
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/k;-><init>(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;II)V

    return-object v1
.end method

.method protected T0()V
    .locals 5

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T0()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->e()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()J

    move-result-wide v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/j;->J1()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/video/VideoSink;->f(JJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->j()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->I1:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->d2()V

    return-void
.end method

.method protected U0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()Landroidx/media3/exoplayer/mediacodec/w;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/w;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/w;->b:Ljava/lang/String;

    const-string v1, "video/av01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/a;->b(Ljava/nio/ByteBuffer;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    if-nez v0, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    :cond_1
    sget v1, Landroidx/media3/common/util/a1;->a:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/j;->g2(J)V

    :cond_2
    return-void
.end method

.method protected V0(Landroidx/media3/exoplayer/w3$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->h(Landroidx/media3/exoplayer/w3$a;)V

    :cond_0
    return-void
.end method

.method protected V1(JZ)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/i;->P(J)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget v1, p3, Landroidx/media3/exoplayer/j;->d:I

    add-int/2addr v1, p1

    iput v1, p3, Landroidx/media3/exoplayer/j;->d:I

    iget p1, p3, Landroidx/media3/exoplayer/j;->f:I

    iget v2, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    add-int/2addr p1, v2

    iput p1, p3, Landroidx/media3/exoplayer/j;->f:I

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p3, Landroidx/media3/exoplayer/j;->d:I

    goto :goto_0

    :cond_1
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget v1, p3, Landroidx/media3/exoplayer/j;->j:I

    add-int/2addr v1, v0

    iput v1, p3, Landroidx/media3/exoplayer/j;->j:I

    iget-object p3, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    invoke-virtual {p3}, Ljava/util/PriorityQueue;->size()I

    move-result p3

    add-int/2addr p1, p3

    iget p3, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/video/j;->A2(II)V

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0()Z

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->t(Z)V

    :cond_2
    return v0
.end method

.method protected X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide/from16 v0, p10

    move/from16 v14, p13

    invoke-static/range {p5 .. p5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-direct {v6, v0, v1}, Landroidx/media3/exoplayer/video/j;->B2(J)V

    iget-object v7, v6, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    const/4 v15, 0x1

    if-eqz v7, :cond_1

    if-eqz p12, :cond_0

    if-nez v14, :cond_0

    invoke-virtual {v6, v2, v3, v4, v5}, Landroidx/media3/exoplayer/video/j;->x2(Landroidx/media3/exoplayer/mediacodec/t;IJ)V

    return v15

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/video/j;->J1()J

    move-result-wide v7

    add-long/2addr v7, v0

    iget-object v9, v6, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    new-instance v10, Landroidx/media3/exoplayer/video/j$b;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/video/j$b;-><init>(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/mediacodec/t;IJ)V

    invoke-interface {v9, v7, v8, v14, v10}, Landroidx/media3/exoplayer/video/VideoSink;->b(JZLandroidx/media3/exoplayer/video/VideoSink$b;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v7, v6, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()J

    move-result-wide v16

    iget-object v12, v6, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    move-wide/from16 v8, p10

    move-wide/from16 v10, p1

    move-object v0, v12

    move-wide/from16 v12, p3

    move v1, v15

    move-wide/from16 v14, v16

    move/from16 v16, p12

    move/from16 v17, p13

    move-object/from16 v18, v0

    invoke-virtual/range {v7 .. v18}, Landroidx/media3/exoplayer/video/u;->c(JJJJZZLandroidx/media3/exoplayer/video/u$a;)I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v7, 0x2

    if-eq v0, v7, :cond_5

    const/4 v7, 0x3

    if-eq v0, v7, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-virtual {v6, v2, v3, v4, v5}, Landroidx/media3/exoplayer/video/j;->x2(Landroidx/media3/exoplayer/mediacodec/t;IJ)V

    iget-object v0, v6, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u$a;->f()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Landroidx/media3/exoplayer/video/j;->D2(J)V

    return v1

    :cond_5
    invoke-virtual {v6, v2, v3, v4, v5}, Landroidx/media3/exoplayer/video/j;->H1(Landroidx/media3/exoplayer/mediacodec/t;IJ)V

    iget-object v0, v6, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u$a;->f()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Landroidx/media3/exoplayer/video/j;->D2(J)V

    return v1

    :cond_6
    invoke-static/range {p5 .. p5}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/t;

    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move/from16 p3, p7

    move-wide/from16 p4, v4

    move-object/from16 p6, p14

    invoke-direct/range {p1 .. p6}, Landroidx/media3/exoplayer/video/j;->i2(Landroidx/media3/exoplayer/mediacodec/t;IJLandroidx/media3/common/r;)V

    return v1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/i;->nanoTime()J

    move-result-wide v7

    move-object/from16 p8, p0

    move-wide/from16 p9, v4

    move-wide/from16 p11, v7

    move-object/from16 p13, p14

    invoke-direct/range {p8 .. p13}, Landroidx/media3/exoplayer/video/j;->e2(JJLandroidx/media3/common/r;)V

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v4

    move-wide/from16 p13, v7

    invoke-direct/range {p8 .. p14}, Landroidx/media3/exoplayer/video/j;->k2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V

    iget-object v0, v6, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u$a;->f()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Landroidx/media3/exoplayer/video/j;->D2(J)V

    return v1
.end method

.method protected Z(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/w;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/w;Landroid/view/Surface;)V

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->a()V

    :goto_0
    return-void
.end method

.method protected c1()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->e()V

    :cond_0
    return-void
.end method

.method public d(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d(FF)V

    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->a(F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/u;->r(F)V

    :goto_0
    return-void
.end method

.method protected d1()V
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->J1:Z

    iput v0, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    iput v0, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/a;->c()V

    :cond_0
    return-void
.end method

.method protected g2(J)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w1(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->z1:Landroidx/media3/common/m0;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/j;->Z1(Landroidx/media3/common/m0;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget v1, v0, Landroidx/media3/exoplayer/j;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/media3/exoplayer/j;->e:I

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->X1()V

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/j;->S0(J)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x7

    if-eq p1, v1, :cond_8

    const/16 v1, 0xa

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/16 v1, 0xd

    if-eq p1, v1, :cond_3

    const/16 v1, 0xe

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/video/j;->n2(Ljava/lang/Object;)V

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/video/j;

    invoke-virtual {p2, v0, p1}, Landroidx/media3/exoplayer/video/j;->handleMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/j;->B1:I

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->z2()V

    goto/16 :goto_0

    :cond_2
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/util/l0;

    invoke-virtual {p1}, Landroidx/media3/common/util/l0;->b()I

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroidx/media3/common/util/l0;->a()I

    move-result p2

    if-eqz p2, :cond_a

    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->X0:Landroidx/media3/common/util/l0;

    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_a

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-interface {p2, v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->p(Landroid/view/Surface;Landroidx/media3/common/util/l0;)V

    goto :goto_0

    :cond_3
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->q2(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/j;->r1:I

    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_5

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->r(I)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/u;->n(I)V

    goto :goto_0

    :cond_6
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/j;->q1:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object p1

    if-eqz p1, :cond_a

    iget p2, p0, Landroidx/media3/exoplayer/video/j;->q1:I

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/t;->setVideoScalingMode(I)V

    goto :goto_0

    :cond_7
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Landroidx/media3/exoplayer/video/j;->D1:I

    if-eq p2, p1, :cond_a

    iput p1, p0, Landroidx/media3/exoplayer/video/j;->D1:I

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    goto :goto_0

    :cond_8
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/video/t;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->F1:Landroidx/media3/exoplayer/video/t;

    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_a

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->d(Landroidx/media3/exoplayer/video/t;)V

    goto :goto_0

    :cond_9
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/video/j;->n2(Ljava/lang/Object;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 2

    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->j(Z)Z

    move-result v0

    return v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/u;->d(Z)Z

    move-result v0

    return v0
.end method

.method public j(JJ)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/j;->t2(JJ)Z

    move-result p1

    return p1
.end method

.method public k(JJJZZ)Z
    .locals 11

    move-object v6, p0

    move-wide v7, p3

    iget-wide v0, v6, Landroidx/media3/exoplayer/video/j;->N0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    move-result-wide v0

    const-wide/32 v2, 0x30d40

    add-long/2addr v0, v2

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    iget-wide v0, v6, Landroidx/media3/exoplayer/video/j;->N0:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    iput-boolean v0, v6, Landroidx/media3/exoplayer/video/j;->J1:Z

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/j;->r2(JJZ)Z

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v0, p8

    invoke-virtual {p0, p3, p4, v0}, Landroidx/media3/exoplayer/video/j;->V1(JZ)Z

    move-result v0

    if-eqz v0, :cond_2

    move v9, v10

    :cond_2
    return v9
.end method

.method protected l2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V
    .locals 0

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    invoke-interface {p1, p2, p5, p6}, Landroidx/media3/exoplayer/mediacodec/t;->h(IJ)V

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget p2, p1, Landroidx/media3/exoplayer/j;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/media3/exoplayer/j;->e:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/j;->u1:I

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->z1:Landroidx/media3/common/m0;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->Z1(Landroidx/media3/common/m0;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->X1()V

    :cond_0
    return-void
.end method

.method protected m0(Landroidx/media3/decoder/DecoderInputBuffer;)I
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->T1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected n1(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 7

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->U1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->T1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/j;->J1:Z

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroidx/media3/decoder/a;->hasSupplementalData()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Landroidx/media3/decoder/a;->notDependedOn()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    if-eqz v0, :cond_4

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget v0, p1, Landroidx/media3/exoplayer/j;->d:I

    add-int/2addr v0, v3

    iput v0, p1, Landroidx/media3/exoplayer/j;->d:I

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->J1:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    iget-wide v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    :cond_5
    :goto_0
    return v3

    :cond_6
    iget-object v2, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()Landroidx/media3/exoplayer/mediacodec/w;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/w;

    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/w;->b:Ljava/lang/String;

    const-string v4, "video/av01"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_c

    if-nez v0, :cond_8

    iget v4, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    if-gtz v4, :cond_7

    goto :goto_1

    :cond_7
    move v4, v1

    goto :goto_2

    :cond_8
    :goto_1
    move v4, v3

    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v5, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    invoke-virtual {v5, v2, v4}, Landroidx/media3/exoplayer/video/a;->d(Ljava/nio/ByteBuffer;Z)I

    move-result v4

    iget-object v5, p0, Landroidx/media3/exoplayer/video/j;->P0:Landroidx/media3/exoplayer/video/j$e;

    invoke-static {v5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/video/j$e;

    iget v5, v5, Landroidx/media3/exoplayer/video/j$e;->c:I

    add-int/2addr v5, v4

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    if-ge v5, v6, :cond_9

    move v5, v3

    goto :goto_3

    :cond_9
    move v5, v1

    :goto_3
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-eq v4, v2, :cond_c

    if-eqz v5, :cond_c

    iget-object v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz v0, :cond_a

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget v0, p1, Landroidx/media3/exoplayer/j;->d:I

    add-int/2addr v0, v3

    iput v0, p1, Landroidx/media3/exoplayer/j;->d:I

    goto :goto_4

    :cond_a
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->J1:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    iget-wide v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    :cond_b
    :goto_4
    return v3

    :cond_c
    return v1
.end method

.method public o(JJZ)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/video/j;->s2(JJZ)Z

    move-result p1

    return p1
.end method

.method protected o0()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    if-eqz v0, :cond_0

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected o1(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->S1(Landroidx/media3/exoplayer/mediacodec/w;)Z

    move-result p1

    return p1
.end method

.method protected p0(FLandroidx/media3/common/r;[Landroidx/media3/common/r;)F
    .locals 5

    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    iget v3, v3, Landroidx/media3/common/r;->x:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p2, v2, v0

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    mul-float v0, v2, p1

    :goto_1
    return v0
.end method

.method protected p2(Landroidx/media3/exoplayer/mediacodec/t;Landroid/view/Surface;)V
    .locals 0

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/t;->e(Landroid/view/Surface;)V

    return-void
.end method

.method public q2(Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->U0:Ljava/util/List;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->i(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected r0(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;Z)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    invoke-static {v0, p1, p2, p3, v1}, Landroidx/media3/exoplayer/video/j;->N1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->n(Ljava/util/List;Landroidx/media3/common/r;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected r2(JJZ)Z
    .locals 0

    const-wide/32 p3, -0x7a120

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public render(JJ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->render(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;->format:Landroidx/media3/common/r;

    const/16 p3, 0x1b59

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->render(JJ)V

    return-void
.end method

.method protected s1(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/video/j;->y2(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;)I

    move-result p1

    return p1
.end method

.method protected s2(JJZ)Z
    .locals 0

    const-wide/16 p3, -0x7530

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected t2(JJ)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const-wide/32 p1, 0x186a0

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected u0(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/t$a;
    .locals 7

    iget-object v2, p1, Landroidx/media3/exoplayer/mediacodec/w;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->y()[Landroidx/media3/common/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/video/j;->M1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;[Landroidx/media3/common/r;)Landroidx/media3/exoplayer/video/j$e;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/exoplayer/video/j;->P0:Landroidx/media3/exoplayer/video/j$e;

    iget-boolean v5, p0, Landroidx/media3/exoplayer/video/j;->J0:Z

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/video/j;->D1:I

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/video/j;->Q1(Landroidx/media3/common/r;Ljava/lang/String;Landroidx/media3/exoplayer/video/j$e;FZI)Landroid/media/MediaFormat;

    move-result-object p4

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->R1(Landroidx/media3/exoplayer/mediacodec/w;)Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, p4}, Landroidx/media3/exoplayer/video/j;->c2(Landroid/media/MediaFormat;)V

    invoke-static {p1, p4, p2, v0, p3}, Landroidx/media3/exoplayer/mediacodec/t$a;->b(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaFormat;Landroidx/media3/common/r;Landroid/view/Surface;Landroid/media/MediaCrypto;)Landroidx/media3/exoplayer/mediacodec/t$a;

    move-result-object p1

    return-object p1
.end method

.method protected u2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected v2(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/w;->k:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected w2(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/j;->E1(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected x2(Landroidx/media3/exoplayer/mediacodec/t;IJ)V
    .locals 0

    const-string p3, "skipVideoBuffer"

    invoke-static {p3}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/t;->k(IZ)V

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    iget p2, p1, Landroidx/media3/exoplayer/j;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/media3/exoplayer/j;->f:I

    return-void
.end method

.method protected z0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->R0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->f:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_2

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    const/4 v1, 0x4

    if-ne v3, v1, :cond_2

    if-eqz v4, :cond_1

    if-ne v4, v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/t;

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/video/j;->m2(Landroidx/media3/exoplayer/mediacodec/t;[B)V

    :cond_2
    return-void
.end method
