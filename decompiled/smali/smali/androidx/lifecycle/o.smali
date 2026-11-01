.class public final synthetic Landroidx/lifecycle/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/p;

.field public final synthetic b:Lkotlinx/coroutines/t1;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/p;Lkotlinx/coroutines/t1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/p;

    iput-object p2, p0, Landroidx/lifecycle/o;->b:Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/p;

    iget-object v1, p0, Landroidx/lifecycle/o;->b:Lkotlinx/coroutines/t1;

    invoke-static {v0, v1, p1, p2}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/p;Lkotlinx/coroutines/t1;Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
