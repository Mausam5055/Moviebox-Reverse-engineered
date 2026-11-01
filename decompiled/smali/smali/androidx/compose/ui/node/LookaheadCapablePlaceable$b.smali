.class public final Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LookaheadCapablePlaceable;->M0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lkotlin/jvm/functions/Function1;

.field final synthetic e:Lkotlin/jvm/functions/Function1;

.field final synthetic f:Landroidx/compose/ui/node/LookaheadCapablePlaceable;


# direct methods
.method constructor <init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->a:I

    iput p2, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->b:I

    iput-object p3, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->c:Ljava/util/Map;

    iput-object p4, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->d:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->e:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->f:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->a:I

    return v0
.end method

.method public v()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->c:Ljava/util/Map;

    return-object v0
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->e:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->f:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->d1()Landroidx/compose/ui/layout/g0$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public x()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$b;->d:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
