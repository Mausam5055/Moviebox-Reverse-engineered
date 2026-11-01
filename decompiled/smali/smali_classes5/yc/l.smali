.class public final synthetic Lyc/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/util/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/google/firebase/remoteconfig/internal/u;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/l;->a:Lcom/google/firebase/remoteconfig/internal/u;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lyc/l;->a:Lcom/google/firebase/remoteconfig/internal/u;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/firebase/remoteconfig/internal/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/u;->a(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    return-void
.end method
