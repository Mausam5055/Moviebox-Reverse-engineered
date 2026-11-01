.class final Landroidx/compose/foundation/layout/WrapContentElement$Companion$size$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/WrapContentElement$Companion;->b(Landroidx/compose/ui/b;Z)Landroidx/compose/foundation/layout/WrapContentElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lo0/t;",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "Lo0/p;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lo0/t;",
        "size",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "layoutDirection",
        "Lo0/p;",
        "invoke-5SAbXVA",
        "(JLandroidx/compose/ui/unit/LayoutDirection;)J",
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
.field final synthetic $align:Landroidx/compose/ui/b;


# direct methods
.method constructor <init>(Landroidx/compose/ui/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentElement$Companion$size$1;->$align:Landroidx/compose/ui/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lo0/t;

    invoke-virtual {p1}, Lo0/t;->j()J

    move-result-wide v0

    check-cast p2, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/compose/foundation/layout/WrapContentElement$Companion$size$1;->invoke-5SAbXVA(JLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lo0/p;->b(J)Lo0/p;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-5SAbXVA(JLandroidx/compose/ui/unit/LayoutDirection;)J
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentElement$Companion$size$1;->$align:Landroidx/compose/ui/b;

    sget-object v1, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {v1}, Lo0/t$a;->a()J

    move-result-wide v1

    move-wide v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/b;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide p1

    return-wide p1
.end method
