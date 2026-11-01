.class final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final observer:Lio/reactivex/rxjava3/core/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/h;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/rxjava3/core/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/i;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/h;Lio/reactivex/rxjava3/core/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/h;",
            "Lio/reactivex/rxjava3/core/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->observer:Lio/reactivex/rxjava3/core/h;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->source:Lio/reactivex/rxjava3/core/i;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->source:Lio/reactivex/rxjava3/core/i;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->observer:Lio/reactivex/rxjava3/core/h;

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/i;->a(Lio/reactivex/rxjava3/core/h;)V

    return-void
.end method
