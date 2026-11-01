.class final Lcom/mbridge/msdk/video/bt/component/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/bt/component/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/mbridge/msdk/video/bt/component/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/video/bt/component/b;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/bt/component/b;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/video/bt/component/b$a;->a:Lcom/mbridge/msdk/video/bt/component/b;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/video/bt/component/b;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/video/bt/component/b$a;->a:Lcom/mbridge/msdk/video/bt/component/b;

    return-object v0
.end method
