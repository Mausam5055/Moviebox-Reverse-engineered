.class public final synthetic Landroidx/work/impl/constraints/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/t1;

.field public final synthetic b:Lkotlinx/coroutines/channels/o;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/t1;Lkotlinx/coroutines/channels/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/e;->a:Lkotlinx/coroutines/t1;

    iput-object p2, p0, Landroidx/work/impl/constraints/e;->b:Lkotlinx/coroutines/channels/o;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/constraints/e;->a:Lkotlinx/coroutines/t1;

    iget-object v1, p0, Landroidx/work/impl/constraints/e;->b:Lkotlinx/coroutines/channels/o;

    check-cast p1, Landroidx/work/impl/constraints/b;

    invoke-static {v0, v1, p1}, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->d(Lkotlinx/coroutines/t1;Lkotlinx/coroutines/channels/o;Landroidx/work/impl/constraints/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
