.class public final enum Lio/reactivex/rxjava3/internal/util/EmptyComponent;
.super Ljava/lang/Enum;

# interfaces
.implements Lio/reactivex/rxjava3/core/f;
.implements Lio/reactivex/rxjava3/core/o;
.implements Lio/reactivex/rxjava3/core/h;
.implements Lio/reactivex/rxjava3/core/q;
.implements Lio/reactivex/rxjava3/core/b;
.implements Lu10/d;
.implements Lio/reactivex/rxjava3/disposables/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/rxjava3/internal/util/EmptyComponent;",
        ">;",
        "Lio/reactivex/rxjava3/core/f;",
        "Lio/reactivex/rxjava3/core/o;",
        "Lio/reactivex/rxjava3/core/h;",
        "Lio/reactivex/rxjava3/core/q;",
        "Lio/reactivex/rxjava3/core/b;",
        "Lu10/d;",
        "Lio/reactivex/rxjava3/disposables/c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/rxjava3/internal/util/EmptyComponent;

.field public static final enum INSTANCE:Lio/reactivex/rxjava3/internal/util/EmptyComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/reactivex/rxjava3/internal/util/EmptyComponent;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/util/EmptyComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/rxjava3/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/rxjava3/internal/util/EmptyComponent;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/reactivex/rxjava3/internal/util/EmptyComponent;

    aput-object v0, v1, v2

    sput-object v1, Lio/reactivex/rxjava3/internal/util/EmptyComponent;->$VALUES:[Lio/reactivex/rxjava3/internal/util/EmptyComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static asObserver()Lio/reactivex/rxjava3/core/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/core/o;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/rxjava3/internal/util/EmptyComponent;

    return-object v0
.end method

.method public static asSubscriber()Lu10/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lu10/c;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/rxjava3/internal/util/EmptyComponent;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/rxjava3/internal/util/EmptyComponent;
    .locals 1

    const-class v0, Lio/reactivex/rxjava3/internal/util/EmptyComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/util/EmptyComponent;

    return-object p0
.end method

.method public static values()[Lio/reactivex/rxjava3/internal/util/EmptyComponent;
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/internal/util/EmptyComponent;->$VALUES:[Lio/reactivex/rxjava3/internal/util/EmptyComponent;

    invoke-virtual {v0}, [Lio/reactivex/rxjava3/internal/util/EmptyComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/util/EmptyComponent;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lpz/a;->r(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    return-void
.end method

.method public onSubscribe(Lu10/d;)V
    .locals 0

    invoke-interface {p1}, Lu10/d;->cancel()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
