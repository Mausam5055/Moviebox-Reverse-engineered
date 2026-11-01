.class public Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;,
        Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;
    }
.end annotation


# static fields
.field private static a:Z = false

.field public static b:Z = true

.field public static c:Ljava/security/SecureRandom;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->c:Ljava/security/SecureRandom;

    const-string v0, ""

    sput-object v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$26;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$26;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getLogEnable()Ljava/util/List;

    move-result-object v0

    const-string v1, "halfScreenLogEnable"

    invoke-static {v0, v1}, Li7/b;->b(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/b;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static C(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static D(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$36;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$36;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static E(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static G(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$19;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static H(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/f;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/f;-><init>(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static I(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$12;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$12;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static J(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static K(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$10;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static L(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$6;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static M(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$7;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$7;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static N(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$5;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$5;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$18;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$18;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static P(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$25;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$25;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Q(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/c;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/c;-><init>(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static R()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$1;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$1;-><init>()V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$29;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$29;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static T(Lcom/cloud/hisavana/sdk/q3;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$21;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$21;-><init>(Lcom/cloud/hisavana/sdk/q3;I)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/a;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/g;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/g;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->X(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static X(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getProgressData()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->setVideoPlayTimeType(Ljava/lang/Integer;)V

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->m0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V

    :cond_2
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$20;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$20;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Y(Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;-><init>(Ljava/lang/String;II)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$4;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$3;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$3;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method

.method public static b0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->r(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    return-void
.end method

.method public static c0(Ljava/lang/String;IIJ)V
    .locals 7

    new-instance v6, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;-><init>(Ljava/lang/String;IIJ)V

    invoke-static {v6}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->t(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method

.method public static d0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$28;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$28;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->p(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->f0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->s(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    return-void
.end method

.method public static f0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Integer;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$23;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$23;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Integer;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    return-void
.end method

.method public static g0(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;-><init>(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->j(Landroid/os/Bundle;)V

    return-void
.end method

.method public static h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;-><init>(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V

    invoke-static {p0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method

.method public static i0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getLogEnable()Ljava/util/List;

    move-result-object v0

    const-string v1, "showTrackingUrlsLogEnable"

    invoke-static {v0, v1}, Li7/b;->b(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getShowTrackingUrlsLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/e;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/e;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private static j(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "screen_angular"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static j0(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    if-eq p0, v0, :cond_1

    return-void

    :cond_1
    const-string p0, "compliance"

    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static k0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$32;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;ILjava/lang/String;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/transsion/core/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static l0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$31;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$31;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static m(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/i0;->c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ps_version"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "net"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, La7/c;->b:Ljava/lang/String;

    const-string v1, "app_id"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Li7/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static n(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sput-boolean v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b:Z

    goto :goto_0

    :cond_1
    sput-boolean v4, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b:Z

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rem-int/2addr p0, v1

    if-ltz p0, :cond_3

    if-gt p0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v4

    :cond_4
    :goto_2
    return v0
.end method

.method public static n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static o(ZLandroid/content/Context;)V
    .locals 4

    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x223d

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Li7/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->a0(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/16 v1, 0x96b

    const-string v2, "SSP"

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p0, v3}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    invoke-static {p1, v2, v0, p0, v3}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->a:Z

    :cond_0
    return-void
.end method

.method public static o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 9

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic p(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->c(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$35;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;II)V

    return-void
.end method

.method public static q0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$17;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$17;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic r(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->d(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    return-void
.end method

.method private static synthetic s(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->e(Lcom/cloud/hisavana/sdk/ext/attr/AttrData;)V

    return-void
.end method

.method private static synthetic t(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method

.method private static synthetic u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->V(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method

.method private static synthetic v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;J)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$24;

    invoke-direct {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$24;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;J)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V
    .locals 9

    new-instance v8, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V

    invoke-static {v8}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$27;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$27;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static z(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/athena/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/athena/d;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v0}, Li7/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method
