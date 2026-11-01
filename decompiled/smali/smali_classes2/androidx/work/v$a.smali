.class public final Landroidx/work/v$a;
.super Landroidx/work/i0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "workerClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/i0$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/work/i0;
    .locals 1

    invoke-virtual {p0}, Landroidx/work/v$a;->m()Landroidx/work/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Landroidx/work/i0$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/work/v$a;->n()Landroidx/work/v$a;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroidx/work/v;
    .locals 2

    invoke-virtual {p0}, Landroidx/work/i0$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/work/i0$a;->h()Landroidx/work/impl/model/j0;

    move-result-object v0

    iget-object v0, v0, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    invoke-virtual {v0}, Landroidx/work/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Landroidx/work/v;

    invoke-direct {v0, p0}, Landroidx/work/v;-><init>(Landroidx/work/v$a;)V

    return-object v0
.end method

.method public n()Landroidx/work/v$a;
    .locals 0

    return-object p0
.end method
