.class public final synthetic Lcom/vungle/ads/internal/util/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/util/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/ads/internal/util/i;->b:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/util/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/i;->b:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/k;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
