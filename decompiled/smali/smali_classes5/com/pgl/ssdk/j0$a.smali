.class Lcom/pgl/ssdk/j0$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pgl/ssdk/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/ssdk/j0;


# direct methods
.method constructor <init>(Lcom/pgl/ssdk/j0;)V
    .locals 0

    iput-object p1, p0, Lcom/pgl/ssdk/j0$a;->a:Lcom/pgl/ssdk/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pgl/ssdk/j0$a;->a:Lcom/pgl/ssdk/j0;

    invoke-static {v0}, Lcom/pgl/ssdk/j0;->a(Lcom/pgl/ssdk/j0;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pgl/ssdk/j0$a;->a:Lcom/pgl/ssdk/j0;

    invoke-static {v0}, Lcom/pgl/ssdk/j0;->b(Lcom/pgl/ssdk/j0;)I

    move-result v0

    iget-object v1, p0, Lcom/pgl/ssdk/j0$a;->a:Lcom/pgl/ssdk/j0;

    invoke-static {v1}, Lcom/pgl/ssdk/j0;->d(Lcom/pgl/ssdk/j0;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/pgl/ssdk/j0$a;->a:Lcom/pgl/ssdk/j0;

    invoke-static {v0}, Lcom/pgl/ssdk/j0;->c(Lcom/pgl/ssdk/j0;)I

    invoke-static {p0}, Lcom/pgl/ssdk/o0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
