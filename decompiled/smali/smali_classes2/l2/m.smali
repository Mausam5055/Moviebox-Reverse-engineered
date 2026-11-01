.class public final Ll2/m;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/m$a;
    }
.end annotation


# static fields
.field private static final s:[I

.field private static final t:Ll2/m$a;

.field private static final u:Ll2/m$a;


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/google/common/collect/ImmutableList;

.field private n:I

.field private o:Z

.field private p:Li3/s$a;

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ll2/m;->s:[I

    new-instance v0, Ll2/m$a;

    new-instance v1, Ll2/k;

    invoke-direct {v1}, Ll2/k;-><init>()V

    invoke-direct {v0, v1}, Ll2/m$a;-><init>(Ll2/m$a$a;)V

    sput-object v0, Ll2/m;->t:Ll2/m$a;

    new-instance v0, Ll2/m$a;

    new-instance v1, Ll2/l;

    invoke-direct {v1}, Ll2/l;-><init>()V

    invoke-direct {v0, v1}, Ll2/m$a;-><init>(Ll2/m$a$a;)V

    sput-object v0, Ll2/m;->u:Ll2/m$a;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ll2/m;->k:I

    const v1, 0x1b8a0

    iput v1, p0, Ll2/m;->n:I

    new-instance v1, Li3/h;

    invoke-direct {v1}, Li3/h;-><init>()V

    iput-object v1, p0, Ll2/m;->p:Li3/s$a;

    iput-boolean v0, p0, Ll2/m;->o:Z

    return-void
.end method

.method public static synthetic e()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Ll2/m;->j()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Ll2/m;->k()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private g(ILjava/util/List;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    new-instance p1, Lo2/a;

    invoke-direct {p1}, Lo2/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_2
    iget p1, p0, Ll2/m;->h:I

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_8

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_8

    new-instance p1, Ls2/a;

    invoke-direct {p1}, Ls2/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_3
    new-instance p1, Lp2/a;

    invoke-direct {p1}, Lp2/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_4
    new-instance p1, Lu3/a;

    invoke-direct {p1}, Lu3/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_5
    new-instance p1, Lh3/a;

    invoke-direct {p1}, Lh3/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_6
    new-instance p1, Ln2/b;

    iget-boolean v1, p0, Ll2/m;->o:Z

    xor-int/2addr v0, v1

    iget-object v1, p0, Ll2/m;->p:Li3/s$a;

    invoke-direct {p1, v0, v1}, Ln2/b;-><init>(ILi3/s$a;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_7
    sget-object p1, Ll2/m;->u:Ll2/m$a;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ll2/m$a;->a([Ljava/lang/Object;)Ll2/r;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_8
    new-instance p1, Lt2/a;

    iget v0, p0, Ll2/m;->r:I

    invoke-direct {p1, v0}, Lt2/a;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_9
    new-instance p1, Lt3/b;

    invoke-direct {p1}, Lt3/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_a
    iget-object p1, p0, Ll2/m;->m:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Ll2/m;->m:Lcom/google/common/collect/ImmutableList;

    :cond_0
    new-instance p1, Ls3/k0;

    iget v2, p0, Ll2/m;->k:I

    iget-boolean v1, p0, Ll2/m;->o:Z

    xor-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Ll2/m;->p:Li3/s$a;

    new-instance v5, Landroidx/media3/common/util/p0;

    const-wide/16 v0, 0x0

    invoke-direct {v5, v0, v1}, Landroidx/media3/common/util/p0;-><init>(J)V

    new-instance v6, Ls3/j;

    iget v0, p0, Ll2/m;->l:I

    iget-object v1, p0, Ll2/m;->m:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v6, v0, v1}, Ls3/j;-><init>(ILjava/util/List;)V

    iget v7, p0, Ll2/m;->n:I

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ls3/k0;-><init>(IILi3/s$a;Landroidx/media3/common/util/p0;Ls3/l0$c;I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_b
    new-instance p1, Ls3/c0;

    invoke-direct {p1}, Ls3/c0;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_c
    new-instance p1, Lg3/d;

    invoke-direct {p1}, Lg3/d;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_d
    new-instance p1, Lf3/h;

    iget-object v0, p0, Ll2/m;->p:Li3/s$a;

    iget v1, p0, Ll2/m;->i:I

    iget v3, p0, Ll2/m;->q:I

    invoke-static {v3}, Lf3/h;->j(I)I

    move-result v3

    or-int/2addr v1, v3

    iget-boolean v3, p0, Ll2/m;->o:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x20

    :goto_0
    or-int/2addr v1, v3

    invoke-direct {p1, v0, v1}, Lf3/h;-><init>(Li3/s$a;I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lf3/n;

    iget-object v0, p0, Ll2/m;->p:Li3/s$a;

    iget v1, p0, Ll2/m;->h:I

    iget v3, p0, Ll2/m;->q:I

    invoke-static {v3}, Lf3/n;->m(I)I

    move-result v3

    or-int/2addr v1, v3

    iget-boolean v3, p0, Ll2/m;->o:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    invoke-direct {p1, v0, v1}, Lf3/n;-><init>(Li3/s$a;I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_e
    new-instance p1, Le3/f;

    iget v0, p0, Ll2/m;->j:I

    iget-boolean v3, p0, Ll2/m;->b:Z

    or-int/2addr v0, v3

    iget-boolean v3, p0, Ll2/m;->c:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    or-int/2addr v0, v1

    invoke-direct {p1, v0}, Le3/f;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_f
    new-instance p1, Ld3/e;

    iget-object v0, p0, Ll2/m;->p:Li3/s$a;

    iget v3, p0, Ll2/m;->g:I

    iget-boolean v4, p0, Ll2/m;->o:Z

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    or-int/2addr v1, v3

    invoke-direct {p1, v0, v1}, Ld3/e;-><init>(Li3/s$a;I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_10
    new-instance p1, Landroidx/media3/extractor/flv/b;

    invoke-direct {p1}, Landroidx/media3/extractor/flv/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_11
    sget-object p1, Ll2/m;->t:Ll2/m$a;

    iget v1, p0, Ll2/m;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ll2/m$a;->a([Ljava/lang/Object;)Ll2/r;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    new-instance p1, Lq2/d;

    iget v0, p0, Ll2/m;->f:I

    invoke-direct {p1, v0}, Lq2/d;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_12
    new-instance p1, Lm2/b;

    iget v0, p0, Ll2/m;->e:I

    iget-boolean v3, p0, Ll2/m;->b:Z

    or-int/2addr v0, v3

    iget-boolean v3, p0, Ll2/m;->c:Z

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    or-int/2addr v0, v1

    invoke-direct {p1, v0}, Lm2/b;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_13
    new-instance p1, Ls3/h;

    iget v0, p0, Ll2/m;->d:I

    iget-boolean v3, p0, Ll2/m;->b:Z

    or-int/2addr v0, v3

    iget-boolean v3, p0, Ll2/m;->c:Z

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    or-int/2addr v0, v1

    invoke-direct {p1, v0}, Ls3/h;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_14
    new-instance p1, Ls3/e;

    invoke-direct {p1}, Ls3/e;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_15
    new-instance p1, Ls3/b;

    invoke-direct {p1}, Ls3/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static j()Ljava/lang/reflect/Constructor;
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "androidx.media3.decoder.flac.FlacLibrary"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAvailable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "androidx.media3.decoder.flac.FlacExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ll2/r;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v3
.end method

.method private static k()Ljava/lang/reflect/Constructor;
    .locals 2

    const-string v0, "androidx.media3.decoder.midi.MidiExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ll2/r;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Li3/s$a;)Ll2/x;
    .locals 0

    invoke-virtual {p0, p1}, Ll2/m;->m(Li3/s$a;)Ll2/m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(I)Ll2/x;
    .locals 0

    invoke-virtual {p0, p1}, Ll2/m;->h(I)Ll2/m;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized c(Landroid/net/Uri;Ljava/util/Map;)[Ll2/r;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Ll2/m;->s:[I

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2}, Landroidx/media3/common/o;->b(Ljava/util/Map;)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    invoke-direct {p0, p2, v0}, Ll2/m;->g(ILjava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/o;->c(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-eq p1, p2, :cond_1

    invoke-direct {p0, p1, v0}, Ll2/m;->g(ILjava/util/List;)V

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    if-eq v4, p2, :cond_2

    if-eq v4, p1, :cond_2

    invoke-direct {p0, v4, v0}, Ll2/m;->g(ILjava/util/List;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ll2/r;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ll2/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createExtractors()[Ll2/r;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Ll2/m;->c(Landroid/net/Uri;Ljava/util/Map;)[Ll2/r;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic d(Z)Ll2/x;
    .locals 0

    invoke-virtual {p0, p1}, Ll2/m;->i(Z)Ll2/m;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized h(I)Ll2/m;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Ll2/m;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized i(Z)Ll2/m;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ll2/m;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized l(I)Ll2/m;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Ll2/m;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized m(Li3/s$a;)Ll2/m;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ll2/m;->p:Li3/s$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
