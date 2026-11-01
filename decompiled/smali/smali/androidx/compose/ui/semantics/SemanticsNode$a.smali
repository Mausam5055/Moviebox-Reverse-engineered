.class public final Landroidx/compose/ui/semantics/SemanticsNode$a;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/i1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/semantics/SemanticsNode;->c(Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/semantics/SemanticsNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic n:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsNode$a;->n:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic O()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/h1;->a(Landroidx/compose/ui/node/i1;)Z

    move-result v0

    return v0
.end method

.method public R0(Landroidx/compose/ui/semantics/n;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode$a;->n:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic W0()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/h1;->b(Landroidx/compose/ui/node/i1;)Z

    move-result v0

    return v0
.end method
