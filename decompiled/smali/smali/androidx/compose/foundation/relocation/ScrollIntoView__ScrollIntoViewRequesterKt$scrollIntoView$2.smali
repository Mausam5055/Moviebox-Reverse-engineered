.class final Landroidx/compose/foundation/relocation/ScrollIntoView__ScrollIntoViewRequesterKt$scrollIntoView$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/relocation/ScrollIntoView__ScrollIntoViewRequesterKt;->a(Landroidx/compose/ui/node/f;Ly/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly/i;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Ly/i;",
        "invoke",
        "()Ly/i;",
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
.field final synthetic $layoutCoordinates:Landroidx/compose/ui/layout/l;

.field final synthetic $rect:Ly/i;


# direct methods
.method constructor <init>(Ly/i;Landroidx/compose/ui/layout/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/relocation/ScrollIntoView__ScrollIntoViewRequesterKt$scrollIntoView$2;->$rect:Ly/i;

    iput-object p2, p0, Landroidx/compose/foundation/relocation/ScrollIntoView__ScrollIntoViewRequesterKt$scrollIntoView$2;->$layoutCoordinates:Landroidx/compose/ui/layout/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/ScrollIntoView__ScrollIntoViewRequesterKt$scrollIntoView$2;->invoke()Ly/i;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ly/i;
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/relocation/ScrollIntoView__ScrollIntoViewRequesterKt$scrollIntoView$2;->$rect:Ly/i;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/relocation/ScrollIntoView__ScrollIntoViewRequesterKt$scrollIntoView$2;->$layoutCoordinates:Landroidx/compose/ui/layout/l;

    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->F()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/u;->d(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/n;->c(J)Ly/i;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_1
    return-object v0
.end method
