.class public final Lcom/transsion/web/api/WebPageIdentity;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/transsion/web/api/WebPageIdentity;",
        "",
        "<init>",
        "()V",
        "WEB",
        "",
        "WEB_VIEW",
        "REPLACE_SERVICE",
        "Web_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/web/api/WebPageIdentity;

.field public static final REPLACE_SERVICE:Ljava/lang/String; = "/web/replace_service"

.field private static final WEB:Ljava/lang/String; = "/web"

.field public static final WEB_VIEW:Ljava/lang/String; = "/web/web"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/web/api/WebPageIdentity;

    invoke-direct {v0}, Lcom/transsion/web/api/WebPageIdentity;-><init>()V

    sput-object v0, Lcom/transsion/web/api/WebPageIdentity;->INSTANCE:Lcom/transsion/web/api/WebPageIdentity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
