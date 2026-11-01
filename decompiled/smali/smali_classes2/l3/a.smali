.class public final Ll3/a;
.super Ljava/lang/Object;

# interfaces
.implements Li3/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private final b:Landroidx/media3/common/util/j0;

.field private final c:Ll3/a$a;

.field private d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/j0;

    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object v0, p0, Ll3/a;->a:Landroidx/media3/common/util/j0;

    new-instance v0, Landroidx/media3/common/util/j0;

    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object v0, p0, Ll3/a;->b:Landroidx/media3/common/util/j0;

    new-instance v0, Ll3/a$a;

    invoke-direct {v0}, Ll3/a$a;-><init>()V

    iput-object v0, p0, Ll3/a;->c:Ll3/a$a;

    return-void
.end method

.method private static d(Landroidx/media3/common/util/j0;Ll3/a$a;)Lu1/a;
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->g()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    if-le v3, v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v4

    :cond_0
    const/16 v0, 0x80

    if-eq v1, v0, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p0, v2}, Ll3/a$a;->c(Ll3/a$a;Landroidx/media3/common/util/j0;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p0, v2}, Ll3/a$a;->b(Ll3/a$a;Landroidx/media3/common/util/j0;I)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p0, v2}, Ll3/a$a;->a(Ll3/a$a;Landroidx/media3/common/util/j0;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ll3/a$a;->d()Lu1/a;

    move-result-object v4

    invoke-virtual {p1}, Ll3/a$a;->h()V

    :goto_0
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a([BIILi3/s$b;Landroidx/media3/common/util/m;)V
    .locals 6

    iget-object p4, p0, Ll3/a;->a:Landroidx/media3/common/util/j0;

    add-int/2addr p3, p2

    invoke-virtual {p4, p1, p3}, Landroidx/media3/common/util/j0;->U([BI)V

    iget-object p1, p0, Ll3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p1, p0, Ll3/a;->d:Ljava/util/zip/Inflater;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Ll3/a;->d:Ljava/util/zip/Inflater;

    :cond_0
    iget-object p1, p0, Ll3/a;->a:Landroidx/media3/common/util/j0;

    iget-object p2, p0, Ll3/a;->b:Landroidx/media3/common/util/j0;

    iget-object p3, p0, Ll3/a;->d:Ljava/util/zip/Inflater;

    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/a1;->P0(Landroidx/media3/common/util/j0;Landroidx/media3/common/util/j0;Ljava/util/zip/Inflater;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ll3/a;->a:Landroidx/media3/common/util/j0;

    iget-object p2, p0, Ll3/a;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    iget-object p3, p0, Ll3/a;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p3}, Landroidx/media3/common/util/j0;->g()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/util/j0;->U([BI)V

    :cond_1
    iget-object p1, p0, Ll3/a;->c:Ll3/a$a;

    invoke-virtual {p1}, Ll3/a$a;->h()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_0
    iget-object p1, p0, Ll3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Ll3/a;->a:Landroidx/media3/common/util/j0;

    iget-object p2, p0, Ll3/a;->c:Ll3/a$a;

    invoke-static {p1, p2}, Ll3/a;->d(Landroidx/media3/common/util/j0;Ll3/a$a;)Lu1/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Li3/e;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Li3/e;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p5, p1}, Landroidx/media3/common/util/m;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic b([BII)Li3/k;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Li3/r;->a(Li3/s;[BII)Li3/k;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public synthetic reset()V
    .locals 0

    invoke-static {p0}, Li3/r;->b(Li3/s;)V

    return-void
.end method
