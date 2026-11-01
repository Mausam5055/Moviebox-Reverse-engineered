.class abstract Lio/reactivex/rxjava3/internal/operators/flowable/a;
.super Lio/reactivex/rxjava3/core/e;


# instance fields
.field protected final b:Lio/reactivex/rxjava3/core/e;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/e;)V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/e;-><init>()V

    const-string v0, "source is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/e;

    return-void
.end method
