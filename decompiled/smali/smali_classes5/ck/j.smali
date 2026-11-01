.class public abstract Lck/j;
.super Landroid/app/Dialog;

# interfaces
.implements Lhj/a;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lck/i;

    invoke-direct {p1, p0}, Lck/i;-><init>(Lck/j;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lck/j;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lck/j;)Lhj/b;
    .locals 0

    invoke-static {p0}, Lck/j;->c(Lck/j;)Lhj/b;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lck/j;)Lhj/b;
    .locals 0

    invoke-virtual {p0}, Lck/j;->d()Lhj/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Z
.end method

.method public d()Lhj/b;
    .locals 1

    invoke-static {p0}, Lhj/a$a;->a(Lhj/a;)Lhj/b;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final g(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lck/j;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getLogViewConfig()Lhj/b;
    .locals 1

    iget-object v0, p0, Lck/j;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj/b;

    return-object v0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public show()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show dialog hasShownAnyDialogInSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lck/u;->a:Lck/u;

    invoke-virtual {v2}, Lck/u;->b()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, v3, v4}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v2}, Lck/u;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lck/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lck/j;->f()V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lck/u;->c(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
