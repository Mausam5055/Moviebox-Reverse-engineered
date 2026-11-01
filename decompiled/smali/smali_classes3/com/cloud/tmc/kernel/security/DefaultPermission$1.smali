.class final enum Lcom/cloud/tmc/kernel/security/DefaultPermission$1;
.super Lcom/cloud/tmc/kernel/security/DefaultPermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/security/DefaultPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/security/DefaultPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/security/a;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/security/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/security/DefaultPermission$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
