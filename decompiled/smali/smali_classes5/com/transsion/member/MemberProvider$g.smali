.class final Lcom/transsion/member/MemberProvider$g;
.super Ljava/lang/Object;

# interfaces
.implements Llz/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberProvider;->s(Lzm/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/MemberProvider;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberProvider$g;->a:Lcom/transsion/member/MemberProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/lib/net/bean/BaseDto;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/MemberTaskInfo;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/member/MemberProvider$g;->a:Lcom/transsion/member/MemberProvider;

    sget-object v1, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v1}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "MEMBER_TASK_JSON"

    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0, p1}, Lcom/transsion/member/MemberProvider;->S(Lcom/transsion/member/MemberProvider;Lcom/transsion/memberapi/MemberTaskInfo;)V

    invoke-static {v0}, Lcom/transsion/member/MemberProvider;->L(Lcom/transsion/member/MemberProvider;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/member/MemberProvider;->Q(Lcom/transsion/member/MemberProvider;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberProvider$g;->a(Lcom/tn/lib/net/bean/BaseDto;)V

    return-void
.end method
