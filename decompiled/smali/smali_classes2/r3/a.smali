.class public final Lr3/a;
.super Ljava/lang/Object;

# interfaces
.implements Li3/s;


# instance fields
.field private final a:Landroidx/media3/common/util/j0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/j0;

    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object v0, p0, Lr3/a;->a:Landroidx/media3/common/util/j0;

    return-void
.end method

.method private static d(Landroidx/media3/common/util/j0;I)Lu1/a;
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_0
    :goto_0
    if-lez p1, :cond_3

    const/16 v3, 0x8

    if-lt p1, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "Incomplete vtt cue box header found."

    invoke-static {v4, v5}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v4

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v5

    add-int/lit8 p1, p1, -0x8

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v6

    invoke-static {v3, v6, v4}, Landroidx/media3/common/util/a1;->I([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/j0;->X(I)V

    sub-int/2addr p1, v4

    const v4, 0x73747467

    if-ne v5, v4, :cond_2

    invoke-static {v3}, Lr3/e;->p(Ljava/lang/String;)Lu1/a$b;

    move-result-object v2

    goto :goto_0

    :cond_2
    const v4, 0x7061796c

    if-ne v5, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lr3/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Lu1/a$b;->o(Ljava/lang/CharSequence;)Lu1/a$b;

    move-result-object p0

    invoke-virtual {p0}, Lu1/a$b;->a()Lu1/a;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lr3/e;->m(Ljava/lang/CharSequence;)Lu1/a;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public a([BIILi3/s$b;Landroidx/media3/common/util/m;)V
    .locals 6

    iget-object p4, p0, Lr3/a;->a:Landroidx/media3/common/util/j0;

    add-int/2addr p3, p2

    invoke-virtual {p4, p1, p3}, Landroidx/media3/common/util/j0;->U([BI)V

    iget-object p1, p0, Lr3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->W(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object p1, p0, Lr3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lr3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result p1

    const/16 p2, 0x8

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-static {p1, p2}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    iget-object p1, p0, Lr3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->q()I

    move-result p1

    iget-object p2, p0, Lr3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->q()I

    move-result p2

    const p3, 0x76747463

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lr3/a;->a:Landroidx/media3/common/util/j0;

    add-int/lit8 p1, p1, -0x8

    invoke-static {p2, p1}, Lr3/a;->d(Landroidx/media3/common/util/j0;I)Lu1/a;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lr3/a;->a:Landroidx/media3/common/util/j0;

    add-int/lit8 p1, p1, -0x8

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/j0;->X(I)V

    goto :goto_0

    :cond_2
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
