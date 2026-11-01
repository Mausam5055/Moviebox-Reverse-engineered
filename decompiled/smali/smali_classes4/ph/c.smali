.class public Lph/c;
.super Landroid/text/SpannableStringBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lph/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    return-void
.end method

.method public static e()Lph/c$a;
    .locals 1

    new-instance v0, Lph/c$a;

    invoke-direct {v0}, Lph/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(C)Lph/c;
    .locals 0

    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public bridge synthetic append(C)Landroid/text/Editable;
    .locals 0

    invoke-virtual {p0, p1}, Lph/c;->a(C)Lph/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    invoke-virtual {p0, p1}, Lph/c;->b(Ljava/lang/CharSequence;)Lph/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lph/c;->c(Ljava/lang/CharSequence;II)Lph/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Landroid/text/SpannableStringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lph/c;->a(C)Lph/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lph/c;->b(Ljava/lang/CharSequence;)Lph/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lph/c;->c(Ljava/lang/CharSequence;II)Lph/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lph/c;->d(Ljava/lang/CharSequence;Ljava/lang/Object;I)Lph/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1}, Lph/c;->a(C)Lph/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1}, Lph/c;->b(Ljava/lang/CharSequence;)Lph/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lph/c;->c(Ljava/lang/CharSequence;II)Lph/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lph/c;
    .locals 0

    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;II)Lph/c;
    .locals 1

    new-instance v0, Lph/b;

    invoke-direct {v0, p1, p2, p3}, Lph/b;-><init>(Ljava/lang/CharSequence;II)V

    invoke-super {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;Ljava/lang/Object;I)Lph/c;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method
