.class final Lcom/mbridge/msdk/videocommon/download/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/videocommon/download/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/mbridge/msdk/videocommon/download/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/videocommon/download/j;-><init>(Lcom/mbridge/msdk/videocommon/download/j$a;)V

    sput-object v0, Lcom/mbridge/msdk/videocommon/download/j$b;->a:Lcom/mbridge/msdk/videocommon/download/j;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/videocommon/download/j;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/videocommon/download/j$b;->a:Lcom/mbridge/msdk/videocommon/download/j;

    return-object v0
.end method
