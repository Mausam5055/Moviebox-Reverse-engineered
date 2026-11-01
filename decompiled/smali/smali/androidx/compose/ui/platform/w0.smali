.class public final Landroidx/compose/ui/platform/w0;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/w0;->a:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w0;->a:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public final b(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w0;->a:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w0;->a:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final d(Landroidx/compose/ui/graphics/z4;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/z4;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/w0;->m(J)V

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/z4;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/g;->m(J)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->b(F)V

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/z4;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/g;->n(J)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->b(F)V

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/z4;->b()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/w0;->b(F)V

    return-void
.end method

.method public final e(Landroidx/compose/ui/text/x;)V
    .locals 6

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/w0;->m(J)V

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v0

    sget-object v3, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v3}, Lo0/w$a;->a()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lo0/w;->e(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/w0;->j(J)V

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->f(Landroidx/compose/ui/text/font/p;)V

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/n;->i()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->o(I)V

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->m()Landroidx/compose/ui/text/font/o;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o;->k()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->l(I)V

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->i(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v0

    invoke-virtual {v3}, Lo0/w$a;->a()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lo0/w;->e(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/w0;->j(J)V

    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->e()Landroidx/compose/ui/text/style/a;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/a;->h()F

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->k(F)V

    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->h(Landroidx/compose/ui/text/style/m;)V

    :cond_8
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->d()J

    move-result-wide v0

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/w0;->m(J)V

    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->s()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->g(Landroidx/compose/ui/text/style/i;)V

    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->r()Landroidx/compose/ui/graphics/z4;

    move-result-object p1

    if-eqz p1, :cond_b

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/w0;->d(Landroidx/compose/ui/graphics/z4;)V

    :cond_b
    return-void
.end method

.method public final f(Landroidx/compose/ui/text/font/p;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/p;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/w0;->c(I)V

    return-void
.end method

.method public final g(Landroidx/compose/ui/text/style/i;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/i;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/w0;->c(I)V

    return-void
.end method

.method public final h(Landroidx/compose/ui/text/style/m;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/m;->b()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/w0;->b(F)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/m;->c()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/w0;->b(F)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w0;->a:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final j(J)V
    .locals 7

    invoke-static {p1, p2}, Lo0/w;->g(J)J

    move-result-wide v0

    sget-object v2, Lo0/y;->b:Lo0/y$a;

    invoke-virtual {v2}, Lo0/y$a;->c()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lo0/y;->g(JJ)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lo0/y$a;->b()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Lo0/y;->g(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lo0/y$a;->a()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Lo0/y;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Landroidx/compose/ui/platform/w0;->a(B)V

    invoke-static {p1, p2}, Lo0/w;->g(J)J

    move-result-wide v0

    invoke-virtual {v2}, Lo0/y$a;->c()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lo0/y;->g(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Lo0/w;->h(J)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/w0;->b(F)V

    :cond_3
    return-void
.end method

.method public final k(F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/w0;->b(F)V

    return-void
.end method

.method public final l(I)V
    .locals 3

    sget-object v0, Landroidx/compose/ui/text/font/o;->b:Landroidx/compose/ui/text/font/o$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o$a;->b()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/text/font/o;->h(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o$a;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/text/font/o;->h(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o$a;->d()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/text/font/o;->h(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o$a;->c()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/text/font/o;->h(II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x3

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/compose/ui/platform/w0;->a(B)V

    return-void
.end method

.method public final m(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/w0;->n(J)V

    return-void
.end method

.method public final n(J)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w0;->a:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public final o(I)V
    .locals 3

    sget-object v0, Landroidx/compose/ui/text/font/n;->b:Landroidx/compose/ui/text/font/n$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/n$a;->b()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/text/font/n;->f(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/n$a;->a()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/text/font/n;->f(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/compose/ui/platform/w0;->a(B)V

    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/w0;->a:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w0;->a:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/w0;->a:Landroid/os/Parcel;

    return-void
.end method
