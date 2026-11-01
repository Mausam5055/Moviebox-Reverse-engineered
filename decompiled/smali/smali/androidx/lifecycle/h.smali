.class public final synthetic Landroidx/lifecycle/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/i;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/i;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/h;->a:Landroidx/lifecycle/i;

    iput-object p2, p0, Landroidx/lifecycle/h;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/h;->a:Landroidx/lifecycle/i;

    iget-object v1, p0, Landroidx/lifecycle/h;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/i;Ljava/lang/Runnable;)V

    return-void
.end method
