.class public final synthetic Lzc/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lzc/e;

.field public final synthetic b:Lcom/google/android/gms/tasks/Task;

.field public final synthetic c:Lbd/f;


# direct methods
.method public synthetic constructor <init>(Lzc/e;Lcom/google/android/gms/tasks/Task;Lbd/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzc/c;->a:Lzc/e;

    iput-object p2, p0, Lzc/c;->b:Lcom/google/android/gms/tasks/Task;

    iput-object p3, p0, Lzc/c;->c:Lbd/f;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lzc/c;->a:Lzc/e;

    iget-object v1, p0, Lzc/c;->b:Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lzc/c;->c:Lbd/f;

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/f;

    invoke-static {v0, v1, v2, p1}, Lzc/e;->a(Lzc/e;Lcom/google/android/gms/tasks/Task;Lbd/f;Lcom/google/firebase/remoteconfig/internal/f;)V

    return-void
.end method
