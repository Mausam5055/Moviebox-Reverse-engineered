.class public abstract Lcom/google/android/play/core/appupdate/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final a:Landroid/os/IBinder;

.field private final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/a;->a:Landroid/os/IBinder;

    const-string p1, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/a;->a:Landroid/os/IBinder;

    return-object v0
.end method
