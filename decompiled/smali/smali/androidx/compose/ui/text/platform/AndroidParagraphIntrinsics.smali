.class public final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/o;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/compose/ui/text/d0;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:Landroidx/compose/ui/text/font/h$b;

.field private final f:Lo0/e;

.field private final g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

.field private final h:Ljava/lang/CharSequence;

.field private final i:Lk0/g0;

.field private j:Landroidx/compose/ui/text/platform/q;

.field private final k:Z

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/d0;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/h$b;Lo0/e;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/d0;

    iput-object p3, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->c:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->d:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->e:Landroidx/compose/ui/text/font/h$b;

    iput-object p6, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->f:Lo0/e;

    new-instance p1, Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-interface {p6}, Lo0/e;->getDensity()F

    move-result p4

    const/4 p5, 0x1

    invoke-direct {p1, p5, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;-><init>(IF)V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-static {p2}, Landroidx/compose/ui/text/platform/d;->b(Landroidx/compose/ui/text/d0;)Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    sget-object p4, Landroidx/compose/ui/text/platform/k;->a:Landroidx/compose/ui/text/platform/k;

    invoke-virtual {p4}, Landroidx/compose/ui/text/platform/k;->a()Landroidx/compose/runtime/a3;

    move-result-object p4

    invoke-interface {p4}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    :goto_0
    iput-boolean p4, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->k:Z

    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->B()I

    move-result p4

    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->u()Ln0/i;

    move-result-object v1

    invoke-static {p4, v1}, Landroidx/compose/ui/text/platform/d;->d(ILn0/i;)I

    move-result p4

    iput p4, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->l:I

    new-instance v7, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;

    invoke-direct {v7, p0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)V

    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->E()Landroidx/compose/ui/text/style/o;

    move-result-object p4

    invoke-static {p1, p4}, Landroidx/compose/ui/text/platform/extensions/f;->e(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/style/o;)V

    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->L()Landroidx/compose/ui/text/x;

    move-result-object p2

    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    xor-int/2addr p4, p5

    invoke-static {p1, p2, v7, p6, p4}, Landroidx/compose/ui/text/platform/extensions/f;->a(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/x;Lkotlin/jvm/functions/Function4;Lo0/e;Z)Landroidx/compose/ui/text/x;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p2, p5

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    move p4, v0

    :goto_1
    if-ge p4, p2, :cond_2

    if-nez p4, :cond_1

    new-instance p5, Landroidx/compose/ui/text/AnnotatedString$c;

    iget-object p6, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->a:Ljava/lang/String;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    invoke-direct {p5, p1, v0, p6}, Landroidx/compose/ui/text/AnnotatedString$c;-><init>(Ljava/lang/Object;II)V

    goto :goto_2

    :cond_1
    iget-object p5, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->c:Ljava/util/List;

    add-int/lit8 p6, p4, -0x1

    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/ui/text/AnnotatedString$c;

    :goto_2
    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    move-object v4, p3

    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->a:Ljava/lang/String;

    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    iget-object v3, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/d0;

    iget-object v5, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->d:Ljava/util/List;

    iget-object v6, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->f:Lo0/e;

    iget-boolean v8, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->k:Z

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/text/platform/c;->a(Ljava/lang/String;FLandroidx/compose/ui/text/d0;Ljava/util/List;Ljava/util/List;Lo0/e;Lkotlin/jvm/functions/Function4;Z)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->h:Ljava/lang/CharSequence;

    new-instance p2, Lk0/g0;

    iget-object p3, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget p4, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->l:I

    invoke-direct {p2, p1, p3, p4}, Lk0/g0;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    iput-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->i:Lk0/g0;

    return-void
.end method

.method public static final synthetic d(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)Landroidx/compose/ui/text/platform/q;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->j:Landroidx/compose/ui/text/platform/q;

    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;Landroidx/compose/ui/text/platform/q;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->j:Landroidx/compose/ui/text/platform/q;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->i:Lk0/g0;

    invoke-virtual {v0}, Lk0/g0;->b()F

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->j:Landroidx/compose/ui/text/platform/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/q;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/d0;

    invoke-static {v0}, Landroidx/compose/ui/text/platform/d;->b(Landroidx/compose/ui/text/d0;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/ui/text/platform/k;->a:Landroidx/compose/ui/text/platform/k;

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/k;->a()Landroidx/compose/runtime/a3;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->i:Lk0/g0;

    invoke-virtual {v0}, Lk0/g0;->c()F

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/text/font/h$b;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->e:Landroidx/compose/ui/text/font/h$b;

    return-object v0
.end method

.method public final h()Lk0/g0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->i:Lk0/g0;

    return-object v0
.end method

.method public final i()Landroidx/compose/ui/text/d0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/d0;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->l:I

    return v0
.end method

.method public final k()Landroidx/compose/ui/text/platform/AndroidTextPaint;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    return-object v0
.end method
