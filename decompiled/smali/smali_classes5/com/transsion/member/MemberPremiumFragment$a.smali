.class public final Lcom/transsion/member/MemberPremiumFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/MemberPremiumFragment;
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

    invoke-direct {p0}, Lcom/transsion/member/MemberPremiumFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/member/MemberPremiumFragment$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/member/MemberPremiumFragment;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/member/MemberPremiumFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/member/MemberPremiumFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/member/MemberPremiumFragment;
    .locals 1

    new-instance v0, Lcom/transsion/member/MemberPremiumFragment;

    invoke-direct {v0}, Lcom/transsion/member/MemberPremiumFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/member/MemberPremiumFragment;->K0(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/transsion/member/MemberPremiumFragment;->J0(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/transsion/member/MemberPremiumFragment;->M0(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p4}, Lcom/transsion/member/MemberPremiumFragment;->L0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method
