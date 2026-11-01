.class public final Lio/reactivex/rxjava3/internal/operators/observable/j;
.super Lio/reactivex/rxjava3/core/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/j$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/m;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j;->a:Lio/reactivex/rxjava3/core/m;

    return-void
.end method


# virtual methods
.method public b(Lio/reactivex/rxjava3/core/b;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j;->a:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/j$a;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/observable/j$a;-><init>(Lio/reactivex/rxjava3/core/b;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
