.class public final Lcom/transsion/mpush/core/config/MsgShowStatus;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/mpush/core/config/MsgShowStatus;",
        "",
        "<init>",
        "()V",
        "STATUS_OK",
        "",
        "STATUS_IMG_ERROR",
        "STATUS_MSG_EMPTY",
        "STATUS_NOTIFY_CLOSE",
        "STATUS_APP_ERROR",
        "isShowStatus",
        "",
        "code",
        "MBPush_psRelease"
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
.field public static final INSTANCE:Lcom/transsion/mpush/core/config/MsgShowStatus;

.field public static final STATUS_APP_ERROR:Ljava/lang/String; = "402"

.field public static final STATUS_IMG_ERROR:Ljava/lang/String; = "201"

.field public static final STATUS_MSG_EMPTY:Ljava/lang/String; = "301"

.field public static final STATUS_NOTIFY_CLOSE:Ljava/lang/String; = "401"

.field public static final STATUS_OK:Ljava/lang/String; = "200"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/mpush/core/config/MsgShowStatus;

    invoke-direct {v0}, Lcom/transsion/mpush/core/config/MsgShowStatus;-><init>()V

    sput-object v0, Lcom/transsion/mpush/core/config/MsgShowStatus;->INSTANCE:Lcom/transsion/mpush/core/config/MsgShowStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isShowStatus(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/16 v1, 0x12c

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
