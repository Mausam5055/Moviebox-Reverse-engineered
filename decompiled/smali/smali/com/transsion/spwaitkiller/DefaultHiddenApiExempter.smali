.class public final Lcom/transsion/spwaitkiller/DefaultHiddenApiExempter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/spwaitkiller/HiddenApiExempter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/transsion/spwaitkiller/DefaultHiddenApiExempter;",
        "Lcom/transsion/spwaitkiller/HiddenApiExempter;",
        "<init>",
        "()V",
        "exempt",
        "",
        "context",
        "Landroid/content/Context;",
        "SpWaitKiller_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exempt(Landroid/content/Context;)Z
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    const-string p1, "Landroid/app/QueuedWork;"

    const-string v0, "Landroid/os/SystemProperties;"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lsposed/hiddenapibypass/l;->b([Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
