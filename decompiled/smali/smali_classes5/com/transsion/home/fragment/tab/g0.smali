.class public final synthetic Lcom/transsion/home/fragment/tab/g0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/SubTabFragment;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/SubTabFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/g0;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/g0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/g0;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/g0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment;->E0(Lcom/transsion/home/fragment/tab/SubTabFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method
