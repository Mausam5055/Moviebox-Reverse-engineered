.class public final Lcom/transsion/search/ad/SearchHotAdHelper$b;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/ad/SearchHotAdHelper;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/search/ad/SearchHotAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/search/ad/SearchHotAdHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/ad/SearchHotAdHelper$b;->d:Lcom/transsion/search/ad/SearchHotAdHelper;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/search/ad/SearchHotAdHelper$b;->d:Lcom/transsion/search/ad/SearchHotAdHelper;

    invoke-static {v0, p1}, Lcom/transsion/search/ad/SearchHotAdHelper;->b(Lcom/transsion/search/ad/SearchHotAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method
