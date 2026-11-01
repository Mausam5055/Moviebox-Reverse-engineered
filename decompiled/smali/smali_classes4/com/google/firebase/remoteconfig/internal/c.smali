.class public final synthetic Lcom/google/firebase/remoteconfig/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/remoteconfig/internal/e;

.field public final synthetic b:Lcom/google/firebase/remoteconfig/internal/f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/c;->a:Lcom/google/firebase/remoteconfig/internal/e;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/c;->b:Lcom/google/firebase/remoteconfig/internal/f;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/c;->a:Lcom/google/firebase/remoteconfig/internal/e;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/c;->b:Lcom/google/firebase/remoteconfig/internal/f;

    invoke-static {v0, v1}, Lcom/google/firebase/remoteconfig/internal/e;->b(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
