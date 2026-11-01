.class public abstract Lle/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lle/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lle/d;

    invoke-direct {v0}, Lle/d;-><init>()V

    sput-object v0, Lle/a;->a:Lle/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lle/a;->a:Lle/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lle/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lle/a;->a:Lle/d;

    invoke-virtual {v0}, Lle/d;->d()Z

    move-result v0

    return v0
.end method
