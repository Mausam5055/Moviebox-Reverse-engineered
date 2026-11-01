.class public final Lio/reactivex/rxjava3/internal/operators/observable/e;
.super Lio/reactivex/rxjava3/core/j;

# interfaces
.implements Lio/reactivex/rxjava3/operators/e;


# static fields
.field public static final a:Lio/reactivex/rxjava3/core/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/e;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/observable/e;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/e;->a:Lio/reactivex/rxjava3/core/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 0

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
