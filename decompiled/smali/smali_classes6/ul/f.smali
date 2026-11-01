.class public final synthetic Lul/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/i1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/f;->a:Landroidx/compose/runtime/i1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lul/f;->a:Landroidx/compose/runtime/i1;

    check-cast p1, Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-static {v0, p1}, Lcom/transsion/home/view/filter/popup/e;->j(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
