.class public final Lcom/transsion/web/share/k$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/web/share/k;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/web/share/k;


# direct methods
.method constructor <init>(Lcom/transsion/web/share/k;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/web/share/k$a;->a:Lcom/transsion/web/share/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    iget-object p1, p0, Lcom/transsion/web/share/k$a;->a:Lcom/transsion/web/share/k;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/transsion/web/share/k;->e(Lcom/transsion/web/share/k;J)V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/u;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    invoke-static {}, Lcom/blankj/utilcode/util/c;->l()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/web/share/k$a;->a:Lcom/transsion/web/share/k;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/web/share/k;->e(Lcom/transsion/web/share/k;J)V

    :cond_0
    return-void
.end method
