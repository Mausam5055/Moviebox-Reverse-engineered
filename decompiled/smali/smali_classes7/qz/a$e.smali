.class abstract Lqz/a$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field static final a:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/d;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/d;-><init>()V

    sput-object v0, Lqz/a$e;->a:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method
