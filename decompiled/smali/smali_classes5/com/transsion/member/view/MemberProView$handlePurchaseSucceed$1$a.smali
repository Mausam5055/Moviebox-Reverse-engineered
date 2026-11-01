.class public final Lcom/transsion/member/view/MemberProView$handlePurchaseSucceed$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/view/MemberProView$handlePurchaseSucceed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/view/MemberProView;


# direct methods
.method constructor <init>(Lcom/transsion/member/view/MemberProView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/view/MemberProView$handlePurchaseSucceed$1$a;->a:Lcom/transsion/member/view/MemberProView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/view/MemberProView$handlePurchaseSucceed$1$a;->a:Lcom/transsion/member/view/MemberProView;

    invoke-static {v0}, Lcom/transsion/member/view/MemberProView;->access$getOnPurchaseSucceed$p(Lcom/transsion/member/view/MemberProView;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
