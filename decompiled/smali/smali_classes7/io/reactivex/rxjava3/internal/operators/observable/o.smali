.class public final Lio/reactivex/rxjava3/internal/operators/observable/o;
.super Lio/reactivex/rxjava3/core/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/o$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/m;

.field final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/o;->a:Lio/reactivex/rxjava3/core/m;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/o;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Lio/reactivex/rxjava3/core/q;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/o;->a:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/o$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/o;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/o$a;-><init>(Lio/reactivex/rxjava3/core/q;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
