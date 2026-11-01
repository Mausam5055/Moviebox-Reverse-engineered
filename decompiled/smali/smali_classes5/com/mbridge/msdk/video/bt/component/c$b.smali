.class final Lcom/mbridge/msdk/video/bt/component/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/bt/component/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/mbridge/msdk/video/bt/component/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/video/bt/component/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/video/bt/component/c;-><init>(Lcom/mbridge/msdk/video/bt/component/c$a;)V

    sput-object v0, Lcom/mbridge/msdk/video/bt/component/c$b;->a:Lcom/mbridge/msdk/video/bt/component/c;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/video/bt/component/c;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/video/bt/component/c$b;->a:Lcom/mbridge/msdk/video/bt/component/c;

    return-object v0
.end method
