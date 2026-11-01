.class public Lcom/cloud/sdk/commonutil/util/HSToastUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/sdk/commonutil/util/HSToastUtil$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/widget/Toast;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->b:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/widget/Toast;
    .locals 1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->b:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic b(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    sput-object p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->b:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic c(Landroid/widget/Toast;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->d(Landroid/widget/Toast;)V

    return-void
.end method

.method private static d(Landroid/widget/Toast;)V
    .locals 4

    const-string v0, "ssp"

    :try_start_0
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/cloud/sdk/commonutil/util/HSToastUtil$a;

    if-nez v2, :cond_0

    sget-object v2, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->d:Ljava/lang/reflect/Field;

    new-instance v3, Lcom/cloud/sdk/commonutil/util/HSToastUtil$a;

    invoke-direct {v3, v1}, Lcom/cloud/sdk/commonutil/util/HSToastUtil$a;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toast hook error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_1
    const-class p0, Landroid/widget/Toast;

    const-string v1, "mTN"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "mHandler"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->d:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toast static init error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static e(I)V
    .locals 3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    if-lez p0, :cond_0

    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->a:Landroid/os/Handler;

    new-instance v2, Lcom/cloud/sdk/commonutil/util/HSToastUtil$1;

    invoke-direct {v2, p0, v0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil$1;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->a:Landroid/os/Handler;

    new-instance v2, Lcom/cloud/sdk/commonutil/util/HSToastUtil$2;

    invoke-direct {v2, p0, v0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
