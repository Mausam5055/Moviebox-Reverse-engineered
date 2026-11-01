.class Lcom/mbridge/msdk/splash/manager/c$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/manager/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field private static final a:Lcom/mbridge/msdk/splash/manager/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/splash/manager/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/splash/manager/c;-><init>(Lcom/mbridge/msdk/splash/manager/c$a;)V

    sput-object v0, Lcom/mbridge/msdk/splash/manager/c$d;->a:Lcom/mbridge/msdk/splash/manager/c;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/splash/manager/c;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/splash/manager/c$d;->a:Lcom/mbridge/msdk/splash/manager/c;

    return-object v0
.end method
