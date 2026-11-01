.class public final synthetic Lcom/wecloud/load/lib/m;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/EventListener$Factory;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wecloud/load/lib/m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    iget-object v0, p0, Lcom/wecloud/load/lib/m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lcom/wecloud/load/lib/NetworkProbeRunner;->a(Ljava/util/concurrent/atomic/AtomicReference;Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p1

    return-object p1
.end method
