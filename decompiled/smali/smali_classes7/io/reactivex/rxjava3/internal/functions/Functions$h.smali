.class final Lio/reactivex/rxjava3/internal/functions/Functions$h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Llz/k;
.implements Llz/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/functions/Functions$h;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/functions/Functions$h;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/functions/Functions$h;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/functions/Functions$h;->a:Ljava/lang/Object;

    return-object v0
.end method
