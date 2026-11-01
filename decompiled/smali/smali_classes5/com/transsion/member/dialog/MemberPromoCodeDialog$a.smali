.class public final Lcom/transsion/member/dialog/MemberPromoCodeDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/dialog/MemberPromoCodeDialog;
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

    invoke-direct {p0}, Lcom/transsion/member/dialog/MemberPromoCodeDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;)Lcom/transsion/member/dialog/MemberPromoCodeDialog;
    .locals 1

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    invoke-direct {v0}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->z0(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
