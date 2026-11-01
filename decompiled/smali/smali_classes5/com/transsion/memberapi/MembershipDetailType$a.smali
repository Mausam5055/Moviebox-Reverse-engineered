.class public final Lcom/transsion/memberapi/MembershipDetailType$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/memberapi/MembershipDetailType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/memberapi/MembershipDetailType$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/memberapi/MemberInfo;)Lcom/transsion/memberapi/MembershipDetailType;
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->getMemberType()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/transsion/memberapi/MembershipDetailType;->TRIAL:Lcom/transsion/memberapi/MembershipDetailType;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->isAutoRenew()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/memberapi/MembershipDetailType;->SUBSCRIPTION_MEMBER:Lcom/transsion/memberapi/MembershipDetailType;

    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/memberapi/MembershipDetailType;->FINANCIAL_MEMBER:Lcom/transsion/memberapi/MembershipDetailType;

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->getMemberType()I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/transsion/memberapi/MembershipDetailType;->GUEST:Lcom/transsion/memberapi/MembershipDetailType;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/transsion/memberapi/MembershipDetailType;->EXPIRED:Lcom/transsion/memberapi/MembershipDetailType;

    :goto_0
    return-object p1
.end method
