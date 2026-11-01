.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d;->c(Landroidx/compose/ui/layout/x;Ljava/util/List;J)Landroidx/compose/ui/layout/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroidx/compose/ui/layout/v;

.field final synthetic b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field final synthetic c:I

.field final synthetic d:Landroidx/compose/ui/layout/v;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/v;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;ILandroidx/compose/ui/layout/v;)V
    .locals 0

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iput p3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->c:I

    iput-object p4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->d:Landroidx/compose/ui/layout/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->a:Landroidx/compose/ui/layout/v;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->a:Landroidx/compose/ui/layout/v;

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->a:Landroidx/compose/ui/layout/v;

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->getWidth()I

    move-result v0

    return v0
.end method

.method public v()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->a:Landroidx/compose/ui/layout/v;

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->c:I

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->d:Landroidx/compose/ui/layout/v;

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->w()V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    return-void
.end method

.method public x()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d$a;->a:Landroidx/compose/ui/layout/v;

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->x()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method
