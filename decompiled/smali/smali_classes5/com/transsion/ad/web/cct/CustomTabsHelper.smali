.class public final Lcom/transsion/ad/web/cct/CustomTabsHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/web/cct/CustomTabsHelper;->a:Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/ad/web/cct/CustomTabsHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/ad/web/cct/CustomTabsHelper;->b:Ljava/lang/String;

    return-void
.end method
