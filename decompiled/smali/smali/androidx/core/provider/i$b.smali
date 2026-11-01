.class Landroidx/core/provider/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/util/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/i;->d(Landroid/content/Context;Ljava/util/List;ILjava/util/concurrent/Executor;Landroidx/core/provider/CallbackWrapper;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/provider/CallbackWrapper;


# direct methods
.method constructor <init>(Landroidx/core/provider/CallbackWrapper;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/provider/i$b;->a:Landroidx/core/provider/CallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/provider/i$e;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroidx/core/provider/i$e;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Landroidx/core/provider/i$e;-><init>(I)V

    :cond_0
    iget-object v0, p0, Landroidx/core/provider/i$b;->a:Landroidx/core/provider/CallbackWrapper;

    invoke-virtual {v0, p1}, Landroidx/core/provider/CallbackWrapper;->b(Landroidx/core/provider/i$e;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/core/provider/i$e;

    invoke-virtual {p0, p1}, Landroidx/core/provider/i$b;->a(Landroidx/core/provider/i$e;)V

    return-void
.end method
