.class Lcom/mbridge/msdk/system/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/system/a;->callbackToDeveloper(ZJZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/system/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/system/a;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/system/a$c;->c:Lcom/mbridge/msdk/system/a;

    iput-boolean p2, p0, Lcom/mbridge/msdk/system/a$c;->a:Z

    iput-object p3, p0, Lcom/mbridge/msdk/system/a$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/system/a$c;->c:Lcom/mbridge/msdk/system/a;

    iget-object v0, v0, Lcom/mbridge/msdk/system/a;->mStatusListener:Lcom/mbridge/msdk/out/SDKInitStatusListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/mbridge/msdk/system/a$c;->a:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/mbridge/msdk/out/SDKInitStatusListener;->onInitSuccess()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/system/a$c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/SDKInitStatusListener;->onInitFail(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
