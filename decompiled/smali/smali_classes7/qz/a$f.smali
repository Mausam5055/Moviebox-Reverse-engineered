.class final Lqz/a$f;
.super Ljava/lang/Object;

# interfaces
.implements Llz/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    sget-object v0, Lqz/a$e;->a:Lio/reactivex/rxjava3/core/Scheduler;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lqz/a$f;->a()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method
