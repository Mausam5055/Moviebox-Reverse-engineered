.class public final Lio/reactivex/rxjava3/internal/operators/observable/c;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/c$a;
    }
.end annotation


# instance fields
.field final b:Llz/f;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Llz/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->b:Llz/f;

    return-void
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/c$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->b:Llz/f;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/c$a;-><init>(Lio/reactivex/rxjava3/core/o;Llz/f;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
