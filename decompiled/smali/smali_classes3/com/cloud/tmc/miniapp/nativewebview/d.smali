.class public final synthetic Lcom/cloud/tmc/miniapp/nativewebview/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/d;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/d;->b:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/nativewebview/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/d;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/d;->b:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;Ljava/lang/String;)V

    return-void
.end method
