.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final idx:J

.field final parent:Lio/reactivex/rxjava3/internal/operators/observable/p;


# direct methods
.method constructor <init>(JLio/reactivex/rxjava3/internal/operators/observable/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->idx:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
