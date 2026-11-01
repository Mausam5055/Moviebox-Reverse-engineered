.class public final Lcom/transsion/baselib/db/download/DownloadException$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/download/DownloadException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baselib/db/download/DownloadException$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-static {}, Lcom/transsion/baselib/db/download/DownloadException;->access$getDEFAULT_CODE$cp()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Exception;I)I
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const/16 p1, 0x1f5

    return p1

    :cond_0
    instance-of v0, p1, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_1

    const/16 p1, 0x1f6

    return p1

    :cond_1
    instance-of v0, p1, Ljava/net/BindException;

    if-eqz v0, :cond_2

    const/16 p1, 0x1f8

    return p1

    :cond_2
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_3

    const/16 p1, 0x1f9

    return p1

    :cond_3
    instance-of v0, p1, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_4

    const/16 p1, 0x1fa

    return p1

    :cond_4
    instance-of v0, p1, Ljava/net/PortUnreachableException;

    if-eqz v0, :cond_5

    const/16 p1, 0x1fb

    return p1

    :cond_5
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_6

    const/16 p1, 0x1f7

    return p1

    :cond_6
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_7

    const/16 p1, 0x1fc

    return p1

    :cond_7
    instance-of v0, p1, Ljava/net/HttpRetryException;

    if-eqz v0, :cond_8

    const/16 p1, 0x1fd

    return p1

    :cond_8
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_9

    const/16 p1, 0x1fe

    return p1

    :cond_9
    instance-of v0, p1, Ljavax/net/ssl/SSLKeyException;

    if-eqz v0, :cond_a

    const/16 p1, 0x1ff

    return p1

    :cond_a
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_b

    const/16 p1, 0x200

    return p1

    :cond_b
    instance-of p1, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz p1, :cond_c

    const/16 p1, 0x201

    return p1

    :cond_c
    return p2
.end method

.method public final c(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
