.class public final Lcom/apm/insight/l/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/l/i$b;,
        Lcom/apm/insight/l/i$a;
    }
.end annotation


# static fields
.field private static a:Lcom/apm/insight/l/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apm/insight/l/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apm/insight/l/i$b;-><init>(B)V

    sput-object v0, Lcom/apm/insight/l/i;->a:Lcom/apm/insight/l/i$a;

    return-void
.end method

.method public static a(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    sget-object v0, Lcom/apm/insight/l/i;->a:Lcom/apm/insight/l/i$a;

    invoke-virtual {v0, p0}, Lcom/apm/insight/l/i$a;->a(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v0

    return-wide v0
.end method
