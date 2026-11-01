.class public Lcom/cloud/hisavana/sdk/common/constant/Constants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;,
        Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "0"

.field public static b:Ljava/lang/String; = "smsto:"

.field public static c:Ljava/lang/String; = "sms_body"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
