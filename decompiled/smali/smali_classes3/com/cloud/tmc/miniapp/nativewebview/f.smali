.class public final synthetic Lcom/cloud/tmc/miniapp/nativewebview/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLcom/cloud/tmc/miniapp/nativewebview/OooO0o;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/f;->a:J

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/nativewebview/f;->b:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/nativewebview/f;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/nativewebview/f;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/f;->a:J

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/f;->b:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/f;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/nativewebview/f;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(JLcom/cloud/tmc/miniapp/nativewebview/OooO0o;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    return-void
.end method
