.class public final synthetic Landroidx/work/impl/c1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/d1;

.field public final synthetic b:Landroidx/work/impl/y;

.field public final synthetic c:Landroidx/work/WorkerParameters$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/d1;Landroidx/work/impl/y;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/c1;->a:Landroidx/work/impl/d1;

    iput-object p2, p0, Landroidx/work/impl/c1;->b:Landroidx/work/impl/y;

    iput-object p3, p0, Landroidx/work/impl/c1;->c:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/c1;->a:Landroidx/work/impl/d1;

    iget-object v1, p0, Landroidx/work/impl/c1;->b:Landroidx/work/impl/y;

    iget-object v2, p0, Landroidx/work/impl/c1;->c:Landroidx/work/WorkerParameters$a;

    invoke-static {v0, v1, v2}, Landroidx/work/impl/d1;->f(Landroidx/work/impl/d1;Landroidx/work/impl/y;Landroidx/work/WorkerParameters$a;)V

    return-void
.end method
