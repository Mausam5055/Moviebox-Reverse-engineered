.class public final synthetic Luq/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/transsion/search/fragment/hot/SearchHotFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luq/n;->a:Ljava/util/List;

    iput-object p2, p0, Luq/n;->b:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Luq/n;->a:Ljava/util/List;

    iget-object v1, p0, Luq/n;->b:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    invoke-static {v0, v1}, Lcom/transsion/search/fragment/hot/SearchHotFragment$g;->b(Ljava/util/List;Lcom/transsion/search/fragment/hot/SearchHotFragment;)V

    return-void
.end method
