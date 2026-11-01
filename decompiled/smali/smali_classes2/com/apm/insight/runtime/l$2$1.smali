.class final Lcom/apm/insight/runtime/l$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/runtime/l$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/apm/insight/runtime/l$2;


# direct methods
.method constructor <init>(Lcom/apm/insight/runtime/l$2;)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/runtime/l$2$1;->a:Lcom/apm/insight/runtime/l$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/apm/insight/runtime/l;->r()Z

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->i()V

    return-void
.end method
