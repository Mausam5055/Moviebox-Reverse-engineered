.class public Lph/b;
.super Landroid/text/SpannableString;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lph/b;->d(I)Lph/b;

    invoke-virtual {p0, p3}, Lph/b;->c(I)Lph/b;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lph/b;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lph/b;->b(II[Ljava/lang/Object;)Lph/b;

    move-result-object p1

    return-object p1
.end method

.method public varargs b(II[Ljava/lang/Object;)Lph/b;
    .locals 4

    if-gt p1, p2, :cond_2

    if-eqz p3, :cond_2

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x21

    invoke-super {p0, v2, p1, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object p0
.end method

.method public c(I)Lph/b;
    .locals 2

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lph/b;->a([Ljava/lang/Object;)Lph/b;

    return-object p0
.end method

.method public d(I)Lph/b;
    .locals 2

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    new-array p1, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lph/b;->a([Ljava/lang/Object;)Lph/b;

    return-object p0
.end method

.method public e(Landroid/graphics/Typeface;)Lph/b;
    .locals 2

    new-instance v0, Lph/a;

    invoke-direct {v0, p1}, Lph/a;-><init>(Landroid/graphics/Typeface;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lph/b;->a([Ljava/lang/Object;)Lph/b;

    return-object p0
.end method
