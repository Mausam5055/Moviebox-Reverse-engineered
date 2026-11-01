.class final Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/layer/GraphicsLayer;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;Landroidx/compose/ui/graphics/layer/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lz/g;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lz/g;",
        "",
        "invoke",
        "(Lz/g;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;->this$0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lz/g;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;->invoke(Lz/g;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lz/g;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;->this$0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;->this$0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->c(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;->this$0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;->this$0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/graphics/t1;->a:Landroidx/compose/ui/graphics/t1$a;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/t1$a;->b()I

    move-result v2

    invoke-interface {p1}, Lz/g;->H0()Lz/d;

    move-result-object v3

    invoke-interface {v3}, Lz/d;->i()J

    move-result-wide v4

    invoke-interface {v3}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/ui/graphics/m1;->n()V

    :try_start_0
    invoke-interface {v3}, Lz/d;->c()Lz/j;

    move-result-object v6

    invoke-interface {v6, v0, v2}, Lz/j;->b(Landroidx/compose/ui/graphics/Path;I)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-interface {v3, v4, v5}, Lz/d;->f(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v3}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-interface {v3, v4, v5}, Lz/d;->f(J)V

    throw p1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;->this$0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
