.class public final synthetic Landroidx/work/impl/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/s;

.field public final synthetic b:Landroidx/work/impl/model/x;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/s;Landroidx/work/impl/model/x;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/r;->a:Landroidx/work/impl/s;

    iput-object p2, p0, Landroidx/work/impl/r;->b:Landroidx/work/impl/model/x;

    iput-boolean p3, p0, Landroidx/work/impl/r;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/r;->a:Landroidx/work/impl/s;

    iget-object v1, p0, Landroidx/work/impl/r;->b:Landroidx/work/impl/model/x;

    iget-boolean v2, p0, Landroidx/work/impl/r;->c:Z

    invoke-static {v0, v1, v2}, Landroidx/work/impl/s;->c(Landroidx/work/impl/s;Landroidx/work/impl/model/x;Z)V

    return-void
.end method
