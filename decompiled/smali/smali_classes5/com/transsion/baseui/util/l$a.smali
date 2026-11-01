.class public final Lcom/transsion/baseui/util/l$a;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/util/l;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function2;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/util/l$a;->a:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/transsion/baseui/util/l$a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsion/baseui/util/l$a;->c:Z

    iput p4, p0, Lcom/transsion/baseui/util/l$a;->d:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/baseui/util/l$a;->a:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/baseui/util/l$a;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/baseui/util/l$a;->c:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/baseui/util/l$a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/baseui/util/l;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget v0, p0, Lcom/transsion/baseui/util/l$a;->d:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
