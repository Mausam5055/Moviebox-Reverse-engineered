.class public final Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;
.super Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;

# interfaces
.implements Ltj/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\r\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J!\u0010\u001b\u001a\u00020\n2\u0010\u0010\u001a\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;",
        "Ltj/a;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "index",
        "totalCount",
        "",
        "onSelected",
        "(II)V",
        "onDeselected",
        "changeLocal",
        "()V",
        "resId",
        "setTextById",
        "(I)V",
        "setHintById",
        "",
        "srt",
        "setHintWithString",
        "(Ljava/lang/CharSequence;)V",
        "setTextWithString",
        "Lkotlin/Function0;",
        "action",
        "setTextAction",
        "(Lkotlin/jvm/functions/Function0;)V",
        "c",
        "I",
        "mPadding",
        "Ltj/c;",
        "d",
        "Ltj/c;",
        "textDelegate",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private c:I

.field private final d:Ltj/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->c:I

    sget v0, Lcom/tn/lib/widget/R$color;->text_02:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setNormalColor(I)V

    sget v0, Lcom/tn/lib/widget/R$color;->text_01:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setSelectedColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance p1, Ltj/c;

    invoke-direct {p1, p0}, Ltj/c;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->d:Ltj/c;

    return-void
.end method


# virtual methods
.method public changeLocal()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->d:Ltj/c;

    invoke-virtual {v0}, Ltj/c;->changeLocal()V

    return-void
.end method

.method public onDeselected(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->onDeselected(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljg/a;->d(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->c:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public onSelected(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->onSelected(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/a;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->c:I

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    sub-int/2addr p1, p2

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setHintById(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->d:Ltj/c;

    invoke-virtual {v0, p1}, Ltj/c;->b(I)V

    return-void
.end method

.method public setHintWithString(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->d:Ltj/c;

    invoke-virtual {v0, p1}, Ltj/c;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLocalChangeListener(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Ltj/a$a;->a(Ltj/a;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setTextAction(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->d:Ltj/c;

    invoke-virtual {v0, p1}, Ltj/c;->e(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setTextById(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->d:Ltj/c;

    invoke-virtual {v0, p1}, Ltj/c;->f(I)V

    return-void
.end method

.method public setTextWithString(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->d:Ltj/c;

    invoke-virtual {v0, p1}, Ltj/c;->g(Ljava/lang/CharSequence;)V

    return-void
.end method
