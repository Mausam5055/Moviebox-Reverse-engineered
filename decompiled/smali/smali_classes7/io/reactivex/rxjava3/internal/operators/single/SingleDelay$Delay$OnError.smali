.class final Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$Delay$OnError;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$Delay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnError"
.end annotation


# instance fields
.field private final e:Ljava/lang/Throwable;

.field final synthetic this$1:Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$Delay;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$Delay;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDelay$Delay$OnError;->e:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
