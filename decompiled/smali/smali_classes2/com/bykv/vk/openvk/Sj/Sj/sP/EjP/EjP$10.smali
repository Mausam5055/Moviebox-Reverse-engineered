.class Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;-><init>()V

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->j(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$b;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->e(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$f;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$e;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$d;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->a(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$g;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$a;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->i(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$c;)V

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->TKC(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z

    :cond_1
    return-void
.end method
