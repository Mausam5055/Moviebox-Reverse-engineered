.class public final synthetic Landroidx/lifecycle/k0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/savedstate/c$c;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/l0;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/k0;->a:Landroidx/lifecycle/l0;

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/k0;->a:Landroidx/lifecycle/l0;

    invoke-static {v0}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/l0;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
