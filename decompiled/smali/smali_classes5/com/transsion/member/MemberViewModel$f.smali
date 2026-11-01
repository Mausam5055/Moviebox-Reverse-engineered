.class final Lcom/transsion/member/MemberViewModel$f;
.super Ljava/lang/Object;

# interfaces
.implements Llz/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/transsion/member/MemberViewModel$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/member/MemberViewModel$f;

    invoke-direct {v0}, Lcom/transsion/member/MemberViewModel$f;-><init>()V

    sput-object v0, Lcom/transsion/member/MemberViewModel$f;->a:Lcom/transsion/member/MemberViewModel$f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/m;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "MEMBER_GOODS_JSON"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v1, Lcom/transsion/memberapi/MemberPriceData;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/MemberPriceData;

    new-instance v1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-direct {v1}, Lcom/tn/lib/net/bean/BaseDto;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/tn/lib/net/bean/BaseDto;->setCode(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tn/lib/net/bean/BaseDto;->setData(Ljava/lang/Object;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/j;->l(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/j;->l(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberViewModel$f;->a(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method
