.class public final synthetic Landroidx/core/view/insets/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/view/insets/f;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/insets/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/e;->a:Landroidx/core/view/insets/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/e;->a:Landroidx/core/view/insets/f;

    invoke-static {v0}, Landroidx/core/view/insets/f;->a(Landroidx/core/view/insets/f;)V

    return-void
.end method
