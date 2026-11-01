.class public final Lmg/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmg/c$a;
    }
.end annotation


# static fields
.field public static final a:Lmg/c$a;

.field private static b:Landroid/app/Application;

.field private static c:Z

.field private static d:Lcom/tn/lib/logger/xlog/LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmg/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmg/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmg/c;->a:Lmg/c$a;

    sget-object v0, Lcom/tn/lib/logger/xlog/LogType;->TYPE_LOGCAT:Lcom/tn/lib/logger/xlog/LogType;

    sput-object v0, Lmg/c;->d:Lcom/tn/lib/logger/xlog/LogType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Landroid/app/Application;
    .locals 1

    sget-object v0, Lmg/c;->b:Landroid/app/Application;

    return-object v0
.end method

.method public static final synthetic b()Lcom/tn/lib/logger/xlog/LogType;
    .locals 1

    sget-object v0, Lmg/c;->d:Lcom/tn/lib/logger/xlog/LogType;

    return-object v0
.end method

.method public static final synthetic c()Z
    .locals 1

    sget-boolean v0, Lmg/c;->c:Z

    return v0
.end method

.method public static final synthetic d(Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lmg/c;->b:Landroid/app/Application;

    return-void
.end method

.method public static final synthetic e(Z)V
    .locals 0

    sput-boolean p0, Lmg/c;->c:Z

    return-void
.end method

.method public static final synthetic f(Lcom/tn/lib/logger/xlog/LogType;)V
    .locals 0

    sput-object p0, Lmg/c;->d:Lcom/tn/lib/logger/xlog/LogType;

    return-void
.end method
