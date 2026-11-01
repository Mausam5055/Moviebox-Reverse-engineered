.class final Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/BorderModifierNode;->M1(Landroidx/compose/ui/draw/c;Landroidx/compose/ui/graphics/j1;Landroidx/compose/ui/graphics/k4$c;JJZF)Landroidx/compose/ui/draw/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lz/c;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lz/c;",
        "",
        "invoke",
        "(Lz/c;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $brush:Landroidx/compose/ui/graphics/j1;

.field final synthetic $roundedRectPath:Landroidx/compose/ui/graphics/Path;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$2;->$roundedRectPath:Landroidx/compose/ui/graphics/Path;

    iput-object p2, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$2;->$brush:Landroidx/compose/ui/graphics/j1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lz/c;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$2;->invoke(Lz/c;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lz/c;)V
    .locals 9

    invoke-interface {p1}, Lz/c;->Y0()V

    iget-object v1, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$2;->$roundedRectPath:Landroidx/compose/ui/graphics/Path;

    iget-object v2, p0, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$2;->$brush:Landroidx/compose/ui/graphics/j1;

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lz/f;->g(Lz/g;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    return-void
.end method
