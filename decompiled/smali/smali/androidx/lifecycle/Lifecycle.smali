.class public abstract Landroidx/lifecycle/Lifecycle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/Lifecycle$Event;,
        Landroidx/lifecycle/Lifecycle$State;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/Lifecycle;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/lifecycle/t;)V
.end method

.method public abstract b()Landroidx/lifecycle/Lifecycle$State;
.end method

.method public final c()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/Lifecycle;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public abstract d(Landroidx/lifecycle/t;)V
.end method
