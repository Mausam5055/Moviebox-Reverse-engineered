.class public final Landroidx/compose/foundation/gestures/ScrollingLogic$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/gestures/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/o;Landroidx/compose/foundation/f0;Landroidx/compose/foundation/gestures/g;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {v0, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(Landroidx/compose/foundation/gestures/ScrollingLogic;I)V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(Landroidx/compose/foundation/gestures/ScrollingLogic;)Landroidx/compose/foundation/f0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->h(Landroidx/compose/foundation/gestures/ScrollingLogic;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->b(Landroidx/compose/foundation/gestures/ScrollingLogic;)I

    move-result p3

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(Landroidx/compose/foundation/gestures/ScrollingLogic;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroidx/compose/foundation/f0;->c(JILkotlin/jvm/functions/Function1;)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(Landroidx/compose/foundation/gestures/ScrollingLogic;)Landroidx/compose/foundation/gestures/k;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {v1, v0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/k;JI)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public b(JI)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(Landroidx/compose/foundation/gestures/ScrollingLogic;)Landroidx/compose/foundation/gestures/k;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-static {v1, v0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/k;JI)J

    move-result-wide p1

    return-wide p1
.end method
