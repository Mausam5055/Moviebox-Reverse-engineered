.class public final synthetic Luq/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/search/fragment/hot/SearchHotFragment;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search/fragment/hot/SearchHotFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luq/k;->a:Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    iput p2, p0, Luq/k;->b:I

    iput-object p3, p0, Luq/k;->c:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    iput-boolean p4, p0, Luq/k;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Luq/k;->a:Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;

    iget v1, p0, Luq/k;->b:I

    iget-object v2, p0, Luq/k;->c:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    iget-boolean v3, p0, Luq/k;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->g0(Lcom/transsion/search/widget/LinesFlexBoxLayoutManager;ILcom/transsion/search/fragment/hot/SearchHotFragment;Z)V

    return-void
.end method
