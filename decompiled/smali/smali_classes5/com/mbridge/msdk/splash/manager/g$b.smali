.class Lcom/mbridge/msdk/splash/manager/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/manager/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/mbridge/msdk/splash/manager/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/splash/manager/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/splash/manager/g;-><init>(Lcom/mbridge/msdk/splash/manager/g$a;)V

    sput-object v0, Lcom/mbridge/msdk/splash/manager/g$b;->a:Lcom/mbridge/msdk/splash/manager/g;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/splash/manager/g;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/splash/manager/g$b;->a:Lcom/mbridge/msdk/splash/manager/g;

    return-object v0
.end method
