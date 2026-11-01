.class public final synthetic Lcom/transsion/home/fragment/tab/s1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/s1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/s1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/s1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/s1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v0, v1}, Lcom/transsion/home/fragment/tab/TrendingFragment;->F0(Lcom/transsion/home/fragment/tab/TrendingFragment;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method
