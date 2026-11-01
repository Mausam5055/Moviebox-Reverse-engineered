.class Lcom/bigkoo/pickerview/view/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ln7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/b;->B(IIIZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bigkoo/pickerview/view/b;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b$b;->a:Lcom/bigkoo/pickerview/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$b;->a:Lcom/bigkoo/pickerview/view/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->k(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b$b;->a:Lcom/bigkoo/pickerview/view/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->h(Lcom/bigkoo/pickerview/view/b;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lr5/a;->g(I)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lr5/a;->g(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b$b;->a:Lcom/bigkoo/pickerview/view/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-static {v0}, Lr5/a;->g(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b$b;->a:Lcom/bigkoo/pickerview/view/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/b;->i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    move-result-object p1

    new-instance v1, Ln5/a;

    invoke-static {v0}, Lr5/a;->f(I)I

    move-result v2

    invoke-static {v2}, Lr5/a;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ln5/a;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    invoke-static {v0}, Lr5/a;->f(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b$b;->a:Lcom/bigkoo/pickerview/view/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    new-instance v2, Ln5/a;

    invoke-static {v0, p1}, Lr5/a;->h(II)I

    move-result v3

    invoke-static {v3}, Lr5/a;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ln5/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    invoke-static {v0, p1}, Lr5/a;->h(II)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b$b;->a:Lcom/bigkoo/pickerview/view/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    move-result-object v1

    new-instance v2, Ln5/a;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lr5/a;->h(II)I

    move-result v3

    invoke-static {v3}, Lr5/a;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ln5/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lm7/a;)V

    invoke-static {v0, p1}, Lr5/a;->h(II)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$b;->a:Lcom/bigkoo/pickerview/view/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    add-int/lit8 p1, p1, -0x1

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$b;->a:Lcom/bigkoo/pickerview/view/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    :cond_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b$b;->a:Lcom/bigkoo/pickerview/view/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/b;->e(Lcom/bigkoo/pickerview/view/b;)Lq5/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b$b;->a:Lcom/bigkoo/pickerview/view/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/view/b;->e(Lcom/bigkoo/pickerview/view/b;)Lq5/a;

    move-result-object p1

    invoke-interface {p1}, Lq5/a;->a()V

    :cond_3
    return-void
.end method
