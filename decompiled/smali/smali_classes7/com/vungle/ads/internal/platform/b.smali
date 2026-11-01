.class public final synthetic Lcom/vungle/ads/internal/platform/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/platform/c;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/platform/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/platform/b;->a:Lcom/vungle/ads/internal/platform/c;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/platform/b;->a:Lcom/vungle/ads/internal/platform/c;

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/platform/c;->b(Lcom/vungle/ads/internal/platform/c;Lcom/google/android/gms/appset/AppSetIdInfo;)V

    return-void
.end method
