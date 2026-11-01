.class Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

.field private final b:Ljava/nio/ByteBuffer;

.field private final c:Lorg/chromium/net/CronetException;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->a:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->b:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->c:Lorg/chromium/net/CronetException;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->a:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    return-object p0
.end method

.method static synthetic b(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Lorg/chromium/net/CronetException;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->c:Lorg/chromium/net/CronetException;

    return-object p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->b:Ljava/nio/ByteBuffer;

    return-object p0
.end method
