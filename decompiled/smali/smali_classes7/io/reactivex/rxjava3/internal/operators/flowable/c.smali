.class public final Lio/reactivex/rxjava3/internal/operators/flowable/c;
.super Lio/reactivex/rxjava3/core/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/c$a;
    }
.end annotation


# instance fields
.field private final b:Lio/reactivex/rxjava3/core/m;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/e;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c;->b:Lio/reactivex/rxjava3/core/m;

    return-void
.end method


# virtual methods
.method protected g(Lu10/c;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/c;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/c$a;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/c$a;-><init>(Lu10/c;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
