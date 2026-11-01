.class Lcom/noober/background/drawable/TextViewGradientColor$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noober/background/drawable/TextViewGradientColor;->invoke(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noober/background/drawable/TextViewGradientColor;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/noober/background/drawable/TextViewGradientColor;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/noober/background/drawable/TextViewGradientColor$2;->this$0:Lcom/noober/background/drawable/TextViewGradientColor;

    iput-object p2, p0, Lcom/noober/background/drawable/TextViewGradientColor$2;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/noober/background/drawable/TextViewGradientColor$2;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/noober/background/drawable/TextViewGradientColor$2;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/noober/background/drawable/TextViewGradientColor$2;->this$0:Lcom/noober/background/drawable/TextViewGradientColor;

    invoke-static {v1}, Lcom/noober/background/drawable/TextViewGradientColor;->access$000(Lcom/noober/background/drawable/TextViewGradientColor;)I

    move-result v6

    iget-object v1, p0, Lcom/noober/background/drawable/TextViewGradientColor$2;->this$0:Lcom/noober/background/drawable/TextViewGradientColor;

    invoke-static {v1}, Lcom/noober/background/drawable/TextViewGradientColor;->access$100(Lcom/noober/background/drawable/TextViewGradientColor;)I

    move-result v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/noober/background/drawable/TextViewGradientColor$2;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
