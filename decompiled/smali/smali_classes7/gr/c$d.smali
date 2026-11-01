.class final Lgr/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Llz/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgr/c;->q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgr/c;


# direct methods
.method constructor <init>(Lgr/c;)V
    .locals 0

    iput-object p1, p0, Lgr/c$d;->a:Lgr/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lgr/c$d;->a:Lgr/c;

    invoke-virtual {p1}, Lgr/c;->m()Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lgr/c$d;->a(Ljava/lang/Throwable;)V

    return-void
.end method
