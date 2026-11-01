.class public final Lcom/cloud/config/utils/XLogUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/config/utils/XLogUtil$SingletonHolder;,
        Lcom/cloud/config/utils/XLogUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ\"\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\nJ\u0016\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nJ \u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0008\u0010\u0010\u001a\u00020\nH\u0002J\u0018\u0010\u0011\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ\"\u0010\u0011\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\"\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nH\u0002J,\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u000e\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0018\u0010\u0019\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ\"\u0010\u0019\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010\u001a\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ\"\u0010\u001a\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/cloud/config/utils/XLogUtil;",
        "",
        "()V",
        "logUtils",
        "Lcom/transsion/core/log/ObjectLogUtils;",
        "mLoggingLevel",
        "",
        "d",
        "",
        "tag",
        "",
        "id",
        "msg",
        "t",
        "",
        "e",
        "getGlobalTag",
        "i",
        "log",
        "logLevel",
        "logWithThrowable",
        "setLogSwitch",
        "isDebug",
        "",
        "shouldLog",
        "v",
        "w",
        "Companion",
        "SingletonHolder",
        "config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

.field private static final DEBUG:I = 0x3

.field private static final ERROR:I = 0x6

.field private static final INFO:I = 0x4

.field private static final JSON:I = 0x9

.field private static NET_LOG:Lcom/transsion/core/log/ObjectLogUtils; = null

.field public static final TAG:Ljava/lang/String; = "config"

.field private static final VERBOSE:I = 0x2

.field private static final WARN:I = 0x5

.field private static final log$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/cloud/config/utils/XLogUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final logUtils:Lcom/transsion/core/log/ObjectLogUtils;

.field private final mLoggingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/config/utils/XLogUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/config/utils/XLogUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    new-instance v0, Lcom/transsion/core/log/ObjectLogUtils$a;

    invoke-direct {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;-><init>()V

    const-string v1, "UPDATE_N"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->p(Ljava/lang/String;)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->q(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->n(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->m()Lcom/transsion/core/log/ObjectLogUtils;

    move-result-object v0

    sput-object v0, Lcom/cloud/config/utils/XLogUtil;->NET_LOG:Lcom/transsion/core/log/ObjectLogUtils;

    sget-object v0, Lcom/cloud/config/utils/XLogUtil$Companion$log$2;->INSTANCE:Lcom/cloud/config/utils/XLogUtil$Companion$log$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/config/utils/XLogUtil;->log$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/core/log/ObjectLogUtils$a;

    invoke-direct {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;-><init>()V

    const-string v1, "UPDATE"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->p(Ljava/lang/String;)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->n(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->m()Lcom/transsion/core/log/ObjectLogUtils;

    move-result-object v0

    const-string v1, "Builder().setGlobalTag(\"\u2026derSwitch(false).create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    const/4 v1, 0x2

    iput v1, p0, Lcom/cloud/config/utils/XLogUtil;->mLoggingLevel:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->x(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/config/utils/XLogUtil;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLog$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/XLogUtil;->log$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getNET_LOG$cp()Lcom/transsion/core/log/ObjectLogUtils;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/XLogUtil;->NET_LOG:Lcom/transsion/core/log/ObjectLogUtils;

    return-object v0
.end method

.method public static final synthetic access$setNET_LOG$cp(Lcom/transsion/core/log/ObjectLogUtils;)V
    .locals 0

    sput-object p0, Lcom/cloud/config/utils/XLogUtil;->NET_LOG:Lcom/transsion/core/log/ObjectLogUtils;

    return-void
.end method

.method private final getGlobalTag()Ljava/lang/String;
    .locals 1

    const-string v0, "sdk"

    return-object v0
.end method

.method private final log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/config/utils/XLogUtil;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/cloud/config/utils/XLogUtil;->shouldLog(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/cloud/config/utils/XLogUtil;->getGlobalTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eq p1, v0, :cond_a

    const/4 v3, 0x3

    if-eq p1, v3, :cond_8

    const/4 v3, 0x4

    if-eq p1, v3, :cond_6

    const/4 v3, 0x5

    if-eq p1, v3, :cond_4

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/16 p4, 0x9

    if-eq p1, p4, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lcom/transsion/core/log/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->A(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lcom/transsion/core/log/ObjectLogUtils;->A(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    if-eqz p4, :cond_7

    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lcom/transsion/core/log/ObjectLogUtils;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    if-eqz p4, :cond_9

    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    if-eqz p4, :cond_b

    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lcom/transsion/core/log/ObjectLogUtils;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    :goto_0
    return-void
.end method

.method private final shouldLog(I)Z
    .locals 1

    iget v0, p0, Lcom/cloud/config/utils/XLogUtil;->mLoggingLevel:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final d(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getContext().getString(id)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x3

    invoke-direct {p0, p3, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "msg"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "******"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x6

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/cloud/config/utils/XLogUtil;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x4

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/cloud/config/utils/XLogUtil;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setLogSwitch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils;->m()Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/cloud/config/utils/XLogUtil;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x5

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/cloud/config/utils/XLogUtil;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
