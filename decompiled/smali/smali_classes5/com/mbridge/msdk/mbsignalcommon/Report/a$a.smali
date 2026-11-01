.class final Lcom/mbridge/msdk/mbsignalcommon/Report/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbsignalcommon/Report/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/mbridge/msdk/mbsignalcommon/Report/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/Report/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/mbsignalcommon/Report/a;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/Report/a$a;->a:Lcom/mbridge/msdk/mbsignalcommon/Report/a;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/mbsignalcommon/Report/a;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/Report/a$a;->a:Lcom/mbridge/msdk/mbsignalcommon/Report/a;

    return-object v0
.end method
