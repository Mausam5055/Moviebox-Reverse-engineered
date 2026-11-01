.class public final synthetic Lcom/transsion/search/fragment/result/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/fragment/result/j;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/result/j;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->i0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)V

    return-void
.end method
