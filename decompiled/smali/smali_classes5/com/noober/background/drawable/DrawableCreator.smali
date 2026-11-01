.class public Lcom/noober/background/drawable/DrawableCreator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noober/background/drawable/DrawableCreator$Builder;,
        Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;,
        Lcom/noober/background/drawable/DrawableCreator$Gradient;,
        Lcom/noober/background/drawable/DrawableCreator$Shape;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;)V
    .locals 6

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Left:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_0
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Top:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1, p0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Right:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, p0, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Bottom:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, v1, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Left:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p2, v2, :cond_5

    aput-object v1, p0, v0

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Top:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v2, :cond_6

    aput-object v1, p0, v5

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Right:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v2, :cond_7

    aput-object v1, p0, v4

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Bottom:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    if-ne p2, v2, :cond_8

    aput-object v1, p0, v3

    :cond_8
    :goto_0
    aget-object p2, p0, v0

    aget-object v0, p0, v5

    aget-object v1, p0, v4

    aget-object p0, p0, v3

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
