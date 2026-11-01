.class Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Ljava/io/File;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;)V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;

    iget-object v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TKC:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TKC:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;

    iget-object v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->Fmk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->Fmk:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;

    invoke-static {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    move-result-object p1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->f(ZLjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
