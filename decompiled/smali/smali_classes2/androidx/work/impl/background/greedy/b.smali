.class public final synthetic Landroidx/work/impl/background/greedy/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/background/greedy/c;

.field public final synthetic b:Landroidx/work/impl/y;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/background/greedy/c;Landroidx/work/impl/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/greedy/b;->a:Landroidx/work/impl/background/greedy/c;

    iput-object p2, p0, Landroidx/work/impl/background/greedy/b;->b:Landroidx/work/impl/y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/background/greedy/b;->a:Landroidx/work/impl/background/greedy/c;

    iget-object v1, p0, Landroidx/work/impl/background/greedy/b;->b:Landroidx/work/impl/y;

    invoke-static {v0, v1}, Landroidx/work/impl/background/greedy/c;->a(Landroidx/work/impl/background/greedy/c;Landroidx/work/impl/y;)V

    return-void
.end method
