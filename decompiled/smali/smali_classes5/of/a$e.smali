.class final Lof/a$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lof/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final a:Lgf/b;

.field final synthetic b:Lof/a;


# direct methods
.method constructor <init>(Lof/a;Lgf/b;)V
    .locals 0

    iput-object p1, p0, Lof/a$e;->b:Lof/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lof/a$e;->a:Lgf/b;

    return-void
.end method

.method static synthetic a(Lof/a$e;Lcom/tencent/tinker/android/dex/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lof/a$e;->e(Lcom/tencent/tinker/android/dex/n;)V

    return-void
.end method

.method static synthetic b(Lof/a$e;Lcom/tencent/tinker/android/dex/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lof/a$e;->d(Lcom/tencent/tinker/android/dex/n;)V

    return-void
.end method

.method private d(Lcom/tencent/tinker/android/dex/n;)V
    .locals 5

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->d()I

    move-result v0

    iget-object v1, p0, Lof/a$e;->a:Lgf/b;

    iget-object v2, p0, Lof/a$e;->b:Lof/a;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lof/a;->J(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/tinker/android/dex/p;->e(Lgf/b;I)I

    iget-object v1, p0, Lof/a$e;->a:Lgf/b;

    invoke-static {v1, v0}, Lcom/tencent/tinker/android/dex/p;->e(Lgf/b;I)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lof/a$e;->a:Lgf/b;

    iget-object v3, p0, Lof/a$e;->b:Lof/a;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lof/a;->I(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/tinker/android/dex/p;->e(Lgf/b;I)I

    invoke-virtual {p0, p1}, Lof/a$e;->c(Lcom/tencent/tinker/android/dex/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Lcom/tencent/tinker/android/dex/n;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->f()I

    move-result v0

    iget-object v1, p0, Lof/a$e;->a:Lgf/b;

    invoke-static {v1, v0}, Lcom/tencent/tinker/android/dex/p;->e(Lgf/b;I)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lof/a$e;->c(Lcom/tencent/tinker/android/dex/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f(II)V
    .locals 1

    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    shl-int/lit8 p2, p2, 0x5

    or-int/2addr p1, p2

    invoke-interface {v0, p1}, Lgf/b;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public c(Lcom/tencent/tinker/android/dex/n;)V
    .locals 5

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->c()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->g()Z

    move-result p1

    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lof/a$e;->f(II)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->s()V

    const/16 p1, 0x1e

    invoke-direct {p0, p1, v1}, Lof/a$e;->f(II)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0x1d

    invoke-direct {p0, v0, v1}, Lof/a$e;->f(II)V

    invoke-direct {p0, p1}, Lof/a$e;->d(Lcom/tencent/tinker/android/dex/n;)V

    goto/16 :goto_0

    :pswitch_3
    const/16 v0, 0x1c

    invoke-direct {p0, v0, v1}, Lof/a$e;->f(II)V

    invoke-direct {p0, p1}, Lof/a$e;->e(Lcom/tencent/tinker/android/dex/n;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    iget-object v1, p0, Lof/a$e;->b:Lof/a;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->k()I

    move-result p1

    invoke-virtual {v1, p1}, Lof/a;->z(I)I

    move-result p1

    int-to-long v1, p1

    const/16 p1, 0x1b

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/tinker/android/dex/m;->g(Lgf/b;IJ)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    iget-object v1, p0, Lof/a$e;->b:Lof/a;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->p()I

    move-result p1

    invoke-virtual {v1, p1}, Lof/a;->D(I)I

    move-result p1

    int-to-long v1, p1

    const/16 p1, 0x1a

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/tinker/android/dex/m;->g(Lgf/b;IJ)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    iget-object v1, p0, Lof/a$e;->b:Lof/a;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->l()I

    move-result p1

    invoke-virtual {v1, p1}, Lof/a;->z(I)I

    move-result p1

    int-to-long v1, p1

    const/16 p1, 0x19

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/tinker/android/dex/m;->g(Lgf/b;IJ)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    iget-object v1, p0, Lof/a$e;->b:Lof/a;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->v()I

    move-result p1

    invoke-virtual {v1, p1}, Lof/a;->J(I)I

    move-result p1

    int-to-long v1, p1

    const/16 p1, 0x18

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/tinker/android/dex/m;->g(Lgf/b;IJ)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    iget-object v1, p0, Lof/a$e;->b:Lof/a;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->u()I

    move-result p1

    invoke-virtual {v1, p1}, Lof/a;->I(I)I

    move-result p1

    int-to-long v1, p1

    const/16 p1, 0x17

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/tinker/android/dex/m;->g(Lgf/b;IJ)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    iget-object v1, p0, Lof/a$e;->b:Lof/a;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->q()I

    move-result p1

    invoke-virtual {v1, p1}, Lof/a;->C(I)I

    move-result p1

    int-to-long v1, p1

    const/16 p1, 0x16

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/tinker/android/dex/m;->g(Lgf/b;IJ)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    iget-object v1, p0, Lof/a$e;->b:Lof/a;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->r()I

    move-result p1

    invoke-virtual {v1, p1}, Lof/a;->G(I)I

    move-result p1

    int-to-long v1, p1

    const/16 p1, 0x15

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/tinker/android/dex/m;->g(Lgf/b;IJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->j()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/tinker/android/dex/m;->e(Lgf/b;IJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->m()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    iget-object p1, p0, Lof/a$e;->a:Lgf/b;

    invoke-static {p1, v2, v0, v1}, Lcom/tencent/tinker/android/dex/m;->e(Lgf/b;IJ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->n()I

    move-result p1

    int-to-long v3, p1

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/tinker/android/dex/m;->f(Lgf/b;IJ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->i()C

    move-result p1

    int-to-long v3, p1

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/tinker/android/dex/m;->g(Lgf/b;IJ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->t()S

    move-result p1

    int-to-long v3, p1

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/tinker/android/dex/m;->f(Lgf/b;IJ)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->o()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/tinker/android/dex/m;->f(Lgf/b;IJ)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lof/a$e;->a:Lgf/b;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/n;->h()B

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/m;->f(Lgf/b;IJ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
