.class public abstract Lre/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lre/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lre/c;

    invoke-direct {v0}, Lre/c;-><init>()V

    sput-object v0, Lre/a;->a:Lre/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lre/a;->a:Lre/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lre/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lre/a;->a:Lre/c;

    invoke-virtual {v0}, Lre/c;->d()Z

    move-result v0

    return v0
.end method
