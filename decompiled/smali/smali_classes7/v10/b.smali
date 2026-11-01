.class final Lv10/b;
.super Lio/reactivex/rxjava3/core/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv10/b$a;
    }
.end annotation


# instance fields
.field private final a:Lretrofit2/d;


# direct methods
.method constructor <init>(Lretrofit2/d;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/j;-><init>()V

    iput-object p1, p0, Lv10/b;->a:Lretrofit2/d;

    return-void
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 2

    iget-object v0, p0, Lv10/b;->a:Lretrofit2/d;

    invoke-interface {v0}, Lretrofit2/d;->clone()Lretrofit2/d;

    move-result-object v0

    new-instance v1, Lv10/b$a;

    invoke-direct {v1, v0, p1}, Lv10/b$a;-><init>(Lretrofit2/d;Lio/reactivex/rxjava3/core/o;)V

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    invoke-virtual {v1}, Lv10/b$a;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Lretrofit2/d;->h(Lretrofit2/f;)V

    :cond_0
    return-void
.end method
