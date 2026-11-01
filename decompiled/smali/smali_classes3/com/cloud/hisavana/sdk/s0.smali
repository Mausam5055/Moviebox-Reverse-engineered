.class public abstract Lcom/cloud/hisavana/sdk/s0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/s0$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/s0$a;

.field private static volatile b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/s0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/s0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/s0;->a:Lcom/cloud/hisavana/sdk/s0$a;

    const-string v0, ""

    sput-object v0, Lcom/cloud/hisavana/sdk/s0;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/s0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/s0;->a:Lcom/cloud/hisavana/sdk/s0$a;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/s0$a;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static final c(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/s0;->a:Lcom/cloud/hisavana/sdk/s0$a;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/hisavana/sdk/s0$a;->e(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic d(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/s0;->b:Ljava/lang/String;

    return-void
.end method
