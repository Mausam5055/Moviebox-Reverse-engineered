.class public final Landroidx/compose/ui/layout/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/c;->M0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/Map;

.field private final d:Lkotlin/jvm/functions/Function1;

.field final synthetic e:Lkotlin/jvm/functions/Function1;

.field final synthetic f:Landroidx/compose/ui/layout/c;


# direct methods
.method constructor <init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/c;)V
    .locals 0

    iput-object p5, p0, Landroidx/compose/ui/layout/c$a;->e:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/ui/layout/c$a;->f:Landroidx/compose/ui/layout/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/layout/c$a;->a:I

    iput p2, p0, Landroidx/compose/ui/layout/c$a;->b:I

    iput-object p3, p0, Landroidx/compose/ui/layout/c$a;->c:Ljava/util/Map;

    iput-object p4, p0, Landroidx/compose/ui/layout/c$a;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/c$a;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/c$a;->a:I

    return v0
.end method

.method public v()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c$a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/c$a;->e:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/compose/ui/layout/c$a;->f:Landroidx/compose/ui/layout/c;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/c;->v()Landroidx/compose/ui/node/y;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->d1()Landroidx/compose/ui/layout/g0$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public x()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c$a;->d:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
