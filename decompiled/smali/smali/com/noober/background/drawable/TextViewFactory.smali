.class public Lcom/noober/background/drawable/TextViewFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTextGradientColor(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V
    .locals 1

    new-instance v0, Lcom/noober/background/drawable/TextViewGradientColor;

    invoke-direct {v0}, Lcom/noober/background/drawable/TextViewGradientColor;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/noober/background/drawable/TextViewGradientColor;->invoke(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V

    return-void
.end method
