.class public final Lym/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lym/a;->a(Landroid/widget/TextView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;III)V
    .locals 0

    iput-object p1, p0, Lym/a$a;->a:Landroid/widget/TextView;

    iput p2, p0, Lym/a$a;->b:I

    iput p3, p0, Lym/a$a;->c:I

    iput p4, p0, Lym/a$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lym/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p2, p0, Lym/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lym/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    if-lez p1, :cond_3

    iget-object p2, p0, Lym/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    new-instance p2, Landroid/text/TextPaint;

    iget-object p3, p0, Lym/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iget p3, p0, Lym/a$a;->b:I

    :goto_0
    iget p4, p0, Lym/a$a;->c:I

    const/4 p5, 0x2

    if-le p3, p4, :cond_2

    int-to-float p4, p3

    iget-object p6, p0, Lym/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p6

    invoke-static {p5, p4, p6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p4, p0, Lym/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    iget-object p6, p0, Lym/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p6

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result p6

    const/4 p7, 0x0

    invoke-virtual {p2, p4, p7, p6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p4

    int-to-float p6, p1

    cmpg-float p4, p4, p6

    if-gtz p4, :cond_1

    goto :goto_1

    :cond_1
    iget p4, p0, Lym/a$a;->d:I

    sub-int/2addr p3, p4

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lym/a$a;->a:Landroid/widget/TextView;

    int-to-float p2, p3

    invoke-virtual {p1, p5, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    :goto_2
    return-void
.end method
