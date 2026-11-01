.class public abstract Landroidx/lifecycle/Transformations;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v1, Landroidx/lifecycle/z;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/z;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/lifecycle/z;

    invoke-direct {v1}, Landroidx/lifecycle/z;-><init>()V

    :goto_0
    new-instance v2, Landroidx/lifecycle/Transformations$distinctUntilChanged$1;

    invoke-direct {v2, v1, v0}, Landroidx/lifecycle/Transformations$distinctUntilChanged$1;-><init>(Landroidx/lifecycle/z;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    new-instance v0, Landroidx/lifecycle/Transformations$a;

    invoke-direct {v0, v2}, Landroidx/lifecycle/Transformations$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/z;->r(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/c0;)V

    return-object v1
.end method
