.class Lcom/google/firebase/crashlytics/internal/common/n$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/n;->O(J)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/firebase/crashlytics/internal/common/n;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/n;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$e;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    iput-wide p2, p0, Lcom/google/firebase/crashlytics/internal/common/n$e;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fatal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/google/firebase/crashlytics/internal/common/n$e;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n$e;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/n;->e(Lcom/google/firebase/crashlytics/internal/common/n;)Lpb/a;

    move-result-object v1

    const-string v2, "_ae"

    invoke-interface {v1, v2, v0}, Lpb/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n$e;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
