.class public interface abstract Lkotlinx/coroutines/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/n$a;
    }
.end annotation


# virtual methods
.method public abstract cancel(Ljava/lang/Throwable;)Z
.end method

.method public abstract completeResume(Ljava/lang/Object;)V
.end method

.method public abstract invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract isActive()Z
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
.end method

.method public abstract resumeUndispatched(Lkotlinx/coroutines/i0;Ljava/lang/Object;)V
.end method

.method public abstract tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;
.end method

.method public abstract tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;
.end method
