.class public Lcom/transsion/baselib/db/download/DownloadException;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/db/download/DownloadException$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0016\u0008\u0016\u0018\u0000 \u001e2\u00060\u0001j\u0002`\u0002:\u0001\u001fB\u0013\u0008\u0016\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u001d\u0008\u0016\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\tB\'\u0008\u0016\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000cB\u001d\u0008\u0016\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0005\u0010\rR\"\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0006R\"\u0010\u0012\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u000e\u001a\u0004\u0008\u0013\u0010\u0010\"\u0004\u0008\u0014\u0010\u0006R\"\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/baselib/db/download/DownloadException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "",
        "code",
        "<init>",
        "(I)V",
        "",
        "message",
        "(ILjava/lang/String;)V",
        "",
        "cause",
        "(ILjava/lang/String;Ljava/lang/Throwable;)V",
        "(ILjava/lang/Throwable;)V",
        "I",
        "getCode",
        "()I",
        "setCode",
        "responseCode",
        "getResponseCode",
        "setResponseCode",
        "formatMessage",
        "Ljava/lang/String;",
        "getFormatMessage",
        "()Ljava/lang/String;",
        "setFormatMessage",
        "(Ljava/lang/String;)V",
        "range",
        "getRange",
        "setRange",
        "Companion",
        "a",
        "BaseLib_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/baselib/db/download/DownloadException$a;

.field private static final DEFAULT_CODE:I

.field public static final EXCEPTION_FILE_SIZE_ZERO:I = 0x6

.field public static final EXCEPTION_IO_EXCEPTION:I = 0x5

.field public static final EXCEPTION_IO_HTTP_RETRY:I = 0x1fd

.field public static final EXCEPTION_IO_MALFORMED_URL:I = 0x1fc

.field public static final EXCEPTION_IO_SOCKET_BIND:I = 0x1f8

.field public static final EXCEPTION_IO_SOCKET_CONNECT:I = 0x1f9

.field public static final EXCEPTION_IO_SOCKET_NO_ROOT_TO_HOST:I = 0x1fa

.field public static final EXCEPTION_IO_SOCKET_PORT_UNREACHABLE:I = 0x1fb

.field public static final EXCEPTION_IO_SOCKET_TIMEOUT:I = 0x1f7

.field public static final EXCEPTION_IO_SSL_HANDSHAKE:I = 0x1fe

.field public static final EXCEPTION_IO_SSL_KEY:I = 0x1ff

.field public static final EXCEPTION_IO_SSL_PEER_UNVERIFIED:I = 0x200

.field public static final EXCEPTION_IO_SSL_PROTOCOL:I = 0x201

.field public static final EXCEPTION_IO_UNKNOWN_HOST:I = 0x1f5

.field public static final EXCEPTION_IO_UNKNOWN_SERVICE:I = 0x1f6

.field public static final EXCEPTION_MESSAGE_FAILED_CONNECT:Ljava/lang/String; = "failed to connect to host"

.field public static final EXCEPTION_MESSAGE_NO_NET:Ljava/lang/String; = "noNetWork"

.field public static final EXCEPTION_MESSAGE_NO_SDCARD:Ljava/lang/String; = "no sdcard"

.field public static final EXCEPTION_MESSAGE_SSL:Ljava/lang/String; = "ssl_error"

.field public static final EXCEPTION_OTHER:I = 0x9

.field public static final EXCEPTION_PATH_NULL:I = 0x1

.field public static final EXCEPTION_PAUSE:I = 0x7

.field public static final EXCEPTION_PROTOCOL:I = 0x4

.field public static final EXCEPTION_SERVER_ERROR:I = 0x3

.field public static final EXCEPTION_SERVER_SUPPORT_CODE:I = 0x8

.field public static final EXCEPTION_URL_ERROR:I = 0x2

.field public static final EXCEPTION_URL_NULL:I


# instance fields
.field private code:I

.field private formatMessage:Ljava/lang/String;

.field private range:Ljava/lang/String;

.field private responseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/baselib/db/download/DownloadException$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/baselib/db/download/DownloadException$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/baselib/db/download/DownloadException;->Companion:Lcom/transsion/baselib/db/download/DownloadException$a;

    const/4 v0, -0x1

    sput v0, Lcom/transsion/baselib/db/download/DownloadException;->DEFAULT_CODE:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/baselib/db/download/DownloadException;->formatMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/baselib/db/download/DownloadException;->range:Ljava/lang/String;

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/baselib/db/download/DownloadException;->formatMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/baselib/db/download/DownloadException;->range:Ljava/lang/String;

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/baselib/db/download/DownloadException;->formatMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/baselib/db/download/DownloadException;->range:Ljava/lang/String;

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadException;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/baselib/db/download/DownloadException;->formatMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/baselib/db/download/DownloadException;->range:Ljava/lang/String;

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadException;->code:I

    return-void
.end method

.method public static final synthetic access$getDEFAULT_CODE$cp()I
    .locals 1

    sget v0, Lcom/transsion/baselib/db/download/DownloadException;->DEFAULT_CODE:I

    return v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadException;->code:I

    return v0
.end method

.method public final getFormatMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/download/DownloadException;->formatMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/download/DownloadException;->range:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadException;->responseCode:I

    return v0
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadException;->code:I

    return-void
.end method

.method public final setFormatMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/download/DownloadException;->formatMessage:Ljava/lang/String;

    return-void
.end method

.method public final setRange(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/download/DownloadException;->range:Ljava/lang/String;

    return-void
.end method

.method public final setResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadException;->responseCode:I

    return-void
.end method
