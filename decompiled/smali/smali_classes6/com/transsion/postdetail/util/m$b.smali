.class public final Lcom/transsion/postdetail/util/m$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/util/m;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/util/m;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/util/m;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-static {v0}, Lcom/transsion/postdetail/util/m;->b(Lcom/transsion/postdetail/util/m;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-static {v0}, Lcom/transsion/postdetail/util/m;->b(Lcom/transsion/postdetail/util/m;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-static {v1}, Lcom/transsion/postdetail/util/m;->b(Lcom/transsion/postdetail/util/m;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-virtual {v1}, Lcom/transsion/postdetail/util/m;->c()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/util/m;->e(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-virtual {v1}, Lcom/transsion/postdetail/util/m;->c()I

    move-result v1

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-virtual {v1}, Lcom/transsion/postdetail/util/m;->c()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0xc8

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-static {v1}, Lcom/transsion/postdetail/util/m;->a(Lcom/transsion/postdetail/util/m;)Lcom/transsion/postdetail/util/m$a;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-static {v1}, Lcom/transsion/postdetail/util/m;->a(Lcom/transsion/postdetail/util/m;)Lcom/transsion/postdetail/util/m$a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-virtual {v2}, Lcom/transsion/postdetail/util/m;->c()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Lcom/transsion/postdetail/util/m$a;->b(I)V

    :cond_3
    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/util/m;->e(I)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-virtual {v1}, Lcom/transsion/postdetail/util/m;->c()I

    move-result v1

    sub-int v1, v0, v1

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-static {v1}, Lcom/transsion/postdetail/util/m;->a(Lcom/transsion/postdetail/util/m;)Lcom/transsion/postdetail/util/m$a;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-static {v1}, Lcom/transsion/postdetail/util/m;->a(Lcom/transsion/postdetail/util/m;)Lcom/transsion/postdetail/util/m$a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-virtual {v2}, Lcom/transsion/postdetail/util/m;->c()I

    move-result v2

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lcom/transsion/postdetail/util/m$a;->a(I)V

    :cond_5
    iget-object v1, p0, Lcom/transsion/postdetail/util/m$b;->a:Lcom/transsion/postdetail/util/m;

    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/util/m;->e(I)V

    :cond_6
    return-void
.end method
