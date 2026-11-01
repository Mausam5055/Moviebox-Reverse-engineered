.class public final Landroidx/compose/material/ripple/RippleContainer;
.super Landroid/view/ViewGroup;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J7\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0011\u0010\u0018\u001a\u00020\u0017*\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0011\u0010\u001a\u001a\u00020\r*\u00020\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00088\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010 R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010)\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001d\u00a8\u0006*"
    }
    d2 = {
        "Landroidx/compose/material/ripple/RippleContainer;",
        "Landroid/view/ViewGroup;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "changed",
        "",
        "l",
        "t",
        "r",
        "b",
        "",
        "onLayout",
        "(ZIIII)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "requestLayout",
        "()V",
        "Landroidx/compose/material/ripple/e;",
        "Landroidx/compose/material/ripple/RippleHostView;",
        "getRippleHostView",
        "(Landroidx/compose/material/ripple/e;)Landroidx/compose/material/ripple/RippleHostView;",
        "disposeRippleIfNeeded",
        "(Landroidx/compose/material/ripple/e;)V",
        "a",
        "I",
        "MaxRippleHosts",
        "",
        "Ljava/util/List;",
        "rippleHosts",
        "c",
        "unusedRippleHosts",
        "Landroidx/compose/material/ripple/f;",
        "d",
        "Landroidx/compose/material/ripple/f;",
        "rippleHostMap",
        "e",
        "nextHostIndex",
        "material-ripple_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:Landroidx/compose/material/ripple/f;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    iput v0, p0, Landroidx/compose/material/ripple/RippleContainer;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->c:Ljava/util/List;

    new-instance v2, Landroidx/compose/material/ripple/f;

    invoke-direct {v2}, Landroidx/compose/material/ripple/f;-><init>()V

    iput-object v2, p0, Landroidx/compose/material/ripple/RippleContainer;->d:Landroidx/compose/material/ripple/f;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v2, Landroidx/compose/material/ripple/RippleHostView;

    invoke-direct {v2, p1}, Landroidx/compose/material/ripple/RippleHostView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput p1, p0, Landroidx/compose/material/ripple/RippleContainer;->e:I

    sget p1, Landroidx/compose/ui/R$id;->hide_in_inspector_tag:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final disposeRippleIfNeeded(Landroidx/compose/material/ripple/e;)V
    .locals 2

    invoke-interface {p1}, Landroidx/compose/material/ripple/e;->u0()V

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->d:Landroidx/compose/material/ripple/f;

    invoke-virtual {v0, p1}, Landroidx/compose/material/ripple/f;->b(Landroidx/compose/material/ripple/e;)Landroidx/compose/material/ripple/RippleHostView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/material/ripple/RippleHostView;->disposeRipple()V

    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->d:Landroidx/compose/material/ripple/f;

    invoke-virtual {v1, p1}, Landroidx/compose/material/ripple/f;->c(Landroidx/compose/material/ripple/e;)V

    iget-object p1, p0, Landroidx/compose/material/ripple/RippleContainer;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getRippleHostView(Landroidx/compose/material/ripple/e;)Landroidx/compose/material/ripple/RippleHostView;
    .locals 3

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->d:Landroidx/compose/material/ripple/f;

    invoke-virtual {v0, p1}, Landroidx/compose/material/ripple/f;->b(Landroidx/compose/material/ripple/e;)Landroidx/compose/material/ripple/RippleHostView;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->c:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/compose/material/ripple/RippleContainer;->e:I

    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->b:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v1

    if-le v0, v1, :cond_1

    new-instance v0, Landroidx/compose/material/ripple/RippleHostView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/material/ripple/RippleHostView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->b:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->b:Ljava/util/List;

    iget v1, p0, Landroidx/compose/material/ripple/RippleContainer;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->d:Landroidx/compose/material/ripple/f;

    invoke-virtual {v1, v0}, Landroidx/compose/material/ripple/f;->a(Landroidx/compose/material/ripple/RippleHostView;)Landroidx/compose/material/ripple/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/compose/material/ripple/e;->u0()V

    iget-object v2, p0, Landroidx/compose/material/ripple/RippleContainer;->d:Landroidx/compose/material/ripple/f;

    invoke-virtual {v2, v1}, Landroidx/compose/material/ripple/f;->c(Landroidx/compose/material/ripple/e;)V

    invoke-virtual {v0}, Landroidx/compose/material/ripple/RippleHostView;->disposeRipple()V

    :cond_2
    :goto_0
    iget v1, p0, Landroidx/compose/material/ripple/RippleContainer;->e:I

    iget v2, p0, Landroidx/compose/material/ripple/RippleContainer;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/compose/material/ripple/RippleContainer;->e:I

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Landroidx/compose/material/ripple/RippleContainer;->e:I

    :cond_4
    :goto_1
    iget-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->d:Landroidx/compose/material/ripple/f;

    invoke-virtual {v1, p1, v0}, Landroidx/compose/material/ripple/f;->d(Landroidx/compose/material/ripple/e;Landroidx/compose/material/ripple/RippleHostView;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    return-void
.end method
