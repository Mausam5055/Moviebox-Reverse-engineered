.class public abstract Lqk/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 2

    sget-object v0, Lqk/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "u should init first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lqk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lqk/a;->d:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lqk/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->d()Ljava/lang/String;

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/core/utils/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lqk/a;->b:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lqk/a;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lqk/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lqk/a;->c:Z

    return v0
.end method

.method public static f(Z)V
    .locals 0

    sput-boolean p0, Lqk/a;->b:Z

    return-void
.end method
