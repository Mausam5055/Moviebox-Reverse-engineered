.class final Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$initView$3$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$initView$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$initView$3$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$initView$3$a;

    invoke-direct {v0}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$initView$3$a;-><init>()V

    sput-object v0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$initView$3$a;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$initView$3$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/search_pugc/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$initView$3$a;->a(Lcom/transsion/search_pugc/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
