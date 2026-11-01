.class final Lcom/transsion/member/MemberViewModel$p;
.super Ljava/lang/Object;

# interfaces
.implements Llz/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/MemberViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel$p;->a:Lcom/transsion/member/MemberViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/member/MemberViewModel$p;->a:Lcom/transsion/member/MemberViewModel;

    invoke-static {p1}, Lcom/transsion/member/MemberViewModel;->l(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberViewModel$p;->a(Ljava/lang/Throwable;)V

    return-void
.end method
