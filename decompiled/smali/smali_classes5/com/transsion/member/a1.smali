.class public final Lcom/transsion/member/a1;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/member/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/member/a1;

    invoke-direct {v0}, Lcom/transsion/member/a1;-><init>()V

    sput-object v0, Lcom/transsion/member/a1;->a:Lcom/transsion/member/a1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/memberapi/MemberRemindData;I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberRemindData;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberRemindData;->getRemindValue()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberRemindData;->getRemindUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberRemindData;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REMIND_TYPE_UNSPECIFIED"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberRemindData;->getRemindUnit()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REMIND_UNIT_UNSPECIFIED"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberRemindData;->getRemindUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "REMIND_UNIT_DAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberRemindData;->getRemindValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p2, p1, :cond_4

    move v0, v3

    :cond_4
    return v0

    :sswitch_1
    const-string v2, "REMIND_UNIT_MONTH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberRemindData;->getRemindValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1e

    if-gt p2, p1, :cond_6

    move v0, v3

    :cond_6
    return v0

    :sswitch_2
    const-string v2, "REMIND_UNIT_MINUTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    mul-int/lit16 p2, p2, 0x5a0

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberRemindData;->getRemindValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p2, p1, :cond_8

    move v0, v3

    :cond_8
    return v0

    :sswitch_3
    const-string v2, "REMIND_UNIT_HOUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    mul-int/lit8 p2, p2, 0x18

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberRemindData;->getRemindValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p2, p1, :cond_a

    move v0, v3

    :cond_a
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c40cafb -> :sswitch_3
        -0x6709630b -> :sswitch_2
        -0xb9238a1 -> :sswitch_1
        -0x40227c5 -> :sswitch_0
    .end sparse-switch
.end method
