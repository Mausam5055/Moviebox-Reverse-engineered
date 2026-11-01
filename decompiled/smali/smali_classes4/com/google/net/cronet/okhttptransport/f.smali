.class public final synthetic Lcom/google/net/cronet/okhttptransport/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/net/cronet/okhttptransport/e$c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/net/cronet/okhttptransport/e$c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/f;->a:Lcom/google/net/cronet/okhttptransport/e$c$a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/f;->a:Lcom/google/net/cronet/okhttptransport/e$c$a;

    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/e$c$a;->b(Lcom/google/net/cronet/okhttptransport/e$c$a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
