.class public final Lp3/a;
.super Ljava/lang/Object;

# interfaces
.implements Li3/s;


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:F

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/j0;

    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object v0, p0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_4

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v0, 0x18

    aget-byte v5, p1, v0

    iput v5, p0, Lp3/a;->c:I

    const/16 v5, 0x1a

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    iput v0, p0, Lp3/a;->d:I

    array-length v0, p1

    const/16 v5, 0x2b

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v0}, Landroidx/media3/common/util/a1;->I([BII)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Serif"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "serif"

    :cond_1
    iput-object v2, p0, Lp3/a;->e:Ljava/lang/String;

    const/16 v0, 0x19

    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lp3/a;->g:I

    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lp3/a;->b:Z

    if-eqz v3, :cond_3

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/a1;->o(FFF)F

    move-result p1

    iput p1, p0, Lp3/a;->f:F

    goto :goto_0

    :cond_3
    iput v1, p0, Lp3/a;->f:F

    goto :goto_0

    :cond_4
    iput v3, p0, Lp3/a;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lp3/a;->d:I

    iput-object v2, p0, Lp3/a;->e:Ljava/lang/String;

    iput-boolean v3, p0, Lp3/a;->b:Z

    iput v1, p0, Lp3/a;->f:F

    iput p1, p0, Lp3/a;->g:I

    :goto_0
    return-void
.end method

.method private d(Landroidx/media3/common/util/j0;Landroid/text/SpannableStringBuilder;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v4

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->q()I

    move-result p1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ")."

    const-string v5, "Tx3gParser"

    if-le v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Truncating styl end ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") to cueText.length() ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    :cond_1
    if-lt v0, v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring styl with start ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") >= end ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget v5, p0, Lp3/a;->c:I

    const/4 v8, 0x0

    move-object v3, p2

    move v6, v0

    move v7, v1

    invoke-static/range {v3 .. v8}, Lp3/a;->f(Landroid/text/SpannableStringBuilder;IIIII)V

    iget v5, p0, Lp3/a;->d:I

    move v4, p1

    invoke-static/range {v3 .. v8}, Lp3/a;->e(Landroid/text/SpannableStringBuilder;IIIII)V

    return-void
.end method

.method private static e(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 0

    if-eq p1, p2, :cond_0

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static f(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    move p5, v1

    goto :goto_0

    :cond_0
    move p5, v0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    if-eqz v1, :cond_6

    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method

.method private static g(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "sans-serif"

    if-eq p1, v0, :cond_0

    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const p1, 0xff0021

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static h(Landroidx/media3/common/util/j0;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->R()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v0, v3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_1
    invoke-virtual {p0, v0, v2}, Landroidx/media3/common/util/j0;->F(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a([BIILi3/s$b;Landroidx/media3/common/util/m;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    iget-object v3, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    add-int v4, v1, p3

    move-object/from16 v5, p1

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/j0;->U([BI)V

    iget-object v3, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v1, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-static {v1}, Lp3/a;->h(Landroidx/media3/common/util/j0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Li3/e;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Li3/e;-><init>(Ljava/util/List;JJ)V

    invoke-interface {v2, v1}, Landroidx/media3/common/util/m;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v11, v0, Lp3/a;->c:I

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const/high16 v15, 0xff0000

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v3

    invoke-static/range {v10 .. v15}, Lp3/a;->f(Landroid/text/SpannableStringBuilder;IIIII)V

    iget v11, v0, Lp3/a;->d:I

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const/4 v12, -0x1

    invoke-static/range {v10 .. v15}, Lp3/a;->e(Landroid/text/SpannableStringBuilder;IIIII)V

    iget-object v1, v0, Lp3/a;->e:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Lp3/a;->g(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    iget v1, v0, Lp3/a;->f:F

    :goto_0
    iget-object v4, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v4}, Landroidx/media3/common/util/j0;->a()I

    move-result v4

    const/16 v6, 0x8

    if-lt v4, v6, :cond_5

    iget-object v4, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v4}, Landroidx/media3/common/util/j0;->f()I

    move-result v4

    iget-object v6, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->q()I

    move-result v6

    iget-object v7, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v7}, Landroidx/media3/common/util/j0;->q()I

    move-result v7

    const v8, 0x7374796c

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v7, v8, :cond_2

    iget-object v7, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v7}, Landroidx/media3/common/util/j0;->a()I

    move-result v7

    if-lt v7, v9, :cond_1

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    invoke-static {v10}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v7, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v7}, Landroidx/media3/common/util/j0;->P()I

    move-result v7

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_4

    iget-object v9, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-direct {v0, v9, v3}, Lp3/a;->d(Landroidx/media3/common/util/j0;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const v8, 0x74626f78

    if-ne v7, v8, :cond_4

    iget-boolean v7, v0, Lp3/a;->b:Z

    if-eqz v7, :cond_4

    iget-object v1, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->a()I

    move-result v1

    if-lt v1, v9, :cond_3

    goto :goto_3

    :cond_3
    move v10, v5

    :goto_3
    invoke-static {v10}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v1, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->P()I

    move-result v1

    int-to-float v1, v1

    iget v7, v0, Lp3/a;->g:I

    int-to-float v7, v7

    div-float/2addr v1, v7

    const/4 v7, 0x0

    const v8, 0x3f733333    # 0.95f

    invoke-static {v1, v7, v8}, Landroidx/media3/common/util/a1;->o(FFF)F

    move-result v1

    :cond_4
    iget-object v7, v0, Lp3/a;->a:Landroidx/media3/common/util/j0;

    add-int/2addr v4, v6

    invoke-virtual {v7, v4}, Landroidx/media3/common/util/j0;->W(I)V

    goto :goto_0

    :cond_5
    new-instance v4, Lu1/a$b;

    invoke-direct {v4}, Lu1/a$b;-><init>()V

    invoke-virtual {v4, v3}, Lu1/a$b;->o(Ljava/lang/CharSequence;)Lu1/a$b;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Lu1/a$b;->h(FI)Lu1/a$b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lu1/a$b;->i(I)Lu1/a$b;

    move-result-object v1

    invoke-virtual {v1}, Lu1/a$b;->a()Lu1/a;

    move-result-object v1

    new-instance v9, Li3/e;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Li3/e;-><init>(Ljava/util/List;JJ)V

    invoke-interface {v2, v9}, Landroidx/media3/common/util/m;->accept(Ljava/lang/Object;)V

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
