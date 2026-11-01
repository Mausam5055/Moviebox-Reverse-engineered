.class public final synthetic Lcom/vungle/ads/internal/session/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/session/UnclosedAdDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/session/UnclosedAdDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/session/b;->a:Lcom/vungle/ads/internal/session/UnclosedAdDetector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/session/b;->a:Lcom/vungle/ads/internal/session/UnclosedAdDetector;

    invoke-static {v0}, Lcom/vungle/ads/internal/session/UnclosedAdDetector;->c(Lcom/vungle/ads/internal/session/UnclosedAdDetector;)V

    return-void
.end method
