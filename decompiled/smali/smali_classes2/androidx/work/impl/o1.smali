.class public final synthetic Landroidx/work/impl/o1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/work/s;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/work/impl/WorkerWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/s;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/o1;->a:Landroidx/work/s;

    iput-boolean p2, p0, Landroidx/work/impl/o1;->b:Z

    iput-object p3, p0, Landroidx/work/impl/o1;->c:Ljava/lang/String;

    iput-object p4, p0, Landroidx/work/impl/o1;->d:Landroidx/work/impl/WorkerWrapper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/o1;->a:Landroidx/work/s;

    iget-boolean v1, p0, Landroidx/work/impl/o1;->b:Z

    iget-object v2, p0, Landroidx/work/impl/o1;->c:Ljava/lang/String;

    iget-object v3, p0, Landroidx/work/impl/o1;->d:Landroidx/work/impl/WorkerWrapper;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/work/impl/WorkerWrapper;->a(Landroidx/work/s;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
