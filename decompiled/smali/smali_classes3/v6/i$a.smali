.class public final Lv6/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv6/i;->a(JJLcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JI)V
    .locals 1

    const/16 v0, 0x190

    if-gt v0, p3, :cond_0

    const/16 v0, 0x1f4

    if-ge p3, v0, :cond_0

    invoke-static {p1, p2}, Lv6/e;->b(J)V

    :cond_0
    return-void
.end method
