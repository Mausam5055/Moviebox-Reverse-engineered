.class final Landroidx/activity/OnBackPressedDispatcher$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/activity/u;

.field final synthetic b:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/u;)V
    .locals 1

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$d;->b:Landroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$d;->a:Landroidx/activity/u;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$d;->b:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/OnBackPressedDispatcher;)Lkotlin/collections/ArrayDeque;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher$d;->a:Landroidx/activity/u;

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$d;->b:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {v0}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/activity/OnBackPressedDispatcher;)Landroidx/activity/u;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher$d;->a:Landroidx/activity/u;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$d;->a:Landroidx/activity/u;

    invoke-virtual {v0}, Landroidx/activity/u;->handleOnBackCancelled()V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$d;->b:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->f(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/u;)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$d;->a:Landroidx/activity/u;

    invoke-virtual {v0, p0}, Landroidx/activity/u;->removeCancellable(Landroidx/activity/c;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$d;->a:Landroidx/activity/u;

    invoke-virtual {v0}, Landroidx/activity/u;->getEnabledChangedCallback$activity_release()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$d;->a:Landroidx/activity/u;

    invoke-virtual {v0, v1}, Landroidx/activity/u;->setEnabledChangedCallback$activity_release(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
