.class public Ld3/e;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/e$b;,
        Ld3/e$c;
    }
.end annotation


# static fields
.field public static final f0:Ll2/x;

.field private static final g0:[B

.field private static final h0:[B

.field private static final i0:[B

.field private static final j0:[B

.field private static final k0:Ljava/util/UUID;

.field private static final l0:Ljava/util/Map;


# instance fields
.field private A:J

.field private B:Z

.field private C:J

.field private D:J

.field private E:J

.field private F:Landroidx/media3/common/util/v;

.field private G:Landroidx/media3/common/util/v;

.field private H:Z

.field private I:Z

.field private J:I

.field private K:J

.field private L:J

.field private M:I

.field private N:I

.field private O:[I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:Z

.field private U:J

.field private V:I

.field private W:I

.field private X:I

.field private Y:Z

.field private Z:Z

.field private final a:Ld3/c;

.field private a0:Z

.field private final b:Ld3/g;

.field private b0:I

.field private final c:Landroid/util/SparseArray;

.field private c0:B

.field private final d:Z

.field private d0:Z

.field private final e:Z

.field private e0:Ll2/t;

.field private final f:Li3/s$a;

.field private final g:Landroidx/media3/common/util/j0;

.field private final h:Landroidx/media3/common/util/j0;

.field private final i:Landroidx/media3/common/util/j0;

.field private final j:Landroidx/media3/common/util/j0;

.field private final k:Landroidx/media3/common/util/j0;

.field private final l:Landroidx/media3/common/util/j0;

.field private final m:Landroidx/media3/common/util/j0;

.field private final n:Landroidx/media3/common/util/j0;

.field private final o:Landroidx/media3/common/util/j0;

.field private final p:Landroidx/media3/common/util/j0;

.field private q:Ljava/nio/ByteBuffer;

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:Ld3/e$c;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/d;

    invoke-direct {v0}, Ld3/d;-><init>()V

    sput-object v0, Ld3/e;->f0:Ll2/x;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Ld3/e;->g0:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-static {v1}, Landroidx/media3/common/util/a1;->u0(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Ld3/e;->h0:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Ld3/e;->i0:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Ld3/e;->j0:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Ld3/e;->k0:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ld3/e;->l0:Ljava/util/Map;

    return-void

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ld3/a;

    invoke-direct {v0}, Ld3/a;-><init>()V

    const/4 v1, 0x2

    sget-object v2, Li3/s$a;->a:Li3/s$a;

    invoke-direct {p0, v0, v1, v2}, Ld3/e;-><init>(Ld3/c;ILi3/s$a;)V

    return-void
.end method

.method constructor <init>(Ld3/c;ILi3/s$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ld3/e;->s:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Ld3/e;->t:J

    iput-wide v2, p0, Ld3/e;->u:J

    iput-wide v2, p0, Ld3/e;->v:J

    iput-wide v0, p0, Ld3/e;->C:J

    iput-wide v0, p0, Ld3/e;->D:J

    iput-wide v2, p0, Ld3/e;->E:J

    iput-object p1, p0, Ld3/e;->a:Ld3/c;

    new-instance v0, Ld3/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld3/e$b;-><init>(Ld3/e;Ld3/e$a;)V

    invoke-interface {p1, v0}, Ld3/c;->b(Ld3/b;)V

    iput-object p3, p0, Ld3/e;->f:Li3/s$a;

    and-int/lit8 p1, p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Ld3/e;->d:Z

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    move p3, v0

    :cond_1
    iput-boolean p3, p0, Ld3/e;->e:Z

    new-instance p1, Ld3/g;

    invoke-direct {p1}, Ld3/g;-><init>()V

    iput-object p1, p0, Ld3/e;->b:Ld3/g;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ld3/e;->c:Landroid/util/SparseArray;

    new-instance p1, Landroidx/media3/common/util/j0;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    const/4 v1, -0x1

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-direct {p1, p3}, Landroidx/media3/common/util/j0;-><init>([B)V

    iput-object p1, p0, Ld3/e;->j:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1, p2}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Ld3/e;->k:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    sget-object p3, Landroidx/media3/container/g;->a:[B

    invoke-direct {p1, p3}, Landroidx/media3/common/util/j0;-><init>([B)V

    iput-object p1, p0, Ld3/e;->g:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1, p2}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Ld3/e;->h:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object p1, p0, Ld3/e;->l:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object p1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Ld3/e;->n:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object p1, p0, Ld3/e;->o:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object p1, p0, Ld3/e;->p:Landroidx/media3/common/util/j0;

    new-array p1, v0, [I

    iput-object p1, p0, Ld3/e;->O:[I

    return-void
.end method

.method public constructor <init>(Li3/s$a;I)V
    .locals 1

    new-instance v0, Ld3/a;

    invoke-direct {v0}, Ld3/a;-><init>()V

    invoke-direct {p0, v0, p2, p1}, Ld3/e;-><init>(Ld3/c;ILi3/s$a;)V

    return-void
.end method

.method private static synthetic B()[Ll2/r;
    .locals 3

    new-instance v0, Ld3/e;

    sget-object v1, Li3/s$a;->a:Li3/s$a;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ld3/e;-><init>(Li3/s$a;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ll2/r;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private C(Ll2/l0;J)Z
    .locals 5

    iget-boolean v0, p0, Ld3/e;->B:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-wide p2, p0, Ld3/e;->D:J

    iget-wide p2, p0, Ld3/e;->C:J

    iput-wide p2, p1, Ll2/l0;->a:J

    iput-boolean v2, p0, Ld3/e;->B:Z

    return v1

    :cond_0
    iget-boolean p2, p0, Ld3/e;->y:Z

    if-eqz p2, :cond_1

    iget-wide p2, p0, Ld3/e;->D:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    iput-wide p2, p1, Ll2/l0;->a:J

    iput-wide v3, p0, Ld3/e;->D:J

    return v1

    :cond_1
    return v2
.end method

.method private D(Ll2/s;I)V
    .locals 3

    iget-object v0, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->g()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->b()I

    move-result v0

    if-ge v0, p2, :cond_1

    iget-object v0, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->c(I)V

    :cond_1
    iget-object v0, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->g()I

    move-result v1

    iget-object v2, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->g()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Ll2/s;->readFully([BII)V

    iget-object p1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->V(I)V

    return-void
.end method

.method private E()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ld3/e;->V:I

    iput v0, p0, Ld3/e;->W:I

    iput v0, p0, Ld3/e;->X:I

    iput-boolean v0, p0, Ld3/e;->Y:Z

    iput-boolean v0, p0, Ld3/e;->Z:Z

    iput-boolean v0, p0, Ld3/e;->a0:Z

    iput v0, p0, Ld3/e;->b0:I

    iput-byte v0, p0, Ld3/e;->c0:B

    iput-boolean v0, p0, Ld3/e;->d0:Z

    iget-object v1, p0, Ld3/e;->l:Landroidx/media3/common/util/j0;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/j0;->S(I)V

    return-void
.end method

.method private F(J)J
    .locals 6

    iget-wide v2, p0, Ld3/e;->t:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method private static G(Ljava/lang/String;J[B)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-wide/16 v1, 0x3e8

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "S_TEXT/UTF8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v4, "S_TEXT/WEBVTT"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "S_TEXT/ASS"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "%02d:%02d:%02d,%03d"

    invoke-static {p1, p2, p0, v1, v2}, Ld3/e;->t(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x13

    goto :goto_1

    :pswitch_1
    const-string p0, "%02d:%02d:%02d.%03d"

    invoke-static {p1, p2, p0, v1, v2}, Ld3/e;->t(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x19

    goto :goto_1

    :pswitch_2
    const-string p0, "%01d:%02d:%02d:%02d"

    const-wide/16 v1, 0x2710

    invoke-static {p1, p2, p0, v1, v2}, Ld3/e;->t(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x15

    :goto_1
    array-length p2, p0

    invoke-static {p0, v0, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private J(Ll2/s;Ld3/e$c;IZ)I
    .locals 10

    iget-object v0, p2, Ld3/e$c;->c:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Ld3/e;->g0:[B

    invoke-direct {p0, p1, p2, p3}, Ld3/e;->K(Ll2/s;[BI)V

    invoke-direct {p0}, Ld3/e;->r()I

    move-result p1

    return p1

    :cond_0
    const-string v0, "S_TEXT/ASS"

    iget-object v1, p2, Ld3/e$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Ld3/e;->i0:[B

    invoke-direct {p0, p1, p2, p3}, Ld3/e;->K(Ll2/s;[BI)V

    invoke-direct {p0}, Ld3/e;->r()I

    move-result p1

    return p1

    :cond_1
    const-string v0, "S_TEXT/WEBVTT"

    iget-object v1, p2, Ld3/e$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Ld3/e;->j0:[B

    invoke-direct {p0, p1, p2, p3}, Ld3/e;->K(Ll2/s;[BI)V

    invoke-direct {p0}, Ld3/e;->r()I

    move-result p1

    return p1

    :cond_2
    iget-object v0, p2, Ld3/e$c;->Z:Ll2/s0;

    iget-boolean v1, p0, Ld3/e;->Y:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_11

    iget-boolean v1, p2, Ld3/e$c;->i:Z

    if-eqz v1, :cond_e

    iget v1, p0, Ld3/e;->R:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Ld3/e;->R:I

    iget-boolean v1, p0, Ld3/e;->Z:Z

    const/16 v6, 0x80

    if-nez v1, :cond_4

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Ll2/s;->readFully([BII)V

    iget v1, p0, Ld3/e;->V:I

    add-int/2addr v1, v4

    iput v1, p0, Ld3/e;->V:I

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_3

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    aget-byte v1, v1, v5

    iput-byte v1, p0, Ld3/e;->c0:B

    iput-boolean v4, p0, Ld3/e;->Z:Z

    goto :goto_0

    :cond_3
    const-string p1, "Extension bit is set in signal byte"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_0
    iget-byte v1, p0, Ld3/e;->c0:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_f

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    move v1, v5

    :goto_1
    iget v7, p0, Ld3/e;->R:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Ld3/e;->R:I

    iget-boolean v7, p0, Ld3/e;->d0:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Ld3/e;->n:Landroidx/media3/common/util/j0;

    invoke-virtual {v7}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v7

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Ll2/s;->readFully([BII)V

    iget v7, p0, Ld3/e;->V:I

    add-int/2addr v7, v8

    iput v7, p0, Ld3/e;->V:I

    iput-boolean v4, p0, Ld3/e;->d0:Z

    iget-object v7, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v7}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v7

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v6, v5

    :goto_2
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    iget-object v6, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v6, v5}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v6, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-interface {v0, v6, v4, v4}, Ll2/s0;->a(Landroidx/media3/common/util/j0;II)V

    iget v6, p0, Ld3/e;->W:I

    add-int/2addr v6, v4

    iput v6, p0, Ld3/e;->W:I

    iget-object v6, p0, Ld3/e;->n:Landroidx/media3/common/util/j0;

    invoke-virtual {v6, v5}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v6, p0, Ld3/e;->n:Landroidx/media3/common/util/j0;

    invoke-interface {v0, v6, v8, v4}, Ll2/s0;->a(Landroidx/media3/common/util/j0;II)V

    iget v6, p0, Ld3/e;->W:I

    add-int/2addr v6, v8

    iput v6, p0, Ld3/e;->W:I

    :cond_7
    if-eqz v1, :cond_f

    iget-boolean v1, p0, Ld3/e;->a0:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Ll2/s;->readFully([BII)V

    iget v1, p0, Ld3/e;->V:I

    add-int/2addr v1, v4

    iput v1, p0, Ld3/e;->V:I

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1, v5}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    iput v1, p0, Ld3/e;->b0:I

    iput-boolean v4, p0, Ld3/e;->a0:Z

    :cond_8
    iget v1, p0, Ld3/e;->b0:I

    mul-int/2addr v1, v2

    iget-object v6, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v6, v1}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v6, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v6

    invoke-interface {p1, v6, v5, v1}, Ll2/s;->readFully([BII)V

    iget v6, p0, Ld3/e;->V:I

    add-int/2addr v6, v1

    iput v6, p0, Ld3/e;->V:I

    iget v1, p0, Ld3/e;->b0:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    iget-object v7, p0, Ld3/e;->q:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Ld3/e;->q:Ljava/nio/ByteBuffer;

    :cond_a
    iget-object v7, p0, Ld3/e;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, p0, Ld3/e;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v1, v5

    move v7, v1

    :goto_3
    iget v8, p0, Ld3/e;->b0:I

    if-ge v1, v8, :cond_c

    iget-object v8, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->L()I

    move-result v8

    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    iget-object v9, p0, Ld3/e;->q:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_b
    iget-object v9, p0, Ld3/e;->q:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_3

    :cond_c
    iget v1, p0, Ld3/e;->V:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    rem-int/2addr v8, v3

    if-ne v8, v4, :cond_d

    iget-object v7, p0, Ld3/e;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_d
    iget-object v7, p0, Ld3/e;->q:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Ld3/e;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    iget-object v1, p0, Ld3/e;->o:Landroidx/media3/common/util/j0;

    iget-object v7, p0, Ld3/e;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroidx/media3/common/util/j0;->U([BI)V

    iget-object v1, p0, Ld3/e;->o:Landroidx/media3/common/util/j0;

    invoke-interface {v0, v1, v6, v4}, Ll2/s0;->a(Landroidx/media3/common/util/j0;II)V

    iget v1, p0, Ld3/e;->W:I

    add-int/2addr v1, v6

    iput v1, p0, Ld3/e;->W:I

    goto :goto_6

    :cond_e
    iget-object v1, p2, Ld3/e$c;->j:[B

    if-eqz v1, :cond_f

    iget-object v6, p0, Ld3/e;->l:Landroidx/media3/common/util/j0;

    array-length v7, v1

    invoke-virtual {v6, v1, v7}, Landroidx/media3/common/util/j0;->U([BI)V

    :cond_f
    :goto_6
    invoke-static {p2, p4}, Ld3/e$c;->e(Ld3/e$c;Z)Z

    move-result p4

    if-eqz p4, :cond_10

    iget p4, p0, Ld3/e;->R:I

    const/high16 v1, 0x10000000

    or-int/2addr p4, v1

    iput p4, p0, Ld3/e;->R:I

    iget-object p4, p0, Ld3/e;->p:Landroidx/media3/common/util/j0;

    invoke-virtual {p4, v5}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object p4, p0, Ld3/e;->l:Landroidx/media3/common/util/j0;

    invoke-virtual {p4}, Landroidx/media3/common/util/j0;->g()I

    move-result p4

    add-int/2addr p4, p3

    iget v1, p0, Ld3/e;->V:I

    sub-int/2addr p4, v1

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    shr-int/lit8 v6, p4, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    shr-int/lit8 v6, p4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    iget-object v1, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    const/4 v6, 0x3

    aput-byte p4, v1, v6

    iget-object p4, p0, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-interface {v0, p4, v2, v3}, Ll2/s0;->a(Landroidx/media3/common/util/j0;II)V

    iget p4, p0, Ld3/e;->W:I

    add-int/2addr p4, v2

    iput p4, p0, Ld3/e;->W:I

    :cond_10
    iput-boolean v4, p0, Ld3/e;->Y:Z

    :cond_11
    iget-object p4, p0, Ld3/e;->l:Landroidx/media3/common/util/j0;

    invoke-virtual {p4}, Landroidx/media3/common/util/j0;->g()I

    move-result p4

    add-int/2addr p3, p4

    const-string p4, "V_MPEG4/ISO/AVC"

    iget-object v1, p2, Ld3/e$c;->c:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_15

    const-string p4, "V_MPEGH/ISO/HEVC"

    iget-object v1, p2, Ld3/e$c;->c:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_12

    goto :goto_9

    :cond_12
    iget-object p4, p2, Ld3/e$c;->V:Ll2/t0;

    if-eqz p4, :cond_14

    iget-object p4, p0, Ld3/e;->l:Landroidx/media3/common/util/j0;

    invoke-virtual {p4}, Landroidx/media3/common/util/j0;->g()I

    move-result p4

    if-nez p4, :cond_13

    goto :goto_7

    :cond_13
    move v4, v5

    :goto_7
    invoke-static {v4}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object p4, p2, Ld3/e$c;->V:Ll2/t0;

    invoke-virtual {p4, p1}, Ll2/t0;->d(Ll2/s;)V

    :cond_14
    :goto_8
    iget p4, p0, Ld3/e;->V:I

    if-ge p4, p3, :cond_17

    sub-int p4, p3, p4

    invoke-direct {p0, p1, v0, p4}, Ld3/e;->L(Ll2/s;Ll2/s0;I)I

    move-result p4

    iget v1, p0, Ld3/e;->V:I

    add-int/2addr v1, p4

    iput v1, p0, Ld3/e;->V:I

    iget v1, p0, Ld3/e;->W:I

    add-int/2addr v1, p4

    iput v1, p0, Ld3/e;->W:I

    goto :goto_8

    :cond_15
    :goto_9
    iget-object p4, p0, Ld3/e;->h:Landroidx/media3/common/util/j0;

    invoke-virtual {p4}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p4

    aput-byte v5, p4, v5

    aput-byte v5, p4, v4

    aput-byte v5, p4, v3

    iget v1, p2, Ld3/e$c;->a0:I

    rsub-int/lit8 v3, v1, 0x4

    :goto_a
    iget v4, p0, Ld3/e;->V:I

    if-ge v4, p3, :cond_17

    iget v4, p0, Ld3/e;->X:I

    if-nez v4, :cond_16

    invoke-direct {p0, p1, p4, v3, v1}, Ld3/e;->M(Ll2/s;[BII)V

    iget v4, p0, Ld3/e;->V:I

    add-int/2addr v4, v1

    iput v4, p0, Ld3/e;->V:I

    iget-object v4, p0, Ld3/e;->h:Landroidx/media3/common/util/j0;

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v4, p0, Ld3/e;->h:Landroidx/media3/common/util/j0;

    invoke-virtual {v4}, Landroidx/media3/common/util/j0;->L()I

    move-result v4

    iput v4, p0, Ld3/e;->X:I

    iget-object v4, p0, Ld3/e;->g:Landroidx/media3/common/util/j0;

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v4, p0, Ld3/e;->g:Landroidx/media3/common/util/j0;

    invoke-interface {v0, v4, v2}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget v4, p0, Ld3/e;->W:I

    add-int/2addr v4, v2

    iput v4, p0, Ld3/e;->W:I

    goto :goto_a

    :cond_16
    invoke-direct {p0, p1, v0, v4}, Ld3/e;->L(Ll2/s;Ll2/s0;I)I

    move-result v4

    iget v6, p0, Ld3/e;->V:I

    add-int/2addr v6, v4

    iput v6, p0, Ld3/e;->V:I

    iget v6, p0, Ld3/e;->W:I

    add-int/2addr v6, v4

    iput v6, p0, Ld3/e;->W:I

    iget v6, p0, Ld3/e;->X:I

    sub-int/2addr v6, v4

    iput v6, p0, Ld3/e;->X:I

    goto :goto_a

    :cond_17
    const-string p1, "A_VORBIS"

    iget-object p2, p2, Ld3/e$c;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Ld3/e;->j:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, v5}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p1, p0, Ld3/e;->j:Landroidx/media3/common/util/j0;

    invoke-interface {v0, p1, v2}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget p1, p0, Ld3/e;->W:I

    add-int/2addr p1, v2

    iput p1, p0, Ld3/e;->W:I

    :cond_18
    invoke-direct {p0}, Ld3/e;->r()I

    move-result p1

    return p1
.end method

.method private K(Ll2/s;[BI)V
    .locals 4

    array-length v0, p2

    add-int/2addr v0, p3

    iget-object v1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->b()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    add-int v3, v0, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/j0;->T([B)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Ll2/s;->readFully([BII)V

    iget-object p1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->V(I)V

    return-void
.end method

.method private L(Ll2/s;Ll2/s0;I)I
    .locals 1

    iget-object v0, p0, Ld3/e;->l:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p3, p0, Ld3/e;->l:Landroidx/media3/common/util/j0;

    invoke-interface {p2, p3, p1}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Ll2/s0;->e(Landroidx/media3/common/j;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method private M(Ll2/s;[BII)V
    .locals 2

    iget-object v0, p0, Ld3/e;->l:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int/2addr p4, v0

    invoke-interface {p1, p2, v1, p4}, Ll2/s;->readFully([BII)V

    if-lez v0, :cond_0

    iget-object p1, p0, Ld3/e;->l:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, p2, p3, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    :cond_0
    return-void
.end method

.method public static synthetic a()[Ll2/r;
    .locals 1

    invoke-static {}, Ld3/e;->B()[Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g()[B
    .locals 1

    sget-object v0, Ld3/e;->h0:[B

    return-object v0
.end method

.method static synthetic h()Ljava/util/Map;
    .locals 1

    sget-object v0, Ld3/e;->l0:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i()Ljava/util/UUID;
    .locals 1

    sget-object v0, Ld3/e;->k0:Ljava/util/UUID;

    return-object v0
.end method

.method private j(I)V
    .locals 2

    iget-object v0, p0, Ld3/e;->F:Landroidx/media3/common/util/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld3/e;->G:Landroidx/media3/common/util/v;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method private k(I)V
    .locals 2

    iget-object v0, p0, Ld3/e;->x:Ld3/e$c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Ld3/e;->e0:Ll2/t;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private n(Landroidx/media3/common/util/v;Landroidx/media3/common/util/v;)Ll2/m0;
    .locals 11

    iget-wide v0, p0, Ld3/e;->s:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Ld3/e;->v:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/media3/common/util/v;->d()I

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroidx/media3/common/util/v;->d()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/v;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/v;->d()I

    move-result v0

    new-array v1, v0, [I

    new-array v2, v0, [J

    new-array v3, v0, [J

    new-array v4, v0, [J

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_1

    invoke-virtual {p1, v6}, Landroidx/media3/common/util/v;->c(I)J

    move-result-wide v7

    aput-wide v7, v4, v6

    iget-wide v7, p0, Ld3/e;->s:J

    invoke-virtual {p2, v6}, Landroidx/media3/common/util/v;->c(I)J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v5, p1, :cond_2

    add-int/lit8 p1, v5, 0x1

    aget-wide v6, v2, p1

    aget-wide v8, v2, v5

    sub-long/2addr v6, v8

    long-to-int p2, v6

    aput p2, v1, v5

    aget-wide v6, v4, p1

    aget-wide v8, v4, v5

    sub-long/2addr v6, v8

    aput-wide v6, v3, v5

    move v5, p1

    goto :goto_1

    :cond_2
    move p2, p1

    :goto_2
    if-lez p2, :cond_3

    aget-wide v5, v4, p2

    iget-wide v7, p0, Ld3/e;->v:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_3
    iget-wide v5, p0, Ld3/e;->s:J

    iget-wide v7, p0, Ld3/e;->r:J

    add-long/2addr v5, v7

    aget-wide v7, v2, p2

    sub-long/2addr v5, v7

    long-to-int v0, v5

    aput v0, v1, p2

    iget-wide v5, p0, Ld3/e;->v:J

    aget-wide v7, v4, p2

    sub-long/2addr v5, v7

    aput-wide v5, v3, p2

    if-ge p2, p1, :cond_4

    const-string p1, "MatroskaExtractor"

    const-string v0, "Discarding trailing cue points with timestamps greater than total duration"

    invoke-static {p1, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-static {v3, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    invoke-static {v4, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    :cond_4
    new-instance p1, Ll2/h;

    invoke-direct {p1, v1, v2, v3, v4}, Ll2/h;-><init>([I[J[J[J)V

    return-object p1

    :cond_5
    :goto_3
    new-instance p1, Ll2/m0$b;

    iget-wide v0, p0, Ld3/e;->v:J

    invoke-direct {p1, v0, v1}, Ll2/m0$b;-><init>(J)V

    return-object p1
.end method

.method private o(Ld3/e$c;JIII)V
    .locals 9

    iget-object v0, p1, Ld3/e$c;->V:Ll2/t0;

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    iget-object v1, p1, Ld3/e$c;->Z:Ll2/s0;

    iget-object v7, p1, Ld3/e$c;->k:Ll2/s0$a;

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Ll2/t0;->c(Ll2/s0;JIIILl2/s0$a;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "S_TEXT/UTF8"

    iget-object v1, p1, Ld3/e$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/ASS"

    iget-object v1, p1, Ld3/e$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/WEBVTT"

    iget-object v1, p1, Ld3/e$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Ld3/e;->N:I

    const-string v1, "MatroskaExtractor"

    if-le v0, v8, :cond_2

    const-string v0, "Skipping subtitle sample in laced block."

    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-wide v2, p0, Ld3/e;->L:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const-string v0, "Skipping subtitle sample with no duration."

    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p1, Ld3/e$c;->c:Ljava/lang/String;

    iget-object v1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Ld3/e;->G(Ljava/lang/String;J[B)V

    iget-object v0, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    :goto_0
    iget-object v1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->g()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-nez v1, :cond_4

    iget-object v1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/j0;->V(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p1, Ld3/e$c;->Z:Ll2/s0;

    iget-object v1, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->g()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget-object v0, p0, Ld3/e;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->g()I

    move-result v0

    add-int/2addr p5, v0

    :cond_6
    :goto_2
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_8

    iget v0, p0, Ld3/e;->N:I

    if-le v0, v8, :cond_7

    iget-object v0, p0, Ld3/e;->p:Landroidx/media3/common/util/j0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->S(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Ld3/e;->p:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->g()I

    move-result v0

    iget-object v1, p1, Ld3/e$c;->Z:Ll2/s0;

    iget-object v2, p0, Ld3/e;->p:Landroidx/media3/common/util/j0;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v0, v3}, Ll2/s0;->a(Landroidx/media3/common/util/j0;II)V

    add-int/2addr p5, v0

    :cond_8
    :goto_3
    move v4, p5

    iget-object v0, p1, Ld3/e$c;->Z:Ll2/s0;

    iget-object v6, p1, Ld3/e$c;->k:Ll2/s0$a;

    move-wide v1, p2

    move v3, p4

    move v5, p6

    invoke-interface/range {v0 .. v6}, Ll2/s0;->d(JIIILl2/s0$a;)V

    :goto_4
    iput-boolean v8, p0, Ld3/e;->I:Z

    return-void
.end method

.method private static q([II)[I
    .locals 1

    if-nez p0, :cond_0

    new-array p0, p1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private r()I
    .locals 1

    iget v0, p0, Ld3/e;->W:I

    invoke-direct {p0}, Ld3/e;->E()V

    return v0
.end method

.method private static t(JLjava/lang/String;J)[B
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/a;->a(Z)V

    const-wide v2, 0xd693a400L

    div-long v4, p0, v2

    long-to-int v4, v4

    int-to-long v5, v4

    mul-long/2addr v5, v2

    sub-long/2addr p0, v5

    const-wide/32 v2, 0x3938700

    div-long v5, p0, v2

    long-to-int v5, v5

    int-to-long v6, v5

    mul-long/2addr v6, v2

    sub-long/2addr p0, v6

    const-wide/32 v2, 0xf4240

    div-long v6, p0, v2

    long-to-int v6, v6

    int-to-long v7, v6

    mul-long/2addr v7, v2

    sub-long/2addr p0, v7

    div-long/2addr p0, p3

    long-to-int p0, p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v0

    aput-object p4, v3, v1

    const/4 p3, 0x2

    aput-object v2, v3, p3

    const/4 p3, 0x3

    aput-object p0, v3, p3

    invoke-static {p1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/a1;->u0(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static z(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "A_OPUS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "A_FLAC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "A_EAC3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "V_MPEG2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "S_TEXT/WEBVTT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "V_MPEGH/ISO/HEVC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "S_TEXT/ASS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "A_PCM/INT/LIT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "A_PCM/INT/BIG"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "A_PCM/FLOAT/IEEE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "A_DTS/EXPRESS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "V_THEORA"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "S_HDMV/PGS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "V_VP9"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "V_VP8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "V_AV1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "A_DTS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "A_AC3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "A_AAC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_14
    const-string v3, "A_DTS/LOSSLESS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "S_VOBSUB"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "V_MPEG4/ISO/AVC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_17
    const-string v3, "V_MPEG4/ISO/ASP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_18
    const-string v3, "S_DVBSUB"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_19
    const-string v3, "V_MS/VFW/FOURCC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1a
    const-string v3, "A_MPEG/L3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1b
    const-string v3, "A_MPEG/L2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1c
    const-string v3, "A_VORBIS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1d
    const-string v3, "A_TRUEHD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1e
    const-string v3, "A_MS/ACM"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1f
    const-string v3, "V_MPEG4/ISO/SP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_0

    :cond_1f
    move v2, v0

    goto :goto_0

    :sswitch_20
    const-string v3, "V_MPEG4/ISO/AP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_0

    :cond_20
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected A(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p1, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected H(IJJ)V
    .locals 5

    invoke-direct {p0}, Ld3/e;->l()V

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xae

    if-eq p1, v0, :cond_a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_6

    const v0, 0x18538067

    if-eq p1, v0, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean p1, p0, Ld3/e;->y:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Ld3/e;->d:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Ld3/e;->C:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Ld3/e;->B:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ld3/e;->e0:Ll2/t;

    new-instance p2, Ll2/m0$b;

    iget-wide p3, p0, Ld3/e;->v:J

    invoke-direct {p2, p3, p4}, Ll2/m0$b;-><init>(J)V

    invoke-interface {p1, p2}, Ll2/t;->f(Ll2/m0;)V

    iput-boolean v3, p0, Ld3/e;->y:Z

    goto :goto_1

    :cond_2
    new-instance p1, Landroidx/media3/common/util/v;

    invoke-direct {p1}, Landroidx/media3/common/util/v;-><init>()V

    iput-object p1, p0, Ld3/e;->F:Landroidx/media3/common/util/v;

    new-instance p1, Landroidx/media3/common/util/v;

    invoke-direct {p1}, Landroidx/media3/common/util/v;-><init>()V

    iput-object p1, p0, Ld3/e;->G:Landroidx/media3/common/util/v;

    goto :goto_1

    :cond_3
    iget-wide v3, p0, Ld3/e;->s:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    cmp-long p1, v3, p2

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Multiple Segment elements not supported"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_0
    iput-wide p2, p0, Ld3/e;->s:J

    iput-wide p4, p0, Ld3/e;->r:J

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    iput-boolean v3, p1, Ld3/e$c;->z:Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    iput-boolean v3, p1, Ld3/e$c;->i:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    iput p1, p0, Ld3/e;->z:I

    iput-wide v1, p0, Ld3/e;->A:J

    goto :goto_1

    :cond_9
    iput-boolean v1, p0, Ld3/e;->H:Z

    goto :goto_1

    :cond_a
    new-instance p1, Ld3/e$c;

    invoke-direct {p1}, Ld3/e$c;-><init>()V

    iput-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iget-boolean p2, p0, Ld3/e;->w:Z

    iput-boolean p2, p1, Ld3/e$c;->a:Z

    goto :goto_1

    :cond_b
    iput-boolean v1, p0, Ld3/e;->T:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ld3/e;->U:J

    :cond_c
    :goto_1
    return-void
.end method

.method protected I(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x86

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    invoke-static {p1, p2}, Ld3/e$c;->d(Ld3/e$c;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    iput-object p2, p1, Ld3/e$c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DocType "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_0
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Ld3/e;->w:Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    iput-object p2, p1, Ld3/e$c;->c:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public final b(Ll2/t;)V
    .locals 2

    iget-boolean v0, p0, Ld3/e;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Li3/t;

    iget-object v1, p0, Ld3/e;->f:Li3/s$a;

    invoke-direct {v0, p1, v1}, Li3/t;-><init>(Ll2/t;Li3/s$a;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Ld3/e;->e0:Ll2/t;

    return-void
.end method

.method public final c(Ll2/s;Ll2/l0;)I
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld3/e;->I:Z

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v3, p0, Ld3/e;->I:Z

    if-nez v3, :cond_1

    iget-object v2, p0, Ld3/e;->a:Ld3/c;

    invoke-interface {v2, p1}, Ld3/c;->a(Ll2/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Ld3/e;->C(Ll2/l0;J)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    if-nez v2, :cond_3

    :goto_0
    iget-object p1, p0, Ld3/e;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Ld3/e;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld3/e$c;

    invoke-static {p1}, Ld3/e$c;->a(Ld3/e$c;)V

    invoke-virtual {p1}, Ld3/e$c;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method public final d(Ll2/s;)Z
    .locals 1

    new-instance v0, Ld3/f;

    invoke-direct {v0}, Ld3/f;-><init>()V

    invoke-virtual {v0, p1}, Ld3/f;->b(Ll2/s;)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Ll2/r;
    .locals 1

    invoke-static {p0}, Ll2/q;->b(Ll2/r;)Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ll2/q;->a(Ll2/r;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected m(IILl2/s;)V
    .locals 21

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p3

    const/16 v2, 0xa1

    const/16 v3, 0xa3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_8

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_6

    const/16 v2, 0x41ed

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_4

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_0

    invoke-direct/range {p0 .. p1}, Ld3/e;->k(I)V

    iget-object v0, v7, Ld3/e;->x:Ld3/e$c;

    new-array v2, v1, [B

    iput-object v2, v0, Ld3/e$c;->x:[B

    invoke-interface {v8, v2, v9, v1}, Ll2/s;->readFully([BII)V

    goto/16 :goto_f

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-direct/range {p0 .. p1}, Ld3/e;->k(I)V

    iget-object v0, v7, Ld3/e;->x:Ld3/e$c;

    new-array v2, v1, [B

    iput-object v2, v0, Ld3/e$c;->l:[B

    invoke-interface {v8, v2, v9, v1}, Ll2/s;->readFully([BII)V

    goto/16 :goto_f

    :cond_2
    iget-object v0, v7, Ld3/e;->k:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, v7, Ld3/e;->k:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    rsub-int/lit8 v2, v1, 0x4

    invoke-interface {v8, v0, v2, v1}, Ll2/s;->readFully([BII)V

    iget-object v0, v7, Ld3/e;->k:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v0, v7, Ld3/e;->k:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v7, Ld3/e;->z:I

    goto/16 :goto_f

    :cond_3
    new-array v2, v1, [B

    invoke-interface {v8, v2, v9, v1}, Ll2/s;->readFully([BII)V

    invoke-virtual/range {p0 .. p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object v0

    new-instance v1, Ll2/s0$a;

    invoke-direct {v1, v10, v2, v9, v9}, Ll2/s0$a;-><init>(I[BII)V

    iput-object v1, v0, Ld3/e$c;->k:Ll2/s0$a;

    goto/16 :goto_f

    :cond_4
    invoke-direct/range {p0 .. p1}, Ld3/e;->k(I)V

    iget-object v0, v7, Ld3/e;->x:Ld3/e$c;

    new-array v2, v1, [B

    iput-object v2, v0, Ld3/e$c;->j:[B

    invoke-interface {v8, v2, v9, v1}, Ll2/s;->readFully([BII)V

    goto/16 :goto_f

    :cond_5
    invoke-virtual/range {p0 .. p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object v0

    invoke-virtual {v7, v0, v8, v1}, Ld3/e;->w(Ld3/e$c;Ll2/s;I)V

    goto/16 :goto_f

    :cond_6
    iget v0, v7, Ld3/e;->J:I

    if-eq v0, v5, :cond_7

    return-void

    :cond_7
    iget-object v0, v7, Ld3/e;->c:Landroid/util/SparseArray;

    iget v2, v7, Ld3/e;->P:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld3/e$c;

    iget v2, v7, Ld3/e;->S:I

    invoke-virtual {v7, v0, v2, v8, v1}, Ld3/e;->x(Ld3/e$c;ILl2/s;I)V

    goto/16 :goto_f

    :cond_8
    iget v2, v7, Ld3/e;->J:I

    const/16 v6, 0x8

    if-nez v2, :cond_9

    iget-object v2, v7, Ld3/e;->b:Ld3/g;

    invoke-virtual {v2, v8, v9, v10, v6}, Ld3/g;->d(Ll2/s;ZZI)J

    move-result-wide v11

    long-to-int v2, v11

    iput v2, v7, Ld3/e;->P:I

    iget-object v2, v7, Ld3/e;->b:Ld3/g;

    invoke-virtual {v2}, Ld3/g;->b()I

    move-result v2

    iput v2, v7, Ld3/e;->Q:I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v11, v7, Ld3/e;->L:J

    iput v10, v7, Ld3/e;->J:I

    iget-object v2, v7, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/j0;->S(I)V

    :cond_9
    iget-object v2, v7, Ld3/e;->c:Landroid/util/SparseArray;

    iget v11, v7, Ld3/e;->P:I

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ld3/e$c;

    if-nez v11, :cond_a

    iget v0, v7, Ld3/e;->Q:I

    sub-int v0, v1, v0

    invoke-interface {v8, v0}, Ll2/s;->skipFully(I)V

    iput v9, v7, Ld3/e;->J:I

    return-void

    :cond_a
    invoke-static {v11}, Ld3/e$c;->a(Ld3/e$c;)V

    iget v2, v7, Ld3/e;->J:I

    if-ne v2, v10, :cond_1b

    const/4 v2, 0x3

    invoke-direct {v7, v8, v2}, Ld3/e;->D(Ll2/s;I)V

    iget-object v12, v7, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v12}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v12

    aget-byte v12, v12, v5

    and-int/lit8 v12, v12, 0x6

    shr-int/2addr v12, v10

    const/16 v13, 0xff

    if-nez v12, :cond_b

    iput v10, v7, Ld3/e;->N:I

    iget-object v4, v7, Ld3/e;->O:[I

    invoke-static {v4, v10}, Ld3/e;->q([II)[I

    move-result-object v4

    iput-object v4, v7, Ld3/e;->O:[I

    iget v12, v7, Ld3/e;->Q:I

    sub-int/2addr v1, v12

    sub-int/2addr v1, v2

    aput v1, v4, v9

    :goto_0
    move-object/from16 v18, v11

    goto/16 :goto_9

    :cond_b
    const/4 v14, 0x4

    invoke-direct {v7, v8, v14}, Ld3/e;->D(Ll2/s;I)V

    iget-object v15, v7, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v15}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v15

    aget-byte v15, v15, v2

    and-int/2addr v15, v13

    add-int/2addr v15, v10

    iput v15, v7, Ld3/e;->N:I

    iget-object v3, v7, Ld3/e;->O:[I

    invoke-static {v3, v15}, Ld3/e;->q([II)[I

    move-result-object v3

    iput-object v3, v7, Ld3/e;->O:[I

    if-ne v12, v5, :cond_c

    iget v2, v7, Ld3/e;->Q:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v14

    iget v2, v7, Ld3/e;->N:I

    div-int/2addr v1, v2

    invoke-static {v3, v9, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    :cond_c
    if-ne v12, v10, :cond_f

    move v2, v9

    move v3, v2

    :goto_1
    iget v4, v7, Ld3/e;->N:I

    add-int/lit8 v12, v4, -0x1

    if-ge v2, v12, :cond_e

    iget-object v4, v7, Ld3/e;->O:[I

    aput v9, v4, v2

    :goto_2
    add-int/lit8 v4, v14, 0x1

    invoke-direct {v7, v8, v4}, Ld3/e;->D(Ll2/s;I)V

    iget-object v12, v7, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v12}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v12

    aget-byte v12, v12, v14

    and-int/2addr v12, v13

    iget-object v14, v7, Ld3/e;->O:[I

    aget v15, v14, v2

    add-int/2addr v15, v12

    aput v15, v14, v2

    if-eq v12, v13, :cond_d

    add-int/2addr v3, v15

    add-int/lit8 v2, v2, 0x1

    move v14, v4

    goto :goto_1

    :cond_d
    move v14, v4

    goto :goto_2

    :cond_e
    iget-object v2, v7, Ld3/e;->O:[I

    sub-int/2addr v4, v10

    iget v12, v7, Ld3/e;->Q:I

    sub-int/2addr v1, v12

    sub-int/2addr v1, v14

    sub-int/2addr v1, v3

    aput v1, v2, v4

    goto :goto_0

    :cond_f
    if-ne v12, v2, :cond_1a

    move v2, v9

    move v3, v2

    :goto_3
    iget v12, v7, Ld3/e;->N:I

    add-int/lit8 v15, v12, -0x1

    if-ge v2, v15, :cond_17

    iget-object v12, v7, Ld3/e;->O:[I

    aput v9, v12, v2

    add-int/lit8 v12, v14, 0x1

    invoke-direct {v7, v8, v12}, Ld3/e;->D(Ll2/s;I)V

    iget-object v15, v7, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v15}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v15

    aget-byte v15, v15, v14

    if-eqz v15, :cond_16

    move v15, v9

    :goto_4
    if-ge v15, v6, :cond_13

    rsub-int/lit8 v16, v15, 0x7

    shl-int v5, v10, v16

    iget-object v9, v7, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v9}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v9

    aget-byte v9, v9, v14

    and-int/2addr v9, v5

    if-eqz v9, :cond_12

    add-int/2addr v12, v15

    invoke-direct {v7, v8, v12}, Ld3/e;->D(Ll2/s;I)V

    iget-object v9, v7, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v9}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v9

    add-int/lit8 v17, v14, 0x1

    aget-byte v9, v9, v14

    and-int/2addr v9, v13

    not-int v5, v5

    and-int/2addr v5, v9

    move-object/from16 v18, v11

    int-to-long v10, v5

    move/from16 v5, v17

    :goto_5
    if-ge v5, v12, :cond_10

    shl-long/2addr v10, v6

    iget-object v14, v7, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v14}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v14

    add-int/lit8 v17, v5, 0x1

    aget-byte v5, v14, v5

    and-int/2addr v5, v13

    int-to-long v13, v5

    or-long/2addr v10, v13

    move/from16 v5, v17

    const/16 v13, 0xff

    goto :goto_5

    :cond_10
    if-lez v2, :cond_11

    mul-int/lit8 v15, v15, 0x7

    add-int/lit8 v15, v15, 0x6

    const-wide/16 v13, 0x1

    shl-long v19, v13, v15

    sub-long v19, v19, v13

    sub-long v10, v10, v19

    :cond_11
    :goto_6
    move v14, v12

    goto :goto_7

    :cond_12
    move-object/from16 v18, v11

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v13, 0xff

    goto :goto_4

    :cond_13
    move-object/from16 v18, v11

    const-wide/16 v10, 0x0

    goto :goto_6

    :goto_7
    const-wide/32 v12, -0x80000000

    cmp-long v5, v10, v12

    if-ltz v5, :cond_15

    const-wide/32 v12, 0x7fffffff

    cmp-long v5, v10, v12

    if-gtz v5, :cond_15

    long-to-int v5, v10

    iget-object v10, v7, Ld3/e;->O:[I

    if-nez v2, :cond_14

    goto :goto_8

    :cond_14
    add-int/lit8 v11, v2, -0x1

    aget v11, v10, v11

    add-int/2addr v5, v11

    :goto_8
    aput v5, v10, v2

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v18

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v13, 0xff

    goto/16 :goto_3

    :cond_15
    const-string v0, "EBML lacing sample size out of range."

    invoke-static {v0, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_16
    const-string v0, "No valid varint length mask found"

    invoke-static {v0, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_17
    move-object/from16 v18, v11

    iget-object v2, v7, Ld3/e;->O:[I

    const/4 v4, 0x1

    sub-int/2addr v12, v4

    iget v4, v7, Ld3/e;->Q:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v14

    sub-int/2addr v1, v3

    aput v1, v2, v12

    :goto_9
    iget-object v1, v7, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    shl-int/2addr v1, v6

    iget-object v2, v7, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-wide v2, v7, Ld3/e;->E:J

    int-to-long v4, v1

    invoke-direct {v7, v4, v5}, Ld3/e;->F(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v7, Ld3/e;->K:J

    move-object/from16 v10, v18

    iget v1, v10, Ld3/e$c;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_19

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_18

    iget-object v1, v7, Ld3/e;->i:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    aget-byte v1, v1, v2

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_18

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    goto :goto_b

    :cond_19
    :goto_a
    const/4 v1, 0x1

    :goto_b
    iput v1, v7, Ld3/e;->R:I

    iput v2, v7, Ld3/e;->J:I

    const/4 v1, 0x0

    iput v1, v7, Ld3/e;->M:I

    const/16 v1, 0xa3

    goto :goto_c

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected lacing value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1b
    move-object v10, v11

    move v1, v3

    :goto_c
    if-ne v0, v1, :cond_1d

    :goto_d
    iget v0, v7, Ld3/e;->M:I

    iget v1, v7, Ld3/e;->N:I

    if-ge v0, v1, :cond_1c

    iget-object v1, v7, Ld3/e;->O:[I

    aget v0, v1, v0

    const/4 v1, 0x0

    invoke-direct {v7, v8, v10, v0, v1}, Ld3/e;->J(Ll2/s;Ld3/e$c;IZ)I

    move-result v5

    iget-wide v0, v7, Ld3/e;->K:J

    iget v2, v7, Ld3/e;->M:I

    iget v3, v10, Ld3/e$c;->f:I

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, v7, Ld3/e;->R:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v6}, Ld3/e;->o(Ld3/e$c;JIII)V

    iget v0, v7, Ld3/e;->M:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Ld3/e;->M:I

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    iput v0, v7, Ld3/e;->J:I

    goto :goto_f

    :cond_1d
    const/4 v1, 0x1

    :goto_e
    iget v0, v7, Ld3/e;->M:I

    iget v2, v7, Ld3/e;->N:I

    if-ge v0, v2, :cond_1e

    iget-object v2, v7, Ld3/e;->O:[I

    aget v3, v2, v0

    invoke-direct {v7, v8, v10, v3, v1}, Ld3/e;->J(Ll2/s;Ld3/e$c;IZ)I

    move-result v3

    aput v3, v2, v0

    iget v0, v7, Ld3/e;->M:I

    add-int/2addr v0, v1

    iput v0, v7, Ld3/e;->M:I

    goto :goto_e

    :cond_1e
    :goto_f
    return-void
.end method

.method protected p(I)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ld3/e;->l()V

    const/16 v2, 0xa0

    if-eq p1, v2, :cond_f

    const/16 v2, 0xae

    const/4 v3, 0x0

    if-eq p1, v2, :cond_c

    const/16 v2, 0x4dbb

    const v4, 0x1c53bb6b

    if-eq p1, v2, :cond_a

    const/16 v2, 0x6240

    if-eq p1, v2, :cond_8

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_6

    const v0, 0x1549a966

    if-eq p1, v0, :cond_4

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean p1, p0, Ld3/e;->y:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Ld3/e;->e0:Ll2/t;

    iget-object v0, p0, Ld3/e;->F:Landroidx/media3/common/util/v;

    iget-object v2, p0, Ld3/e;->G:Landroidx/media3/common/util/v;

    invoke-direct {p0, v0, v2}, Ld3/e;->n(Landroidx/media3/common/util/v;Landroidx/media3/common/util/v;)Ll2/m0;

    move-result-object v0

    invoke-interface {p1, v0}, Ll2/t;->f(Ll2/m0;)V

    iput-boolean v1, p0, Ld3/e;->y:Z

    :cond_1
    iput-object v3, p0, Ld3/e;->F:Landroidx/media3/common/util/v;

    iput-object v3, p0, Ld3/e;->G:Landroidx/media3/common/util/v;

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Ld3/e;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ld3/e;->e0:Ll2/t;

    invoke-interface {p1}, Ll2/t;->endTracks()V

    goto/16 :goto_2

    :cond_3
    const-string p1, "No valid tracks were found"

    invoke-static {p1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_4
    iget-wide v0, p0, Ld3/e;->t:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_5

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Ld3/e;->t:J

    :cond_5
    iget-wide v0, p0, Ld3/e;->u:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_15

    invoke-direct {p0, v0, v1}, Ld3/e;->F(J)J

    move-result-wide v0

    iput-wide v0, p0, Ld3/e;->v:J

    goto/16 :goto_2

    :cond_6
    invoke-direct {p0, p1}, Ld3/e;->k(I)V

    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iget-boolean v0, p1, Ld3/e$c;->i:Z

    if-eqz v0, :cond_15

    iget-object p1, p1, Ld3/e$c;->j:[B

    if-nez p1, :cond_7

    goto/16 :goto_2

    :cond_7
    const-string p1, "Combining encryption and compression is not supported"

    invoke-static {p1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_8
    invoke-direct {p0, p1}, Ld3/e;->k(I)V

    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iget-boolean v2, p1, Ld3/e$c;->i:Z

    if-eqz v2, :cond_15

    iget-object v2, p1, Ld3/e$c;->k:Ll2/s0$a;

    if-eqz v2, :cond_9

    new-instance v2, Landroidx/media3/common/DrmInitData;

    new-instance v3, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v4, Landroidx/media3/common/h;->a:Ljava/util/UUID;

    iget-object v5, p0, Ld3/e;->x:Ld3/e$c;

    iget-object v5, v5, Ld3/e$c;->k:Ll2/s0$a;

    iget-object v5, v5, Ll2/s0$a;->b:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    new-array v1, v1, [Landroidx/media3/common/DrmInitData$SchemeData;

    aput-object v3, v1, v0

    invoke-direct {v2, v1}, Landroidx/media3/common/DrmInitData;-><init>([Landroidx/media3/common/DrmInitData$SchemeData;)V

    iput-object v2, p1, Ld3/e$c;->m:Landroidx/media3/common/DrmInitData;

    goto/16 :goto_2

    :cond_9
    const-string p1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {p1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_a
    iget p1, p0, Ld3/e;->z:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    iget-wide v0, p0, Ld3/e;->A:J

    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-eqz v2, :cond_b

    if-ne p1, v4, :cond_15

    iput-wide v0, p0, Ld3/e;->C:J

    goto/16 :goto_2

    :cond_b
    const-string p1, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {p1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_c
    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld3/e$c;

    iget-object v0, p1, Ld3/e$c;->c:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-static {v0}, Ld3/e;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Ld3/e;->e0:Ll2/t;

    iget v1, p1, Ld3/e$c;->d:I

    invoke-virtual {p1, v0, v1}, Ld3/e$c;->i(Ll2/t;I)V

    iget-object v0, p0, Ld3/e;->c:Landroid/util/SparseArray;

    iget v1, p1, Ld3/e$c;->d:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_d
    iput-object v3, p0, Ld3/e;->x:Ld3/e$c;

    goto/16 :goto_2

    :cond_e
    const-string p1, "CodecId is missing in TrackEntry element"

    invoke-static {p1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_f
    iget p1, p0, Ld3/e;->J:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_10

    return-void

    :cond_10
    iget-object p1, p0, Ld3/e;->c:Landroid/util/SparseArray;

    iget v2, p0, Ld3/e;->P:I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld3/e$c;

    invoke-static {p1}, Ld3/e$c;->a(Ld3/e$c;)V

    iget-wide v2, p0, Ld3/e;->U:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_11

    const-string v2, "A_OPUS"

    iget-object v3, p1, Ld3/e$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Ld3/e;->p:Landroidx/media3/common/util/j0;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, p0, Ld3/e;->U:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/j0;->T([B)V

    :cond_11
    move v2, v0

    move v3, v2

    :goto_0
    iget v4, p0, Ld3/e;->N:I

    if-ge v2, v4, :cond_12

    iget-object v4, p0, Ld3/e;->O:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    add-int/2addr v2, v1

    goto :goto_0

    :cond_12
    move v9, v0

    :goto_1
    iget v2, p0, Ld3/e;->N:I

    if-ge v9, v2, :cond_14

    iget-wide v4, p0, Ld3/e;->K:J

    iget v2, p1, Ld3/e$c;->f:I

    mul-int/2addr v2, v9

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long/2addr v4, v6

    iget v2, p0, Ld3/e;->R:I

    if-nez v9, :cond_13

    iget-boolean v6, p0, Ld3/e;->T:Z

    if-nez v6, :cond_13

    or-int/2addr v2, v1

    :cond_13
    move v6, v2

    iget-object v2, p0, Ld3/e;->O:[I

    aget v7, v2, v9

    sub-int v10, v3, v7

    move-object v2, p0

    move-object v3, p1

    move v8, v10

    invoke-direct/range {v2 .. v8}, Ld3/e;->o(Ld3/e$c;JIII)V

    add-int/2addr v9, v1

    move v3, v10

    goto :goto_1

    :cond_14
    iput v0, p0, Ld3/e;->J:I

    :cond_15
    :goto_2
    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method protected s(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->w:F

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->v:F

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->u:F

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->O:F

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->N:F

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->M:F

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->L:F

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->K:F

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->J:F

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->I:F

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->H:F

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->G:F

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Ld3/e$c;->F:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    iput-wide p1, p0, Ld3/e;->u:J

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    double-to-int p2, p2

    iput p2, p1, Ld3/e$c;->S:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public seek(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ld3/e;->E:J

    const/4 p1, 0x0

    iput p1, p0, Ld3/e;->J:I

    iget-object p2, p0, Ld3/e;->a:Ld3/c;

    invoke-interface {p2}, Ld3/c;->reset()V

    iget-object p2, p0, Ld3/e;->b:Ld3/g;

    invoke-virtual {p2}, Ld3/g;->e()V

    invoke-direct {p0}, Ld3/e;->E()V

    :goto_0
    iget-object p2, p0, Ld3/e;->c:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Ld3/e;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld3/e$c;

    invoke-virtual {p2}, Ld3/e$c;->n()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected u(I)Ld3/e$c;
    .locals 0

    invoke-direct {p0, p1}, Ld3/e;->k(I)V

    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    return-object p1
.end method

.method protected v(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/4 p1, 0x5

    return p1

    :sswitch_1
    const/4 p1, 0x4

    return p1

    :sswitch_2
    const/4 p1, 0x1

    return p1

    :sswitch_3
    const/4 p1, 0x3

    return p1

    :sswitch_4
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b2 -> :sswitch_4
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x75a2 -> :sswitch_4
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method protected w(Ld3/e$c;Ll2/s;I)V
    .locals 2

    invoke-static {p1}, Ld3/e$c;->b(Ld3/e$c;)I

    move-result v0

    const v1, 0x64767643

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ld3/e$c;->b(Ld3/e$c;)I

    move-result v0

    const v1, 0x64766343

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3}, Ll2/s;->skipFully(I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, p3, [B

    iput-object v0, p1, Ld3/e$c;->P:[B

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1, p3}, Ll2/s;->readFully([BII)V

    :goto_1
    return-void
.end method

.method protected x(Ld3/e$c;ILl2/s;I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const-string p2, "V_VP9"

    iget-object p1, p1, Ld3/e$c;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld3/e;->p:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, p4}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object p1, p0, Ld3/e;->p:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2, p4}, Ll2/s;->readFully([BII)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, p4}, Ll2/s;->skipFully(I)V

    :goto_0
    return-void
.end method

.method protected y(IJ)V
    .locals 8

    const/16 v0, 0x5031

    const/4 v1, 0x0

    const-string v2, " not supported"

    if-eq p1, v0, :cond_13

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->E:I

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->D:I

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Ld3/e;->k(I)V

    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput-boolean v7, p1, Ld3/e$c;->z:Z

    long-to-int p1, p2

    invoke-static {p1}, Landroidx/media3/common/i;->j(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    iget-object p2, p0, Ld3/e;->x:Ld3/e$c;

    iput p1, p2, Ld3/e$c;->A:I

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Ld3/e;->k(I)V

    long-to-int p1, p2

    invoke-static {p1}, Landroidx/media3/common/i;->k(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    iget-object p2, p0, Ld3/e;->x:Ld3/e$c;

    iput p1, p2, Ld3/e$c;->B:I

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Ld3/e;->k(I)V

    long-to-int p1, p2

    if-eq p1, v7, :cond_1

    if-eq p1, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput v7, p1, Ld3/e$c;->C:I

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput v6, p1, Ld3/e$c;->C:I

    goto/16 :goto_0

    :sswitch_0
    iput-wide p2, p0, Ld3/e;->t:J

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->f:I

    goto/16 :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Ld3/e;->k(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_5

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput v5, p1, Ld3/e$c;->t:I

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput v6, p1, Ld3/e$c;->t:I

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput v7, p1, Ld3/e$c;->t:I

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput v0, p1, Ld3/e$c;->t:I

    goto/16 :goto_0

    :sswitch_3
    iput-wide p2, p0, Ld3/e;->U:J

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->R:I

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    iput-wide p2, p1, Ld3/e$c;->U:J

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    iput-wide p2, p1, Ld3/e$c;->T:J

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->g:I

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0, p1}, Ld3/e;->k(I)V

    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput-boolean v7, p1, Ld3/e$c;->z:Z

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->p:I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    cmp-long p2, p2, v3

    if-nez p2, :cond_6

    move v0, v7

    :cond_6
    iput-boolean v0, p1, Ld3/e$c;->W:Z

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->r:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->s:I

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->q:I

    goto/16 :goto_0

    :sswitch_d
    long-to-int p2, p2

    invoke-direct {p0, p1}, Ld3/e;->k(I)V

    if-eqz p2, :cond_a

    if-eq p2, v7, :cond_9

    if-eq p2, v5, :cond_8

    const/16 p1, 0xf

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput v5, p1, Ld3/e$c;->y:I

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput v7, p1, Ld3/e$c;->y:I

    goto/16 :goto_0

    :cond_9
    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput v6, p1, Ld3/e$c;->y:I

    goto/16 :goto_0

    :cond_a
    iget-object p1, p0, Ld3/e;->x:Ld3/e$c;

    iput v0, p1, Ld3/e$c;->y:I

    goto/16 :goto_0

    :sswitch_e
    iget-wide v0, p0, Ld3/e;->s:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Ld3/e;->A:J

    goto/16 :goto_0

    :sswitch_f
    cmp-long p1, p2, v3

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_10
    const-wide/16 v3, 0x5

    cmp-long p1, p2, v3

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_11
    cmp-long p1, p2, v3

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_12
    cmp-long p1, p2, v3

    if-ltz p1, :cond_e

    const-wide/16 v3, 0x2

    cmp-long p1, p2, v3

    if-gtz p1, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_13
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_14
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    invoke-static {p1, p2}, Ld3/e$c;->c(Ld3/e$c;I)I

    goto/16 :goto_0

    :sswitch_15
    iput-boolean v7, p0, Ld3/e;->T:Z

    goto/16 :goto_0

    :sswitch_16
    iget-boolean v0, p0, Ld3/e;->H:Z

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Ld3/e;->j(I)V

    iget-object p1, p0, Ld3/e;->G:Landroidx/media3/common/util/v;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/util/v;->a(J)V

    iput-boolean v7, p0, Ld3/e;->H:Z

    goto/16 :goto_0

    :sswitch_17
    long-to-int p1, p2

    iput p1, p0, Ld3/e;->S:I

    goto/16 :goto_0

    :sswitch_18
    invoke-direct {p0, p2, p3}, Ld3/e;->F(J)J

    move-result-wide p1

    iput-wide p1, p0, Ld3/e;->E:J

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->d:I

    goto :goto_0

    :sswitch_1a
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->o:I

    goto :goto_0

    :sswitch_1b
    invoke-direct {p0, p1}, Ld3/e;->j(I)V

    iget-object p1, p0, Ld3/e;->F:Landroidx/media3/common/util/v;

    invoke-direct {p0, p2, p3}, Ld3/e;->F(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/util/v;->a(J)V

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->n:I

    goto :goto_0

    :sswitch_1d
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->Q:I

    goto :goto_0

    :sswitch_1e
    invoke-direct {p0, p2, p3}, Ld3/e;->F(J)J

    move-result-wide p1

    iput-wide p1, p0, Ld3/e;->L:J

    goto :goto_0

    :sswitch_1f
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    cmp-long p2, p2, v3

    if-nez p2, :cond_10

    move v0, v7

    :cond_10
    iput-boolean v0, p1, Ld3/e$c;->X:Z

    goto :goto_0

    :sswitch_20
    invoke-virtual {p0, p1}, Ld3/e;->u(I)Ld3/e$c;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Ld3/e$c;->e:I

    goto :goto_0

    :cond_11
    cmp-long p1, p2, v3

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncodingScope "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_13
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_15

    :cond_14
    :goto_0
    return-void

    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncodingOrder "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf1 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
