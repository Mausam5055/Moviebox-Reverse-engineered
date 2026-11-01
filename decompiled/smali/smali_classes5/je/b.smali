.class public abstract Lje/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lje/b$b;,
        Lje/b$a;
    }
.end annotation


# instance fields
.field private a:Lje/b$a;

.field protected final b:Lje/b$b;


# direct methods
.method public constructor <init>(Lje/b$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lje/b;->b:Lje/b$b;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lje/b;->a:Lje/b$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lje/b$a;->a(Lje/b;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public c(Lje/b$a;)V
    .locals 0

    iput-object p1, p0, Lje/b;->a:Lje/b$a;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lje/b;->a(Ljava/lang/String;)V

    return-void
.end method
