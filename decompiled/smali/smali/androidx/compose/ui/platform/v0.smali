.class public final synthetic Landroidx/compose/ui/platform/v0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/savedstate/c$c;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/saveable/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/saveable/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/v0;->a:Landroidx/compose/runtime/saveable/b;

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/v0;->a:Landroidx/compose/runtime/saveable/b;

    invoke-static {v0}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->a(Landroidx/compose/runtime/saveable/b;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
