.class public final Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/gestures/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field final synthetic b:Landroidx/compose/foundation/gestures/h;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/h;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$a;->b:Landroidx/compose/foundation/gestures/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$a;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$a;->b:Landroidx/compose/foundation/gestures/h;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->B(F)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->u(J)J

    move-result-wide v2

    sget-object p1, Landroidx/compose/ui/input/nestedscroll/e;->a:Landroidx/compose/ui/input/nestedscroll/e$a;

    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/e$a;->a()I

    move-result p1

    invoke-interface {v1, v2, v3, p1}, Landroidx/compose/foundation/gestures/h;->a(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->A(J)F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->t(F)F

    move-result p1

    return p1
.end method
