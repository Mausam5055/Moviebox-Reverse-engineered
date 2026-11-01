.class public final synthetic Landroidx/window/layout/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/window/layout/t$c;

.field public final synthetic b:Landroidx/window/layout/a0;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/layout/t$c;Landroidx/window/layout/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/u;->a:Landroidx/window/layout/t$c;

    iput-object p2, p0, Landroidx/window/layout/u;->b:Landroidx/window/layout/a0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/window/layout/u;->a:Landroidx/window/layout/t$c;

    iget-object v1, p0, Landroidx/window/layout/u;->b:Landroidx/window/layout/a0;

    invoke-static {v0, v1}, Landroidx/window/layout/t$c;->a(Landroidx/window/layout/t$c;Landroidx/window/layout/a0;)V

    return-void
.end method
